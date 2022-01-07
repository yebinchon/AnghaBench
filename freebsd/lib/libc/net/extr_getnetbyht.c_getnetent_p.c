
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netent_data {char* netbuf; char** net_aliases; int * netf; } ;
struct netent {char* n_name; char** n_aliases; int n_addrtype; int n_net; } ;


 int AF_INET ;
 int BUFSIZ ;
 int NO_RECOVERY ;
 int RES_SET_H_ERRNO (int ,int ) ;
 int _MAXALIASES ;
 int _PATH_NETWORKS ;
 int __res_state () ;
 char* fgets (char*,int,int *) ;
 int * fopen (int ,char*) ;
 int inet_network (char*) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 char* strpbrk (char*,char*) ;

__attribute__((used)) static int
getnetent_p(struct netent *ne, struct netent_data *ned)
{
 char *p, *bp, *ep;
 char *cp, **q;
 int len;
 char line[BUFSIZ + 1];

 if (ned->netf == ((void*)0) &&
     (ned->netf = fopen(_PATH_NETWORKS, "re")) == ((void*)0))
  return (-1);
again:
 p = fgets(line, sizeof line, ned->netf);
 if (p == ((void*)0))
  return (-1);
 if (*p == '#')
  goto again;
 cp = strpbrk(p, "#\n");
 if (cp != ((void*)0))
  *cp = '\0';
 bp = ned->netbuf;
 ep = ned->netbuf + sizeof ned->netbuf;
 ne->n_name = bp;
 cp = strpbrk(p, " \t");
 if (cp == ((void*)0))
  goto again;
 *cp++ = '\0';
 len = strlen(p) + 1;
 if (ep - bp < len) {
  RES_SET_H_ERRNO(__res_state(), NO_RECOVERY);
  return (-1);
 }
 strlcpy(bp, p, ep - bp);
 bp += len;
 while (*cp == ' ' || *cp == '\t')
  cp++;
 p = strpbrk(cp, " \t");
 if (p != ((void*)0))
  *p++ = '\0';
 ne->n_net = inet_network(cp);
 ne->n_addrtype = AF_INET;
 q = ne->n_aliases = ned->net_aliases;
 if (p != ((void*)0)) {
  cp = p;
  while (cp && *cp) {
   if (*cp == ' ' || *cp == '\t') {
    cp++;
    continue;
   }
   if (q >= &ned->net_aliases[_MAXALIASES - 1])
    break;
   p = strpbrk(cp, " \t");
   if (p != ((void*)0))
    *p++ = '\0';
   len = strlen(cp) + 1;
   if (ep - bp < len)
    break;
   strlcpy(bp, cp, ep - bp);
   *q++ = bp;
   bp += len;
   cp = p;
  }
 }
 *q = ((void*)0);
 return (0);
}
