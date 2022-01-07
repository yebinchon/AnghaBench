
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comm_reply {int c; } ;
struct comm_point {size_t http_stored; size_t tcp_byte_count; int http_in_chunk_headers; int cb_arg; int (* callback ) (struct comm_point*,int ,int ,struct comm_reply*) ;int buffer; int http_temp; struct comm_reply repinfo; } ;
typedef int ssize_t ;


 int NETEVENT_NOERROR ;
 int fptr_ok (int ) ;
 int fptr_whitelist_comm_point (int (*) (struct comm_point*,int ,int ,struct comm_reply*)) ;
 int sldns_buffer_begin (int ) ;
 size_t sldns_buffer_capacity (int ) ;
 int sldns_buffer_clear (int ) ;
 int sldns_buffer_current (int ) ;
 int sldns_buffer_flip (int ) ;
 size_t sldns_buffer_limit (int ) ;
 size_t sldns_buffer_position (int ) ;
 int sldns_buffer_remaining (int ) ;
 int sldns_buffer_set_limit (int ,size_t) ;
 int sldns_buffer_set_position (int ,size_t) ;
 int sldns_buffer_skip (int ,int ) ;
 int sldns_buffer_write (int ,int ,int ) ;
 int stub1 (struct comm_point*,int ,int ,struct comm_reply*) ;
 int stub2 (struct comm_point*,int ,int ,struct comm_reply*) ;

__attribute__((used)) static int
http_chunked_segment(struct comm_point* c)
{




 size_t remainbufferlen;
 size_t got_now = sldns_buffer_limit(c->buffer) - c->http_stored;
 if(c->tcp_byte_count <= got_now) {



  size_t fraglen;
  struct comm_reply repinfo;
  c->http_stored = 0;
  sldns_buffer_skip(c->buffer, (ssize_t)c->tcp_byte_count);
  sldns_buffer_clear(c->http_temp);
  sldns_buffer_write(c->http_temp,
   sldns_buffer_current(c->buffer),
   sldns_buffer_remaining(c->buffer));
  sldns_buffer_flip(c->http_temp);


  fraglen = sldns_buffer_position(c->buffer);
  sldns_buffer_set_position(c->buffer, 0);
  sldns_buffer_set_limit(c->buffer, fraglen);
  repinfo = c->repinfo;
  fptr_ok(fptr_whitelist_comm_point(c->callback));
  (void)(*c->callback)(c, c->cb_arg, NETEVENT_NOERROR, &repinfo);



  if(!repinfo.c) {
   return 1;
  }

  sldns_buffer_clear(c->buffer);
  sldns_buffer_write(c->buffer,
   sldns_buffer_begin(c->http_temp),
   sldns_buffer_remaining(c->http_temp));
  sldns_buffer_flip(c->buffer);


  c->http_in_chunk_headers = 3;

  return 2;
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
