
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff {int rentab; int strtab; int reqtab; int current_string; } ;
typedef enum roff_tok { ____Placeholder_roff_tok } roff_tok ;



 int ROFFDEF_UNDEF ;

 int ROFF_RENAMED ;
 int ROFF_USERDEF ;
 int TOKEN_NONE ;
 size_t roff_getname (struct roff*,char**,int,int) ;
 int roff_getstrn (struct roff*,char const*,size_t,int*) ;
 int roff_setstrn (int *,char const*,size_t,char*,int ,int ) ;
 int roffhash_find (int ,char const*,size_t) ;

__attribute__((used)) static enum roff_tok
roff_parse(struct roff *r, char *buf, int *pos, int ln, int ppos)
{
 char *cp;
 const char *mac;
 size_t maclen;
 int deftype;
 enum roff_tok t;

 cp = buf + *pos;

 if ('\0' == *cp || '"' == *cp || '\t' == *cp || ' ' == *cp)
  return TOKEN_NONE;

 mac = cp;
 maclen = roff_getname(r, &cp, ln, ppos);

 deftype = 128 | 129;
 r->current_string = roff_getstrn(r, mac, maclen, &deftype);
 switch (deftype) {
 case 128:
  t = ROFF_USERDEF;
  break;
 case 129:
  t = ROFF_RENAMED;
  break;
 default:
  t = roffhash_find(r->reqtab, mac, maclen);
  break;
 }
 if (t != TOKEN_NONE)
  *pos = cp - buf;
 else if (deftype == ROFFDEF_UNDEF) {

  roff_setstrn(&r->strtab, mac, maclen, "", 0, 0);
  roff_setstrn(&r->rentab, mac, maclen, ((void*)0), 0, 0);
 }
 return t;
}
