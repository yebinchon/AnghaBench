
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int s_port; } ;
struct protoent {int * p_name; } ;


 int IPPROTO_ETHERTYPE ;
 int ether_types ;
 int free (char*) ;
 struct protoent* getprotobynumber (int) ;
 struct servent* getservbyname (char*,int *) ;
 scalar_t__ isalnum (char) ;
 scalar_t__ isdigit (char) ;
 int match_token (int ,char*) ;
 int ntohs (int ) ;
 char* safe_calloc (int,int) ;
 int setservent (int) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static int
strtoport(char *s, char **end, int base, int proto)
{
 char *p, *buf;
 char *s1;
 int i;

 *end = s;
 if (*s == '\0')
  return 0;

 if (isdigit(*s))
  return strtol(s, end, base);




 for (s1 = s; *s1 && (isalnum(*s1) || *s1 == '\\' ||
     *s1 == '_' || *s1 == '.') ; s1++)
  if (*s1 == '\\' && s1[1] != '\0')
   s1++;

 buf = safe_calloc(s1 - s + 1, 1);




 for (p = s, i = 0; p != s1 ; p++)
  if (*p != '\\')
   buf[i++] = *p;
 buf[i++] = '\0';

 if (proto == IPPROTO_ETHERTYPE) {
  i = match_token(ether_types, buf);
  free(buf);
  if (i != -1) {
   *end = s1;
   return i;
  }
 } else {
  struct protoent *pe = ((void*)0);
  struct servent *se;

  if (proto != 0)
   pe = getprotobynumber(proto);
  setservent(1);
  se = getservbyname(buf, pe ? pe->p_name : ((void*)0));
  free(buf);
  if (se != ((void*)0)) {
   *end = s1;
   return ntohs(se->s_port);
  }
 }
 return 0;
}
