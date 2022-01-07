
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int req ;
struct TYPE_2__ {int dl_max_conind; int dl_sap; int dl_service_mode; int dl_primitive; } ;
typedef TYPE_1__ dl_bind_req_t ;
typedef int bpf_u_int32 ;


 int DL_BIND_REQ ;
 int DL_CLDLS ;
 int DL_HP_RAWDLS ;
 int memset (char*,int ,int) ;
 int send_request (int,char*,int,char*,char*) ;

__attribute__((used)) static int
dlbindreq(int fd, bpf_u_int32 sap, char *ebuf)
{

 dl_bind_req_t req;

 memset((char *)&req, 0, sizeof(req));
 req.dl_primitive = DL_BIND_REQ;







 req.dl_sap = sap;

 return (send_request(fd, (char *)&req, sizeof(req), "bind", ebuf));
}
