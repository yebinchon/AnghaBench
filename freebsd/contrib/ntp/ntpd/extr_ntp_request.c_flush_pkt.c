
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct req_pkt {int dummy; } ;
struct pkt {int dummy; } ;
struct TYPE_2__ {int err_nitems; int auth_seq; int rm_vn_mode; } ;


 int AUTH_SEQ (int ,scalar_t__) ;
 int DPRINTF (int,char*) ;
 int INFO_ERR_NODATA ;
 int RESP_BIT ;
 scalar_t__ RESP_HEADER_SIZE ;
 int RM_VN_MODE (int ,int ,int ) ;
 scalar_t__ databytes ;
 int frominter ;
 int htons (int ) ;
 scalar_t__ nitems ;
 int numresppkts ;
 int req_ack (int ,int ,struct req_pkt*,int ) ;
 int reqver ;
 TYPE_1__ rpkt ;
 int sendpkt (int ,int ,int,struct pkt*,scalar_t__) ;
 scalar_t__ seqno ;
 int toaddr ;

__attribute__((used)) static void
flush_pkt(void)
{
 DPRINTF(3, ("request: flushing packet, %d items\n", nitems));




 if (seqno == 0 && nitems == 0)
  req_ack(toaddr, frominter, (struct req_pkt *)&rpkt,
   INFO_ERR_NODATA);
 else {
  rpkt.rm_vn_mode = RM_VN_MODE(RESP_BIT, 0, reqver);
  rpkt.auth_seq = AUTH_SEQ(0, seqno);
  rpkt.err_nitems = htons((u_short)nitems);
  sendpkt(toaddr, frominter, -1, (struct pkt *)&rpkt,
   RESP_HEADER_SIZE+databytes);
  numresppkts++;
 }
}
