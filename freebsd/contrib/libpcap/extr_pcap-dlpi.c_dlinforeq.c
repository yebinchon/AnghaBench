
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int req ;
struct TYPE_2__ {int dl_primitive; } ;
typedef TYPE_1__ dl_info_req_t ;


 int DL_INFO_REQ ;
 int send_request (int,char*,int,char*,char*) ;

__attribute__((used)) static int
dlinforeq(int fd, char *ebuf)
{
 dl_info_req_t req;

 req.dl_primitive = DL_INFO_REQ;

 return (send_request(fd, (char *)&req, sizeof(req), "info", ebuf));
}
