
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct svc_rpc_gss_client {scalar_t__ cl_seqlast; scalar_t__* cl_seqmask; } ;


 int SVC_RPC_GSS_SEQWINDOW ;

__attribute__((used)) static void
svc_rpc_gss_update_seq(struct svc_rpc_gss_client *client, uint32_t seq)
{
 int offset, i, word, bit;
 uint32_t carry, newcarry;
 uint32_t* maskp;

 maskp = client->cl_seqmask;
 if (seq > client->cl_seqlast) {







  offset = seq - client->cl_seqlast;
  while (offset >= 32) {
   for (i = (SVC_RPC_GSS_SEQWINDOW / 32) - 1;
        i > 0; i--) {
    maskp[i] = maskp[i-1];
   }
   maskp[0] = 0;
   offset -= 32;
  }
  if (offset > 0) {
   carry = 0;
   for (i = 0; i < SVC_RPC_GSS_SEQWINDOW / 32; i++) {
    newcarry = maskp[i] >> (32 - offset);
    maskp[i] = (maskp[i] << offset) | carry;
    carry = newcarry;
   }
  }
  maskp[0] |= 1;
  client->cl_seqlast = seq;
 } else {
  offset = client->cl_seqlast - seq;
  word = offset / 32;
  bit = offset % 32;
  maskp[word] |= (1 << bit);
 }

}
