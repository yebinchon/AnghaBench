
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int bcopy (char*,char*,int) ;
 int ntohl (int ) ;

int
xdr_string_decode(char **pkt, char *str, int *len_p)
{
 uint32_t *lenp;
 char *datap;
 int slen;
 int plen;


 lenp = (uint32_t *) *pkt;
 *pkt += sizeof(*lenp);
 slen = ntohl(*lenp);
 plen = (slen + 3) & ~3;

 if (slen > *len_p)
  slen = *len_p;
 datap = *pkt;
 *pkt += plen;
 bcopy(datap, str, slen);

 str[slen] = '\0';
 *len_p = slen;

 return (0);
}
