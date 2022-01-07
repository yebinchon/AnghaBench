
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct receive_arg {int cksum; scalar_t__ byteswap; } ;


 int fletcher_4_incremental_byteswap (void*,int,int *) ;
 int fletcher_4_incremental_native (void*,int,int *) ;

__attribute__((used)) static void
receive_cksum(struct receive_arg *ra, int len, void *buf)
{
 if (ra->byteswap) {
  (void) fletcher_4_incremental_byteswap(buf, len, &ra->cksum);
 } else {
  (void) fletcher_4_incremental_native(buf, len, &ra->cksum);
 }
}
