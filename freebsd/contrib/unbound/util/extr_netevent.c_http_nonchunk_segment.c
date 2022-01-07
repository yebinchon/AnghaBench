
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comm_point {size_t http_stored; size_t tcp_byte_count; int cb_arg; int (* callback ) (struct comm_point*,int ,int ,int *) ;int buffer; } ;


 int NETEVENT_DONE ;
 int NETEVENT_NOERROR ;
 int fptr_ok (int ) ;
 int fptr_whitelist_comm_point (int (*) (struct comm_point*,int ,int ,int *)) ;
 size_t sldns_buffer_capacity (int ) ;
 int sldns_buffer_clear (int ) ;
 size_t sldns_buffer_limit (int ) ;
 int sldns_buffer_set_position (int ,size_t) ;
 int stub1 (struct comm_point*,int ,int ,int *) ;
 int stub2 (struct comm_point*,int ,int ,int *) ;

__attribute__((used)) static int
http_nonchunk_segment(struct comm_point* c)
{




 size_t remainbufferlen;
 size_t got_now = sldns_buffer_limit(c->buffer) - c->http_stored;
 if(c->tcp_byte_count <= got_now) {

  c->http_stored = 0;
  sldns_buffer_set_position(c->buffer, 0);
  fptr_ok(fptr_whitelist_comm_point(c->callback));
  (void)(*c->callback)(c, c->cb_arg, NETEVENT_DONE, ((void*)0));
  return 1;
 }
 c->tcp_byte_count -= got_now;


 remainbufferlen = sldns_buffer_capacity(c->buffer) -
  sldns_buffer_limit(c->buffer);
 if(remainbufferlen >= c->tcp_byte_count ||
  remainbufferlen >= 2048) {
  size_t total = sldns_buffer_limit(c->buffer);
  sldns_buffer_clear(c->buffer);
  sldns_buffer_set_position(c->buffer, total);
  c->http_stored = total;

  return 1;
 }


 c->http_stored = 0;
 sldns_buffer_set_position(c->buffer, 0);
 fptr_ok(fptr_whitelist_comm_point(c->callback));
 (void)(*c->callback)(c, c->cb_arg, NETEVENT_NOERROR, ((void*)0));


 return 1;
}
