
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int bcopy (char*,char*,int) ;
 int htonl (int) ;

int
xdr_string_encode(char **pkt, char *str, int len)
{
 uint32_t *lenp;
 char *datap;
 int padlen = (len + 3) & ~3;


 lenp = (uint32_t *) *pkt;
 *pkt += sizeof(*lenp);
 *lenp = htonl(len);

 datap = *pkt;
 *pkt += padlen;
 bcopy(str, datap, len);

 return (0);
}
