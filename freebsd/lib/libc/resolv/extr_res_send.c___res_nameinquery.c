
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int qdcount; } ;
typedef TYPE_1__ HEADER ;


 int HFIXEDSZ ;
 int INT16SZ ;
 int MAXDNAME ;
 int dn_expand (int const*,int const*,int const*,char*,int) ;
 int ns_get16 (int const*) ;
 int ns_samename (char*,char const*) ;
 int ntohs (int ) ;

int
res_nameinquery(const char *name, int type, int class,
  const u_char *buf, const u_char *eom)
{
 const u_char *cp = buf + HFIXEDSZ;
 int qdcount = ntohs(((const HEADER*)buf)->qdcount);

 while (qdcount-- > 0) {
  char tname[MAXDNAME+1];
  int n, ttype, tclass;

  n = dn_expand(buf, eom, cp, tname, sizeof tname);
  if (n < 0)
   return (-1);
  cp += n;
  if (cp + 2 * INT16SZ > eom)
   return (-1);
  ttype = ns_get16(cp); cp += INT16SZ;
  tclass = ns_get16(cp); cp += INT16SZ;
  if (ttype == type && tclass == class &&
      ns_samename(tname, name) == 1)
   return (1);
 }
 return (0);
}
