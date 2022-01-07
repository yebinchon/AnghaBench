
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct krping_rdma_info {void* size; void* rkey; int buf; } ;
struct krping_cb {int size; int server_invalidate; scalar_t__ bw; scalar_t__ rlat; scalar_t__ wlat; int server; struct krping_rdma_info send_buf; } ;


 int DEBUG_LOG (char*,unsigned long long,int ,int ) ;
 void* htonl (int ) ;
 int htonll (scalar_t__) ;
 int krping_rdma_rkey (struct krping_cb*,scalar_t__,int) ;

__attribute__((used)) static void krping_format_send(struct krping_cb *cb, u64 buf)
{
 struct krping_rdma_info *info = &cb->send_buf;
 u32 rkey;






 if (!cb->server || cb->wlat || cb->rlat || cb->bw) {
  rkey = krping_rdma_rkey(cb, buf, !cb->server_invalidate);
  info->buf = htonll(buf);
  info->rkey = htonl(rkey);
  info->size = htonl(cb->size);
  DEBUG_LOG("RDMA addr %llx rkey %x len %d\n",
     (unsigned long long)buf, rkey, cb->size);
 }
}
