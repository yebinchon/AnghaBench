
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcent {char* r_name; char** r_aliases; int r_number; } ;


 int ERANGE ;
 int assert (int ) ;
 int atoi (char*) ;
 char* strpbrk (char*,char*) ;

__attribute__((used)) static int
rpcent_unpack(char *p, struct rpcent *rpc, char **r_aliases,
 size_t aliases_size, int *errnop)
{
 char *cp, **q;

 assert(p != ((void*)0));

 if (*p == '#')
  return (-1);
 cp = strpbrk(p, "#\n");
 if (cp == ((void*)0))
  return (-1);
 *cp = '\0';
 cp = strpbrk(p, " \t");
 if (cp == ((void*)0))
  return (-1);
 *cp++ = '\0';

 rpc->r_name = p;
 while (*cp == ' ' || *cp == '\t')
  cp++;
 rpc->r_number = atoi(cp);
 q = rpc->r_aliases = r_aliases;
 cp = strpbrk(cp, " \t");
 if (cp != ((void*)0))
  *cp++ = '\0';
 while (cp && *cp) {
  if (*cp == ' ' || *cp == '\t') {
   cp++;
   continue;
  }
  if (q < &(r_aliases[aliases_size - 1]))
   *q++ = cp;
  else {
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
