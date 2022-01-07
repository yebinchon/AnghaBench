
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static void copy_wqe_to_udb(volatile u32 *udb_offset, void *wqe)
{
 u64 *src, *dst;
 int len16 = 4;

 src = (u64 *)wqe;
 dst = (u64 *)udb_offset;

 while (len16) {
  *dst++ = *src++;
  *dst++ = *src++;
  len16--;
 }
}
