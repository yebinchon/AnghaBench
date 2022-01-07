
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;



__attribute__((used)) static __inline int
_big5_check(u_int c)
{

 c &= 0xff;
 return ((c >= 0xa1 && c <= 0xfe) ? 2 : 1);
}
