
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {char* s_name; char* s_proto; char** s_aliases; int s_port; } ;
typedef int in_port_t ;


 int ERANGE ;
 long USHRT_MAX ;
 int htons (int ) ;
 int memset (struct servent*,int ,int) ;
 char* strpbrk (char*,char*) ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static int
servent_unpack(char *p, struct servent *serv, char **aliases,
    size_t aliases_size, int *errnop)
{
 char *cp, **q, *endp;
 long l;

 if (*p == '#')
  return -1;

 memset(serv, 0, sizeof(struct servent));

 cp = strpbrk(p, "#\n");
 if (cp != ((void*)0))
  *cp = '\0';
 serv->s_name = p;

 p = strpbrk(p, " \t");
 if (p == ((void*)0))
  return -1;
 *p++ = '\0';
 while (*p == ' ' || *p == '\t')
  p++;
 cp = strpbrk(p, ",/");
 if (cp == ((void*)0))
  return -1;

 *cp++ = '\0';
 l = strtol(p, &endp, 10);
 if (endp == p || *endp != '\0' || l < 0 || l > USHRT_MAX)
  return -1;
 serv->s_port = htons((in_port_t)l);
 serv->s_proto = cp;

 q = serv->s_aliases = aliases;
 cp = strpbrk(cp, " \t");
 if (cp != ((void*)0))
  *cp++ = '\0';
 while (cp && *cp) {
  if (*cp == ' ' || *cp == '\t') {
   cp++;
   continue;
  }
  if (q < &aliases[aliases_size - 1]) {
   *q++ = cp;
  } else {
   *q = ((void*)0);
   *errnop = ERANGE;
   return -1;
  }
  cp = strpbrk(cp, " \t");
  if (cp != ((void*)0))
   *cp++ = '\0';
 }
 *q = ((void*)0);

 return 0;
}
