
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_long ;
typedef int u_char ;
struct hostent_data {char* hostbuf; char** host_aliases; char** h_addr_ptrs; } ;
struct hostent {char* h_name; char** h_aliases; char** h_addr_list; int h_length; } ;
typedef TYPE_1__* res_state ;
struct TYPE_11__ {int qdcount; int ancount; } ;
struct TYPE_10__ {int * buf; TYPE_3__ hdr; } ;
typedef TYPE_2__ querybuf ;
typedef int align ;
struct TYPE_9__ {int options; scalar_t__ nsort; } ;
typedef TYPE_3__ HEADER ;


 int AskedForGot ;
 int BOUNDED_INCR (scalar_t__) ;
 int BOUNDS_CHECK (int const*,int) ;
 int C_IN ;
 scalar_t__ HFIXEDSZ ;
 int INT16SZ ;
 int INT32SZ ;
 int LOG_AUTH ;
 int LOG_NOTICE ;
 int MAXDNAME ;
 int MAXHOSTNAMELEN ;
 int NETDB_SUCCESS ;
 int NO_RECOVERY ;
 scalar_t__ QFIXEDSZ ;
 int RES_SET_H_ERRNO (TYPE_1__*,int ) ;
 int RES_USE_INET6 ;


 int T_CNAME ;

 int T_SIG ;
 int _MAXADDRS ;
 int _MAXALIASES ;
 int _dns_ttl_ ;
 int _getlong (int const*) ;
 int _getshort (int const*) ;
 int _map_v4v6_hostent (struct hostent*,char**,char*) ;
 int addrsort (char**,int,TYPE_1__*) ;
 int dbg_printf (char*,int,TYPE_1__*) ;
 int dn_expand (int *,int const*,int const*,char*,int) ;
 int memcpy (char*,int const*,int) ;
 int ns_t_dname ;
 int ntohs (int ) ;
 int p_class (int) ;
 int p_type (int) ;
 int res_dnok (char*) ;
 int res_hnok (char*) ;
 int strcasecmp (char const*,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int stub1 (char const*) ;
 int stub2 (char const*) ;
 int stub3 (char const*) ;
 int syslog (int,char*,char const*,char*,...) ;

__attribute__((used)) static int
gethostanswer(const querybuf *answer, int anslen, const char *qname, int qtype,
    struct hostent *he, struct hostent_data *hed, res_state statp)
{
 const HEADER *hp;
 const u_char *cp;
 int n;
 const u_char *eom, *erdata;
 char *bp, *ep, **ap, **hap;
 int type, class, ancount, qdcount;
 int haveanswer, had_error;
 int toobig = 0;
 char tbuf[MAXDNAME];
 const char *tname;
 int (*name_ok)(const char *);

 tname = qname;
 he->h_name = ((void*)0);
 eom = answer->buf + anslen;
 switch (qtype) {
 case 130:
 case 129:
  name_ok = res_hnok;
  break;
 case 128:
  name_ok = res_dnok;
  break;
 default:
  RES_SET_H_ERRNO(statp, NO_RECOVERY);
  return (-1);
 }



 hp = &answer->hdr;
 ancount = ntohs(hp->ancount);
 qdcount = ntohs(hp->qdcount);
 bp = hed->hostbuf;
 ep = hed->hostbuf + sizeof hed->hostbuf;
 cp = answer->buf;
 BOUNDED_INCR(HFIXEDSZ);
 if (qdcount != 1) {
  RES_SET_H_ERRNO(statp, NO_RECOVERY);
  return (-1);
 }
 n = dn_expand(answer->buf, eom, cp, bp, ep - bp);
 if ((n < 0) || !(*name_ok)(bp)) {
  RES_SET_H_ERRNO(statp, NO_RECOVERY);
  return (-1);
 }
 BOUNDED_INCR(n + QFIXEDSZ);
 if (qtype == 130 || qtype == 129) {




  n = strlen(bp) + 1;
  if (n >= MAXHOSTNAMELEN) {
   RES_SET_H_ERRNO(statp, NO_RECOVERY);
   return (-1);
  }
  he->h_name = bp;
  bp += n;

  qname = he->h_name;
 }
 ap = hed->host_aliases;
 *ap = ((void*)0);
 he->h_aliases = hed->host_aliases;
 hap = hed->h_addr_ptrs;
 *hap = ((void*)0);
 he->h_addr_list = hed->h_addr_ptrs;
 haveanswer = 0;
 had_error = 0;
 _dns_ttl_ = -1;
 while (ancount-- > 0 && cp < eom && !had_error) {
  n = dn_expand(answer->buf, eom, cp, bp, ep - bp);
  if ((n < 0) || !(*name_ok)(bp)) {
   had_error++;
   continue;
  }
  cp += n;
  BOUNDS_CHECK(cp, 3 * INT16SZ + INT32SZ);
  type = _getshort(cp);
   cp += INT16SZ;
  class = _getshort(cp);
   cp += INT16SZ;
  if (qtype == 130 && type == 130)
   _dns_ttl_ = _getlong(cp);
  cp += INT32SZ;
  n = _getshort(cp);
  cp += INT16SZ;
  BOUNDS_CHECK(cp, n);
  erdata = cp + n;
  if (class != C_IN) {

   cp += n;
   continue;
  }
  if ((qtype == 130 || qtype == 129) && type == T_CNAME) {
   if (ap >= &hed->host_aliases[_MAXALIASES-1])
    continue;
   n = dn_expand(answer->buf, eom, cp, tbuf, sizeof tbuf);
   if ((n < 0) || !(*name_ok)(tbuf)) {
    had_error++;
    continue;
   }
   cp += n;
   if (cp != erdata) {
    RES_SET_H_ERRNO(statp, NO_RECOVERY);
    return (-1);
   }

   *ap++ = bp;
   n = strlen(bp) + 1;
   if (n >= MAXHOSTNAMELEN) {
    had_error++;
    continue;
   }
   bp += n;

   n = strlen(tbuf) + 1;
   if (n > ep - bp || n >= MAXHOSTNAMELEN) {
    had_error++;
    continue;
   }
   strcpy(bp, tbuf);
   he->h_name = bp;
   bp += n;
   continue;
  }
  if (qtype == 128 && type == T_CNAME) {
   n = dn_expand(answer->buf, eom, cp, tbuf, sizeof tbuf);
   if (n < 0 || !res_dnok(tbuf)) {
    had_error++;
    continue;
   }
   cp += n;
   if (cp != erdata) {
    RES_SET_H_ERRNO(statp, NO_RECOVERY);
    return (-1);
   }

   n = strlen(tbuf) + 1;
   if (n > ep - bp || n >= MAXHOSTNAMELEN) {
    had_error++;
    continue;
   }
   strcpy(bp, tbuf);
   tname = bp;
   bp += n;
   continue;
  }
  if (type != qtype) {
   if (type != T_SIG && type != ns_t_dname)
    syslog(LOG_NOTICE|LOG_AUTH,
 "gethostby*.gethostanswer: asked for \"%s %s %s\", got type \"%s\"",
           qname, p_class(C_IN), p_type(qtype),
           p_type(type));
   cp += n;
   continue;
  }
  switch (type) {
  case 128:
   if (strcasecmp(tname, bp) != 0) {
    syslog(LOG_NOTICE|LOG_AUTH,
           AskedForGot, qname, bp);
    cp += n;
    continue;
   }
   n = dn_expand(answer->buf, eom, cp, bp, ep - bp);
   if ((n < 0) || !res_hnok(bp)) {
    had_error++;
    break;
   }
   he->h_name = bp;
   if (statp->options & RES_USE_INET6) {
    n = strlen(bp) + 1;
    if (n >= MAXHOSTNAMELEN) {
     had_error++;
     break;
    }
    bp += n;
    _map_v4v6_hostent(he, &bp, ep);
   }
   RES_SET_H_ERRNO(statp, NETDB_SUCCESS);
   return (0);

  case 130:
  case 129:
   if (strcasecmp(he->h_name, bp) != 0) {
    syslog(LOG_NOTICE|LOG_AUTH,
           AskedForGot, he->h_name, bp);
    cp += n;
    continue;
   }
   if (n != he->h_length) {
    cp += n;
    continue;
   }
   if (!haveanswer) {
    int nn;

    he->h_name = bp;
    nn = strlen(bp) + 1;
    bp += nn;
   }

   bp += sizeof(align) - ((u_long)bp % sizeof(align));

   if (bp + n >= ep) {
    dbg_printf("size (%d) too big\n", n, statp);
    had_error++;
    continue;
   }
   if (hap >= &hed->h_addr_ptrs[_MAXADDRS-1]) {
    if (!toobig++)
     dbg_printf("Too many addresses (%d)\n",
      _MAXADDRS, statp);
    cp += n;
    continue;
   }
   memcpy(*hap++ = bp, cp, n);
   bp += n;
   cp += n;
   if (cp != erdata) {
    RES_SET_H_ERRNO(statp, NO_RECOVERY);
    return (-1);
   }
   break;
  default:
   dbg_printf("Impossible condition (type=%d)\n", type,
       statp);
   RES_SET_H_ERRNO(statp, NO_RECOVERY);
   return (-1);

  }
  if (!had_error)
   haveanswer++;
 }
 if (haveanswer) {
  *ap = ((void*)0);
  *hap = ((void*)0);
  if (!he->h_name) {
   n = strlen(qname) + 1;
   if (n > ep - bp || n >= MAXHOSTNAMELEN)
    goto no_recovery;
   strcpy(bp, qname);
   he->h_name = bp;
   bp += n;
  }
  if (statp->options & RES_USE_INET6)
   _map_v4v6_hostent(he, &bp, ep);
  RES_SET_H_ERRNO(statp, NETDB_SUCCESS);
  return (0);
 }
 no_recovery:
 RES_SET_H_ERRNO(statp, NO_RECOVERY);
 return (-1);
}
