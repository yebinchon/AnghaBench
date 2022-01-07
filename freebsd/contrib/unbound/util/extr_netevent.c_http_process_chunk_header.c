
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comm_point {int http_in_chunk_headers; scalar_t__ tcp_byte_count; int buffer; int cb_arg; int (* callback ) (struct comm_point*,int ,int ,int *) ;} ;


 int NETEVENT_DONE ;
 int VERB_ALGO ;
 int fptr_ok (int ) ;
 int fptr_whitelist_comm_point (int (*) (struct comm_point*,int ,int ,int *)) ;
 char* http_header_line (int ) ;
 int http_moveover_buffer (int ) ;
 int sldns_buffer_flip (int ) ;
 int sldns_buffer_set_limit (int ,int ) ;
 int sldns_buffer_set_position (int ,int ) ;
 scalar_t__ strtol (char*,char**,int) ;
 int stub1 (struct comm_point*,int ,int ,int *) ;
 int verbose (int ,char*,char*) ;

__attribute__((used)) static int
http_process_chunk_header(struct comm_point* c)
{
 char* line = http_header_line(c->buffer);
 if(!line) return 1;
 if(c->http_in_chunk_headers == 3) {
  verbose(VERB_ALGO, "http chunk trailer: %s", line);

  if(line[0] == 0 && c->tcp_byte_count == 0) {


   sldns_buffer_set_position(c->buffer, 0);
   sldns_buffer_set_limit(c->buffer, 0);
   fptr_ok(fptr_whitelist_comm_point(c->callback));
   (void)(*c->callback)(c, c->cb_arg, NETEVENT_DONE, ((void*)0));

   return 2;
  }
  if(line[0] == 0) {

   c->http_in_chunk_headers = 1;

   http_moveover_buffer(c->buffer);
   sldns_buffer_flip(c->buffer);
   return 1;
  }

  return 1;
 }
 verbose(VERB_ALGO, "http chunk header: %s", line);
 if(c->http_in_chunk_headers == 1) {

  char* end = ((void*)0);
  c->tcp_byte_count = (size_t)strtol(line, &end, 16);
  if(end == line)
   return 0;
  c->http_in_chunk_headers = 0;

  http_moveover_buffer(c->buffer);
  sldns_buffer_flip(c->buffer);
  if(c->tcp_byte_count == 0) {

   c->http_in_chunk_headers = 3;
  }
  return 1;
 }

 return 1;
}
