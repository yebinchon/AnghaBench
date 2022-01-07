
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int req ;
struct TYPE_2__ {int dl_ppa; int dl_primitive; } ;
typedef TYPE_1__ dl_attach_req_t ;
typedef int bpf_u_int32 ;


 int DL_ATTACH_REQ ;
 int MAXDLBUF ;
 int PCAP_ERROR ;
 int dlokack (int,char*,char*,char*) ;
 scalar_t__ send_request (int,char*,int,char*,char*) ;

__attribute__((used)) static int
dl_doattach(int fd, int ppa, char *ebuf)
{
 dl_attach_req_t req;
 bpf_u_int32 buf[MAXDLBUF];
 int err;

 req.dl_primitive = DL_ATTACH_REQ;
 req.dl_ppa = ppa;
 if (send_request(fd, (char *)&req, sizeof(req), "attach", ebuf) < 0)
  return (PCAP_ERROR);

 err = dlokack(fd, "attach", (char *)buf, ebuf);
 if (err < 0)
  return (err);
 return (0);
}
