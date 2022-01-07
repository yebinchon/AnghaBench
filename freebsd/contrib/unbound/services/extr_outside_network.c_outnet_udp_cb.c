
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int key; } ;
struct pending {unsigned int id; TYPE_4__* pc; int cb_arg; int (* cb ) (struct comm_point*,int ,int,struct comm_reply*) ;TYPE_1__ node; int timer; int addrlen; int addr; } ;
struct outside_network {scalar_t__ unwanted_threshold; scalar_t__ unwanted_total; TYPE_2__* pending; int unwanted_param; int (* unwanted_action ) (int ) ;int unwanted_replies; } ;
struct comm_reply {int addrlen; int addr; } ;
struct comm_point {int buffer; } ;
struct TYPE_7__ {struct comm_point* cp; } ;
struct TYPE_6__ {scalar_t__ count; } ;


 scalar_t__ LDNS_HEADER_SIZE ;
 scalar_t__ LDNS_ID_WIRE (int ) ;
 int NETEVENT_NOERROR ;
 int VERB_ALGO ;
 int VERB_QUERY ;
 int comm_timer_disable (int ) ;
 int fptr_ok (int ) ;
 int fptr_whitelist_alloc_cleanup (int (*) (int )) ;
 int fptr_whitelist_pending_udp (int (*) (struct comm_point*,int ,int,struct comm_reply*)) ;
 int log_addr (int ,char*,int *,int ) ;
 int log_assert (struct comm_reply*) ;
 int log_buf (int ,char*,int ) ;
 int log_warn (char*,unsigned int) ;
 int memcpy (int *,int *,int ) ;
 int outnet_send_wait_udp (struct outside_network*) ;
 int pending_delete (int *,struct pending*) ;
 int portcomm_loweruse (struct outside_network*,TYPE_4__*) ;
 int rbtree_delete (TYPE_2__*,int ) ;
 scalar_t__ rbtree_search (TYPE_2__*,struct pending*) ;
 int sldns_buffer_begin (int ) ;
 scalar_t__ sldns_buffer_limit (int ) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (struct comm_point*,int ,int,struct comm_reply*) ;
 int verbose (int ,char*,...) ;

int
outnet_udp_cb(struct comm_point* c, void* arg, int error,
 struct comm_reply *reply_info)
{
 struct outside_network* outnet = (struct outside_network*)arg;
 struct pending key;
 struct pending* p;
 verbose(VERB_ALGO, "answer cb");

 if(error != NETEVENT_NOERROR) {
  verbose(VERB_QUERY, "outnetudp got udp error %d", error);
  return 0;
 }
 if(sldns_buffer_limit(c->buffer) < LDNS_HEADER_SIZE) {
  verbose(VERB_QUERY, "outnetudp udp too short");
  return 0;
 }
 log_assert(reply_info);


 key.id = (unsigned)LDNS_ID_WIRE(sldns_buffer_begin(c->buffer));
 memcpy(&key.addr, &reply_info->addr, reply_info->addrlen);
 key.addrlen = reply_info->addrlen;
 verbose(VERB_ALGO, "Incoming reply id = %4.4x", key.id);
 log_addr(VERB_ALGO, "Incoming reply addr =",
  &reply_info->addr, reply_info->addrlen);


 verbose(VERB_ALGO, "lookup size is %d entries", (int)outnet->pending->count);
 p = (struct pending*)rbtree_search(outnet->pending, &key);
 if(!p) {
  verbose(VERB_QUERY, "received unwanted or unsolicited udp reply dropped.");
  log_buf(VERB_ALGO, "dropped message", c->buffer);
  outnet->unwanted_replies++;
  if(outnet->unwanted_threshold && ++outnet->unwanted_total
   >= outnet->unwanted_threshold) {
   log_warn("unwanted reply total reached threshold (%u)"
    " you may be under attack."
    " defensive action: clearing the cache",
    (unsigned)outnet->unwanted_threshold);
   fptr_ok(fptr_whitelist_alloc_cleanup(
    outnet->unwanted_action));
   (*outnet->unwanted_action)(outnet->unwanted_param);
   outnet->unwanted_total = 0;
  }
  return 0;
 }

 verbose(VERB_ALGO, "received udp reply.");
 log_buf(VERB_ALGO, "udp message", c->buffer);
 if(p->pc->cp != c) {
  verbose(VERB_QUERY, "received reply id,addr on wrong port. "
   "dropped.");
  outnet->unwanted_replies++;
  if(outnet->unwanted_threshold && ++outnet->unwanted_total
   >= outnet->unwanted_threshold) {
   log_warn("unwanted reply total reached threshold (%u)"
    " you may be under attack."
    " defensive action: clearing the cache",
    (unsigned)outnet->unwanted_threshold);
   fptr_ok(fptr_whitelist_alloc_cleanup(
    outnet->unwanted_action));
   (*outnet->unwanted_action)(outnet->unwanted_param);
   outnet->unwanted_total = 0;
  }
  return 0;
 }
 comm_timer_disable(p->timer);
 verbose(VERB_ALGO, "outnet handle udp reply");

 (void)rbtree_delete(outnet->pending, p->node.key);
 if(p->cb) {
  fptr_ok(fptr_whitelist_pending_udp(p->cb));
  (void)(*p->cb)(p->pc->cp, p->cb_arg, NETEVENT_NOERROR, reply_info);
 }
 portcomm_loweruse(outnet, p->pc);
 pending_delete(((void*)0), p);
 outnet_send_wait_udp(outnet);
 return 0;
}
