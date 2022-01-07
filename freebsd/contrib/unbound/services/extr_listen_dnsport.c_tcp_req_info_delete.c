
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_req_info {int dummy; } ;


 int free (struct tcp_req_info*) ;
 int tcp_req_info_clear (struct tcp_req_info*) ;

void
tcp_req_info_delete(struct tcp_req_info* req)
{
 if(!req) return;
 tcp_req_info_clear(req);



 free(req);
}
