
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_char ;
struct ip6_ext {int ip6e_len; } ;
struct cmsghdr {int cmsg_len; } ;


 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 int const IP6OPT_PAD1 ;
 int inet6_insert_padopt (int *,int) ;
 int memcpy (int *,int const*,int) ;
 int roundup2 (int,int) ;

int
inet6_option_append(struct cmsghdr *cmsg, const u_int8_t *typep, int multx,
    int plusy)
{
 int padlen, optlen, off;
 u_char *bp = (u_char *)cmsg + cmsg->cmsg_len;
 struct ip6_ext *eh = (struct ip6_ext *)CMSG_DATA(cmsg);


 if (multx != 1 && multx != 2 && multx != 4 && multx != 8)
  return(-1);
 if (plusy < 0 || plusy > 7)
  return(-1);






 if (bp == (u_char *)eh) {
  bp += 2;
  cmsg->cmsg_len += 2;
 }


 off = bp - (u_char *)eh;
 padlen = roundup2(off % multx, multx) - (off % multx);
 padlen += plusy;
 padlen %= multx;

 inet6_insert_padopt(bp, padlen);
 cmsg->cmsg_len += padlen;
 bp += padlen;


 if (typep[0] == IP6OPT_PAD1)
  optlen = 1;
 else
  optlen = typep[1] + 2;
 memcpy(bp, typep, optlen);
 bp += optlen;
 cmsg->cmsg_len += optlen;


 off = bp - (u_char *)eh;
 padlen = ((off + 7) & ~7) - off;
 inet6_insert_padopt(bp, padlen);
 bp += padlen;
 cmsg->cmsg_len += padlen;


 eh->ip6e_len = ((bp - (u_char *)eh) >> 3) - 1;

 return(0);
}
