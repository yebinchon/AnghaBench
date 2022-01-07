
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_int ;
typedef scalar_t__ u_char ;



__attribute__((used)) static u_short
in_cksum(u_short *p,
  u_int len)
{
 u_int sum = 0;
 int nwords = len >> 1;

 while (nwords-- != 0)
  sum += *p++;

 if (len & 1)
  sum += *(u_char *)p;


 sum = (sum >> 16) + (sum & 0xffff);
 sum += (sum >> 16);
 return (~sum);
}
