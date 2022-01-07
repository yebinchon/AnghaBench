
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct req_pkt {int request; int implementation; } ;
struct pkt {int dummy; } ;
typedef int sockaddr_u ;
typedef int endpt ;
struct TYPE_2__ {int mbz_itemsize; int err_nitems; int request; int implementation; int auth_seq; int rm_vn_mode; } ;


 int AUTH_SEQ (int ,int ) ;
 int ERR_NITEMS (int,int ) ;
 int MBZ_ITEMSIZE (int ) ;
 int RESP_BIT ;
 int RESP_HEADER_SIZE ;
 int RM_VN_MODE (int ,int ,int ) ;
 int * errorcounter ;
 int reqver ;
 TYPE_1__ rpkt ;
 int sendpkt (int *,int *,int,struct pkt*,int ) ;

__attribute__((used)) static void
req_ack(
 sockaddr_u *srcadr,
 endpt *inter,
 struct req_pkt *inpkt,
 int errcode
 )
{



 rpkt.rm_vn_mode = RM_VN_MODE(RESP_BIT, 0, reqver);
 rpkt.auth_seq = AUTH_SEQ(0, 0);
 rpkt.implementation = inpkt->implementation;
 rpkt.request = inpkt->request;
 rpkt.err_nitems = ERR_NITEMS(errcode, 0);
 rpkt.mbz_itemsize = MBZ_ITEMSIZE(0);




 sendpkt(srcadr, inter, -1, (struct pkt *)&rpkt, RESP_HEADER_SIZE);
 errorcounter[errcode]++;
}
