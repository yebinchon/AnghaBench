
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef scalar_t__ u_char ;



u_short
in_cksum(register u_short *addr, register int len)
{
 register int nleft = len;
 register u_short *w = addr;
 register u_short answer;
 register int sum = 0;







 while (nleft > 1) {
  sum += *w++;
  nleft -= 2;
 }


 if (nleft == 1)
  sum += *(u_char *)w;




 sum = (sum >> 16) + (sum & 0xffff);
 sum += (sum >> 16);
 answer = ~sum;
 return (answer);
}
