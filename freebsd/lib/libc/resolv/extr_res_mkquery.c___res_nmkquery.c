
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
typedef TYPE_1__* res_state ;
struct TYPE_6__ {int opcode; int rd; void* ancount; void* arcount; void* qdcount; int rcode; void* id; } ;
struct TYPE_5__ {int options; int id; } ;
typedef TYPE_2__ HEADER ;


 int HFIXEDSZ ;
 int INT16SZ ;
 int INT32SZ ;

 int NOERROR ;

 int QFIXEDSZ ;

 int RES_DEBUG ;
 unsigned int RES_RECURSE ;
 int RRFIXEDSZ ;
 int T_NULL ;
 int UNUSED (int const*) ;
 char** _res_opcodes ;
 int dn_comp (char const*,int *,int ,int **,int **) ;
 void* htons (int) ;
 int memcpy (int *,int const*,int) ;
 int memset (int *,int ,int) ;
 int nitems (int **) ;
 int ns_put16 (int,int *) ;
 int ns_put32 (int ,int *) ;
 char* p_class (int) ;
 char* p_type (int) ;
 int printf (char*,char*,char const*,char*,char*) ;
 int res_nrandomid (TYPE_1__*) ;

int
res_nmkquery(res_state statp,
      int op,
      const char *dname,
      int class, int type,
      const u_char *data,
      int datalen,
      const u_char *newrr_in,
      u_char *buf,
      int buflen)
{
 HEADER *hp;
 u_char *cp, *ep;
 int n;
 u_char *dnptrs[20], **dpp, **lastdnptr;

 UNUSED(newrr_in);
 if ((buf == ((void*)0)) || (buflen < HFIXEDSZ))
  return (-1);
 memset(buf, 0, HFIXEDSZ);
 hp = (HEADER *) buf;
 statp->id = res_nrandomid(statp);
 hp->id = htons(statp->id);
 hp->opcode = op;
 hp->rd = (statp->options & RES_RECURSE) != 0U;
 hp->rcode = NOERROR;
 cp = buf + HFIXEDSZ;
 ep = buf + buflen;
 dpp = dnptrs;
 *dpp++ = buf;
 *dpp++ = ((void*)0);
 lastdnptr = dnptrs + nitems(dnptrs);



 switch (op) {
 case 128:
 case 129:
  if (ep - cp < QFIXEDSZ)
   return (-1);
  if ((n = dn_comp(dname, cp, ep - cp - QFIXEDSZ, dnptrs,
      lastdnptr)) < 0)
   return (-1);
  cp += n;
  ns_put16(type, cp);
  cp += INT16SZ;
  ns_put16(class, cp);
  cp += INT16SZ;
  hp->qdcount = htons(1);
  if (op == 128 || data == ((void*)0))
   break;



  if ((ep - cp) < RRFIXEDSZ)
   return (-1);
  n = dn_comp((const char *)data, cp, ep - cp - RRFIXEDSZ,
       dnptrs, lastdnptr);
  if (n < 0)
   return (-1);
  cp += n;
  ns_put16(T_NULL, cp);
  cp += INT16SZ;
  ns_put16(class, cp);
  cp += INT16SZ;
  ns_put32(0, cp);
  cp += INT32SZ;
  ns_put16(0, cp);
  cp += INT16SZ;
  hp->arcount = htons(1);
  break;

 case 130:



  if (ep - cp < 1 + RRFIXEDSZ + datalen)
   return (-1);
  *cp++ = '\0';
  ns_put16(type, cp);
  cp += INT16SZ;
  ns_put16(class, cp);
  cp += INT16SZ;
  ns_put32(0, cp);
  cp += INT32SZ;
  ns_put16(datalen, cp);
  cp += INT16SZ;
  if (datalen) {
   memcpy(cp, data, datalen);
   cp += datalen;
  }
  hp->ancount = htons(1);
  break;

 default:
  return (-1);
 }
 return (cp - buf);
}
