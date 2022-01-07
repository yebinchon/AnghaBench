
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int unwanted_queries; scalar_t__ extended; } ;
struct worker {TYPE_1__ stats; } ;
struct comm_reply {int addrlen; int addr; } ;
struct comm_point {int buffer; } ;
typedef enum acl_access { ____Placeholder_acl_access } acl_access ;


 int LDNS_HEADER_SIZE ;
 int LDNS_QR_SET (int ) ;
 int LDNS_RCODE_REFUSED ;
 int LDNS_RCODE_SET (int ,int ) ;
 int VERB_ALGO ;
 int comm_point_drop_reply (struct comm_reply*) ;
 int log_addr (int ,char*,int *,int ) ;
 int log_buf (int ,char*,int ) ;
 int sldns_buffer_begin (int ) ;
 int sldns_buffer_flip (int ) ;
 int sldns_buffer_set_limit (int ,int ) ;
 int sldns_buffer_set_position (int ,int ) ;
 int sldns_buffer_write_at (int ,int,int *,int) ;
 int worker_check_request (int ,struct worker*) ;

__attribute__((used)) static int
deny_refuse(struct comm_point* c, enum acl_access acl,
 enum acl_access deny, enum acl_access refuse,
 struct worker* worker, struct comm_reply* repinfo)
{
 if(acl == deny) {
  comm_point_drop_reply(repinfo);
  if(worker->stats.extended)
   worker->stats.unwanted_queries++;
  return 0;
 } else if(acl == refuse) {
  log_addr(VERB_ALGO, "refused query from",
   &repinfo->addr, repinfo->addrlen);
  log_buf(VERB_ALGO, "refuse", c->buffer);
  if(worker->stats.extended)
   worker->stats.unwanted_queries++;
  if(worker_check_request(c->buffer, worker) == -1) {
   comm_point_drop_reply(repinfo);
   return 0;
  }
  sldns_buffer_set_limit(c->buffer, LDNS_HEADER_SIZE);
  sldns_buffer_write_at(c->buffer, 4,
   (uint8_t*)"\0\0\0\0\0\0\0\0", 8);
  LDNS_QR_SET(sldns_buffer_begin(c->buffer));
  LDNS_RCODE_SET(sldns_buffer_begin(c->buffer),
   LDNS_RCODE_REFUSED);
  sldns_buffer_set_position(c->buffer, LDNS_HEADER_SIZE);
  sldns_buffer_flip(c->buffer);
  return 1;
 }

 return -1;
}
