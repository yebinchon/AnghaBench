
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_hdr {int version; int len; } ;


 int _recv (int,char*,int) ;
 int printf (char*,int,int) ;

__attribute__((used)) static int msg_recv_hdr(int rs, struct msg_hdr *hdr)
{
 int ret;

 ret = _recv(rs, (char *) hdr, sizeof *hdr);
 if (ret != sizeof *hdr)
  return -1;

 if (hdr->version || hdr->len < sizeof *hdr) {
  printf("invalid version %d or length %d\n",
         hdr->version, hdr->len);
  return -1;
 }

 return sizeof *hdr;
}
