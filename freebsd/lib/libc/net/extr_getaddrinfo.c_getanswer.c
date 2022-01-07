
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
struct in6_addr {int dummy; } ;
struct afd {int dummy; } ;
struct addrinfo {struct addrinfo* ai_next; int ai_family; } ;
typedef int sentinel ;
typedef TYPE_1__* res_state ;
struct TYPE_10__ {int ancount; int qdcount; } ;
struct TYPE_9__ {int * buf; TYPE_3__ hdr; } ;
typedef TYPE_2__ querybuf ;
typedef int in6 ;
struct TYPE_8__ {scalar_t__ nsort; } ;
typedef TYPE_3__ HEADER ;


 int AF_INET ;
 int AF_INET6 ;
 int AskedForGot ;
 int C_IN ;
 int HFIXEDSZ ;
 int IN6ADDRSZ ;
 int IN6_IS_ADDR_V4MAPPED (struct in6_addr*) ;
 int INADDRSZ ;
 scalar_t__ INT16SZ ;
 scalar_t__ INT32SZ ;
 int LOG_AUTH ;
 int LOG_NOTICE ;
 int MAXDNAME ;
 int MAXHOSTNAMELEN ;
 int NETDB_SUCCESS ;
 int NO_DATA ;
 int NO_RECOVERY ;
 scalar_t__ QFIXEDSZ ;
 int RES_SET_H_ERRNO (TYPE_1__*,int ) ;



 int T_CNAME ;
 int T_KEY ;
 int T_SIG ;
 int _getshort (int const*) ;
 int abort () ;
 scalar_t__ addr4sort (struct addrinfo*,TYPE_1__*) ;
 int dn_expand (int *,int const*,int const*,char*,int) ;
 struct afd* find_afd (int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 struct addrinfo* get_ai (struct addrinfo*,struct afd const*,char const*) ;
 int get_canonname (struct addrinfo const*,struct addrinfo*,char const*) ;
 int memcpy (struct in6_addr*,int const*,int) ;
 int memset (struct addrinfo*,int ,int) ;
 int ns_t_dname ;
 int ntohs (int ) ;
 int p_class (int) ;
 int p_type (int) ;
 int res_hnok (char const*) ;
 int strcasecmp (char*,char*) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 int stub1 (char const*) ;
 int stub2 (char const*) ;
 int stub3 (char const*) ;
 int syslog (int,char*,char const*,char*,...) ;

__attribute__((used)) static struct addrinfo *
getanswer(const querybuf *answer, int anslen, const char *qname, int qtype,
    const struct addrinfo *pai, res_state res)
{
 struct addrinfo sentinel, *cur;
 struct addrinfo ai;
 const struct afd *afd;
 char *canonname;
 const HEADER *hp;
 const u_char *cp;
 int n;
 const u_char *eom;
 char *bp, *ep;
 int type, class, ancount, qdcount;
 int haveanswer, had_error;
 char tbuf[MAXDNAME];
 int (*name_ok)(const char *);
 char hostbuf[8*1024];

 memset(&sentinel, 0, sizeof(sentinel));
 cur = &sentinel;

 canonname = ((void*)0);
 eom = answer->buf + anslen;
 switch (qtype) {
 case 130:
 case 129:
 case 128:
  name_ok = res_hnok;
  break;
 default:
  return (((void*)0));
 }



 hp = &answer->hdr;
 ancount = ntohs(hp->ancount);
 qdcount = ntohs(hp->qdcount);
 bp = hostbuf;
 ep = hostbuf + sizeof hostbuf;
 cp = answer->buf + HFIXEDSZ;
 if (qdcount != 1) {
  RES_SET_H_ERRNO(res, NO_RECOVERY);
  return (((void*)0));
 }
 n = dn_expand(answer->buf, eom, cp, bp, ep - bp);
 if ((n < 0) || !(*name_ok)(bp)) {
  RES_SET_H_ERRNO(res, NO_RECOVERY);
  return (((void*)0));
 }
 cp += n + QFIXEDSZ;
 if (qtype == 130 || qtype == 129 || qtype == 128) {




  n = strlen(bp) + 1;
  if (n >= MAXHOSTNAMELEN) {
   RES_SET_H_ERRNO(res, NO_RECOVERY);
   return (((void*)0));
  }
  canonname = bp;
  bp += n;

  qname = canonname;
 }
 haveanswer = 0;
 had_error = 0;
 while (ancount-- > 0 && cp < eom && !had_error) {
  n = dn_expand(answer->buf, eom, cp, bp, ep - bp);
  if ((n < 0) || !(*name_ok)(bp)) {
   had_error++;
   continue;
  }
  cp += n;
  type = _getshort(cp);
   cp += INT16SZ;
  class = _getshort(cp);
   cp += INT16SZ + INT32SZ;
  n = _getshort(cp);
  cp += INT16SZ;
  if (class != C_IN) {

   cp += n;
   continue;
  }
  if ((qtype == 130 || qtype == 129 || qtype == 128) &&
      type == T_CNAME) {
   n = dn_expand(answer->buf, eom, cp, tbuf, sizeof tbuf);
   if ((n < 0) || !(*name_ok)(tbuf)) {
    had_error++;
    continue;
   }
   cp += n;

   n = strlen(tbuf) + 1;
   if (n > ep - bp || n >= MAXHOSTNAMELEN) {
    had_error++;
    continue;
   }
   strlcpy(bp, tbuf, ep - bp);
   canonname = bp;
   bp += n;
   continue;
  }
  if (qtype == 128) {
   if (!(type == 130 || type == 129)) {
    cp += n;
    continue;
   }
  } else if (type != qtype) {
   cp += n;
   continue;
  }
  switch (type) {
  case 130:
  case 129:
   if (strcasecmp(canonname, bp) != 0) {




    cp += n;
    continue;
   }
   if (type == 130 && n != INADDRSZ) {
    cp += n;
    continue;
   }
   if (type == 129 && n != IN6ADDRSZ) {
    cp += n;
    continue;
   }
   if (!haveanswer) {
    int nn;

    canonname = bp;
    nn = strlen(bp) + 1;
    bp += nn;
   }


   ai = *pai;
   ai.ai_family = (type == 130) ? AF_INET : AF_INET6;
   afd = find_afd(ai.ai_family);
   if (afd == ((void*)0)) {
    cp += n;
    continue;
   }
   cur->ai_next = get_ai(&ai, afd, (const char *)cp);
   if (cur->ai_next == ((void*)0))
    had_error++;
   while (cur && cur->ai_next)
    cur = cur->ai_next;
   cp += n;
   break;
  default:
   abort();
  }
  if (!had_error)
   haveanswer++;
 }
 if (haveanswer) {
  if (!canonname)
   (void)get_canonname(pai, sentinel.ai_next, qname);
  else
   (void)get_canonname(pai, sentinel.ai_next, canonname);
  RES_SET_H_ERRNO(res, NETDB_SUCCESS);
  return sentinel.ai_next;
 }





 RES_SET_H_ERRNO(res, ntohs(hp->ancount) > 0 ? NO_DATA : NO_RECOVERY);
 return ((void*)0);
}
