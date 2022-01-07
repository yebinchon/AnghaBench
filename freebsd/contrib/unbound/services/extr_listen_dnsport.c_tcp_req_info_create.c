
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_req_info {struct sldns_buffer* spool_buffer; } ;
struct sldns_buffer {int dummy; } ;


 int log_err (char*) ;
 scalar_t__ malloc (int) ;
 int memset (struct tcp_req_info*,int ,int) ;

struct tcp_req_info*
tcp_req_info_create(struct sldns_buffer* spoolbuf)
{
 struct tcp_req_info* req = (struct tcp_req_info*)malloc(sizeof(*req));
 if(!req) {
  log_err("malloc failure for new stream outoforder processing structure");
  return ((void*)0);
 }
 memset(req, 0, sizeof(*req));
 req->spool_buffer = spoolbuf;
 return req;
}
