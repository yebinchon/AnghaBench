
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent_data {char** aliases; int * fp; int line; } ;
struct protoent {char* p_name; long p_proto; char** p_aliases; } ;


 long USHRT_MAX ;
 int _MAXALIASES ;
 int _PATH_PROTOCOLS ;
 char* fgets (int ,int,int *) ;
 int * fopen (int ,char*) ;
 char* strpbrk (char*,char*) ;
 long strtol (char*,char**,int) ;

int
__getprotoent_p(struct protoent *pe, struct protoent_data *ped)
{
 char *p;
 char *cp, **q, *endp;
 long l;

 if (ped->fp == ((void*)0) && (ped->fp = fopen(_PATH_PROTOCOLS, "re")) == ((void*)0))
  return (-1);
again:
 if ((p = fgets(ped->line, sizeof ped->line, ped->fp)) == ((void*)0))
  return (-1);
 if (*p == '#')
  goto again;
 cp = strpbrk(p, "#\n");
 if (cp != ((void*)0))
  *cp = '\0';
 pe->p_name = p;
 cp = strpbrk(p, " \t");
 if (cp == ((void*)0))
  goto again;
 *cp++ = '\0';
 while (*cp == ' ' || *cp == '\t')
  cp++;
 p = strpbrk(cp, " \t");
 if (p != ((void*)0))
  *p++ = '\0';
 l = strtol(cp, &endp, 10);
 if (endp == cp || *endp != '\0' || l < 0 || l > USHRT_MAX)
  goto again;
 pe->p_proto = l;
 q = pe->p_aliases = ped->aliases;
 if (p != ((void*)0)) {
  cp = p;
  while (cp && *cp) {
   if (*cp == ' ' || *cp == '\t') {
    cp++;
    continue;
   }
   if (q < &ped->aliases[_MAXALIASES - 1])
    *q++ = cp;
   cp = strpbrk(cp, " \t");
   if (cp != ((void*)0))
    *cp++ = '\0';
  }
 }
 *q = ((void*)0);
 return (0);
}
