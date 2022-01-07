
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct netent_data {char* netbuf; char** net_aliases; } ;
struct netent {char** n_aliases; char* n_name; long n_net; int n_addrtype; } ;
typedef int res_state ;
struct TYPE_5__ {scalar_t__ aa; int qdcount; int ancount; } ;
struct TYPE_4__ {int * buf; TYPE_2__ hdr; } ;
typedef TYPE_1__ querybuf ;
typedef int aux ;
typedef int ans ;
typedef TYPE_2__ HEADER ;


 int AF_INET ;
 int AF_UNSPEC ;


 int C_IN ;
 int ENOBUFS ;
 int GETSHORT (int,int *) ;
 int HFIXEDSZ ;
 int HOST_NOT_FOUND ;
 int INT32SZ ;
 int MAXHOSTNAMELEN ;
 int NETDB_INTERNAL ;
 scalar_t__ QFIXEDSZ ;
 int RES_SET_H_ERRNO (int ,int ) ;
 int TRY_AGAIN ;
 int T_PTR ;
 scalar_t__ __dn_skipname (int *,int *) ;
 int dn_expand (int *,int *,int *,char*,int) ;
 int errno ;
 long inet_network (char*) ;
 int ipreverse (char*,char*) ;
 int ntohs (int ) ;
 int res_dnok (char*) ;
 int res_hnok (char*) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static int
getnetanswer(querybuf *answer, int anslen, int net_i, struct netent *ne,
    struct netent_data *ned, res_state statp)
{

 HEADER *hp;
 u_char *cp;
 int n;
 u_char *eom;
 int type, class, ancount, qdcount, haveanswer;
 char aux[MAXHOSTNAMELEN];
 char ans[MAXHOSTNAMELEN];
 char *in, *bp, *ep, **ap;
 eom = answer->buf + anslen;
 hp = &answer->hdr;
 ancount = ntohs(hp->ancount);
 qdcount = ntohs(hp->qdcount);
 bp = ned->netbuf;
 ep = ned->netbuf + sizeof(ned->netbuf);
 cp = answer->buf + HFIXEDSZ;
 if (!qdcount) {
  if (hp->aa)
   RES_SET_H_ERRNO(statp, HOST_NOT_FOUND);
  else
   RES_SET_H_ERRNO(statp, TRY_AGAIN);
  return (-1);
 }
 while (qdcount-- > 0)
  cp += __dn_skipname(cp, eom) + QFIXEDSZ;
 ap = ned->net_aliases;
 *ap = ((void*)0);
 ne->n_aliases = ned->net_aliases;
 haveanswer = 0;
 while (--ancount >= 0 && cp < eom) {
  n = dn_expand(answer->buf, eom, cp, bp, ep - bp);
  if ((n < 0) || !res_dnok(bp))
   break;
  cp += n;
  ans[0] = '\0';
  (void)strncpy(&ans[0], bp, sizeof(ans) - 1);
  ans[sizeof(ans) - 1] = '\0';
  GETSHORT(type, cp);
  GETSHORT(class, cp);
  cp += INT32SZ;
  GETSHORT(n, cp);
  if (class == C_IN && type == T_PTR) {
   n = dn_expand(answer->buf, eom, cp, bp, ep - bp);
   if ((n < 0) || !res_hnok(bp)) {
    cp += n;
    return (-1);
   }
   cp += n;
   *ap++ = bp;
   n = strlen(bp) + 1;
   bp += n;
   ne->n_addrtype = (class == C_IN) ? AF_INET : AF_UNSPEC;
   haveanswer++;
  }
 }
 if (haveanswer) {
  *ap = ((void*)0);
  switch (net_i) {
  case 129:
   ne->n_name = *ne->n_aliases;
   ne->n_net = 0L;
   break;
  case 128:
   in = *ne->n_aliases;
   n = strlen(ans) + 1;
   if (ep - bp < n) {
    RES_SET_H_ERRNO(statp, NETDB_INTERNAL);
    errno = ENOBUFS;
    return (-1);
   }
   strlcpy(bp, ans, ep - bp);
   ne->n_name = bp;
   if (strlen(in) + 1 > sizeof(aux)) {
    RES_SET_H_ERRNO(statp, NETDB_INTERNAL);
    errno = ENOBUFS;
    return (-1);
   }
   ipreverse(in, aux);
   ne->n_net = inet_network(aux);
   break;
  }
  ne->n_aliases++;
  return (0);
 }
 RES_SET_H_ERRNO(statp, TRY_AGAIN);
 return (-1);
}
