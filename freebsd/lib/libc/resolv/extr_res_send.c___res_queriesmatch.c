
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {scalar_t__ opcode; int qdcount; } ;
typedef TYPE_1__ HEADER ;


 int HFIXEDSZ ;
 int INT16SZ ;
 int MAXDNAME ;
 int dn_expand (int const*,int const*,int const*,char*,int) ;
 int ns_get16 (int const*) ;
 scalar_t__ ns_o_update ;
 int ntohs (int ) ;
 int res_nameinquery (char*,int,int,int const*,int const*) ;

int
res_queriesmatch(const u_char *buf1, const u_char *eom1,
   const u_char *buf2, const u_char *eom2)
{
 const u_char *cp = buf1 + HFIXEDSZ;
 int qdcount = ntohs(((const HEADER*)buf1)->qdcount);

 if (buf1 + HFIXEDSZ > eom1 || buf2 + HFIXEDSZ > eom2)
  return (-1);





 if ((((const HEADER *)buf1)->opcode == ns_o_update) &&
     (((const HEADER *)buf2)->opcode == ns_o_update))
  return (1);

 if (qdcount != ntohs(((const HEADER*)buf2)->qdcount))
  return (0);
 while (qdcount-- > 0) {
  char tname[MAXDNAME+1];
  int n, ttype, tclass;

  n = dn_expand(buf1, eom1, cp, tname, sizeof tname);
  if (n < 0)
   return (-1);
  cp += n;
  if (cp + 2 * INT16SZ > eom1)
   return (-1);
  ttype = ns_get16(cp); cp += INT16SZ;
  tclass = ns_get16(cp); cp += INT16SZ;
  if (!res_nameinquery(tname, ttype, tclass, buf2, eom2))
   return (0);
 }
 return (1);
}
