
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comm_point {int http_is_chunked; size_t tcp_byte_count; int http_in_chunk_headers; int buffer; scalar_t__ http_in_headers; } ;


 int VERB_ALGO ;
 scalar_t__ atoi (char*) ;
 char* http_header_line (int ) ;
 int http_moveover_buffer (int ) ;
 int sldns_buffer_flip (int ) ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 int verbose (int ,char*,char*) ;

__attribute__((used)) static int
http_process_initial_header(struct comm_point* c)
{
 char* line = http_header_line(c->buffer);
 if(!line) return 1;
 verbose(VERB_ALGO, "http header: %s", line);
 if(strncasecmp(line, "HTTP/1.1 ", 9) == 0) {

  if(line[9] != '2') {
   verbose(VERB_ALGO, "http bad status %s", line+9);
   return 0;
  }
 } else if(strncasecmp(line, "Content-Length: ", 16) == 0) {
  if(!c->http_is_chunked)
   c->tcp_byte_count = (size_t)atoi(line+16);
 } else if(strncasecmp(line, "Transfer-Encoding: chunked", 19+7) == 0) {
  c->tcp_byte_count = 0;
  c->http_is_chunked = 1;
 } else if(line[0] == 0) {

  c->http_in_headers = 0;
  if(c->http_is_chunked)
   c->http_in_chunk_headers = 1;




  http_moveover_buffer(c->buffer);
  sldns_buffer_flip(c->buffer);
  return 1;
 }

 return 1;
}
