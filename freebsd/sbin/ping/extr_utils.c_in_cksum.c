
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef scalar_t__ u_char ;
typedef int data ;


 int memcpy (int*,scalar_t__*,int) ;

u_short
in_cksum(u_char *addr, int len)
{
 int nleft, sum;
 u_char *w;
 union {
  u_short us;
  u_char uc[2];
 } last;
 u_short answer;

 nleft = len;
 sum = 0;
 w = addr;






 while (nleft > 1) {
  u_short data;

  memcpy(&data, w, sizeof(data));
  sum += data;
  w += sizeof(data);
  nleft -= sizeof(data);
 }


 if (nleft == 1) {
  last.uc[0] = *w;
  last.uc[1] = 0;
  sum += last.us;
 }


 sum = (sum >> 16) + (sum & 0xffff);
 sum += (sum >> 16);
 answer = ~sum;
 return(answer);
}
