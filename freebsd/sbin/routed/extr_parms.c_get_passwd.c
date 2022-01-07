
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef scalar_t__ u_int16_t ;
struct parm {struct auth* parm_auth; } ;
struct auth {scalar_t__ type; int keyid; scalar_t__ end; scalar_t__ start; scalar_t__ key; } ;
typedef int k ;
typedef int buf ;


 scalar_t__ DAY ;
 int MAX_AUTH_KEYS ;
 scalar_t__ RIP_AUTH_MD5 ;
 scalar_t__ RIP_AUTH_NONE ;
 int assert (int ) ;
 int memmove (struct auth*,struct auth*,int) ;
 int memset (struct auth*,int ,int) ;
 scalar_t__ parse_quote (char**,char*,char*,char*,int) ;
 char* parse_ts (scalar_t__*,char**,char*,char*,char*,int) ;
 int sprintf (char*,char*,char*) ;
 int strtoul (char*,char**,int ) ;

__attribute__((used)) static const char *
get_passwd(char *tgt,
    char *val,
    struct parm *parmp,
    u_int16_t type,
    int safe)
{
 static char buf[80];
 char *val0, *p, delim;
 struct auth k, *ap, *ap2;
 int i;
 u_long l;

 assert(val != ((void*)0));
 if (!safe)
  return "ignore unsafe password";

 for (ap = parmp->parm_auth, i = 0;
      ap->type != RIP_AUTH_NONE; i++, ap++) {
  if (i >= MAX_AUTH_KEYS)
   return "too many passwords";
 }

 memset(&k, 0, sizeof(k));
 k.type = type;
 k.end = -1-DAY;

 val0 = val;
 if (0 > parse_quote(&val, "| ,\n\r", &delim,
       (char *)k.key, sizeof(k.key)))
  return tgt;

 if (delim != '|') {
  if (type == RIP_AUTH_MD5)
   return "missing Keyid";
 } else {
  val0 = ++val;
  buf[sizeof(buf)-1] = '\0';
  if (0 > parse_quote(&val, "| ,\n\r", &delim, buf,sizeof(buf))
      || buf[sizeof(buf)-1] != '\0'
      || (l = strtoul(buf,&p,0)) > 255
      || *p != '\0') {
   sprintf(buf,"bad KeyID \"%.20s\"", val0);
   return buf;
  }
  for (ap2 = parmp->parm_auth; ap2 < ap; ap2++) {
   if (ap2->keyid == l) {
    sprintf(buf,"duplicate KeyID \"%.20s\"", val0);
    return buf;
   }
  }
  k.keyid = (int)l;

  if (delim == '|') {
   val0 = ++val;
   if (((void*)0) != (p = parse_ts(&k.start,&val,val0,&delim,
        buf,sizeof(buf))))
    return p;
   if (delim != '|')
    return "missing second timestamp";
   val0 = ++val;
   if (((void*)0) != (p = parse_ts(&k.end,&val,val0,&delim,
        buf,sizeof(buf))))
    return p;
   if ((u_long)k.start > (u_long)k.end) {
    sprintf(buf,"out of order timestamp %.30s",
     val0);
    return buf;
   }
  }
 }
 if (delim != '\0')
  return tgt;

 memmove(ap, &k, sizeof(*ap));
 return 0;
}
