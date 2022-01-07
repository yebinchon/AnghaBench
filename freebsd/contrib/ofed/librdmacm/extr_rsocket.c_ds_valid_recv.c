
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_wc {scalar_t__ byte_len; int wr_id; } ;
struct ibv_grh {int dummy; } ;
struct ds_qp {scalar_t__ rbuf; } ;
struct ds_header {int version; scalar_t__ length; } ;


 scalar_t__ DS_IPV4_HDR_LEN ;
 scalar_t__ DS_IPV6_HDR_LEN ;
 scalar_t__ rs_wr_data (int ) ;

__attribute__((used)) static int ds_valid_recv(struct ds_qp *qp, struct ibv_wc *wc)
{
 struct ds_header *hdr;

 hdr = (struct ds_header *) (qp->rbuf + rs_wr_data(wc->wr_id));
 return ((wc->byte_len >= sizeof(struct ibv_grh) + DS_IPV4_HDR_LEN) &&
  ((hdr->version == 4 && hdr->length == DS_IPV4_HDR_LEN) ||
   (hdr->version == 6 && hdr->length == DS_IPV6_HDR_LEN)));
}
