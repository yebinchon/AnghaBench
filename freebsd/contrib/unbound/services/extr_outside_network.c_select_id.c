
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct pending* key; } ;
struct pending {unsigned int id; TYPE_1__ node; } ;
struct outside_network {int rnd; int pending; } ;
typedef int sldns_buffer ;


 int LDNS_ID_SET (int ,unsigned int) ;
 int MAX_ID_RETRY ;
 int VERB_ALGO ;
 int log_err (char*) ;
 int rbtree_insert (int ,TYPE_1__*) ;
 int sldns_buffer_begin (int *) ;
 scalar_t__ ub_random (int ) ;
 int verbose (int ,char*,int) ;

__attribute__((used)) static int
select_id(struct outside_network* outnet, struct pending* pend,
 sldns_buffer* packet)
{
 int id_tries = 0;
 pend->id = ((unsigned)ub_random(outnet->rnd)>>8) & 0xffff;
 LDNS_ID_SET(sldns_buffer_begin(packet), pend->id);


 pend->node.key = pend;
 while(!rbtree_insert(outnet->pending, &pend->node)) {

  pend->id = ((unsigned)ub_random(outnet->rnd)>>8) & 0xffff;
  LDNS_ID_SET(sldns_buffer_begin(packet), pend->id);
  id_tries++;
  if(id_tries == MAX_ID_RETRY) {
   pend->id=99999;
   log_err("failed to generate unique ID, drop msg");
   return 0;
  }
 }
 verbose(VERB_ALGO, "inserted new pending reply id=%4.4x", pend->id);
 return 1;
}
