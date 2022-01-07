
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netent {char** n_aliases; char* n_name; int n_net; int n_addrtype; } ;


 scalar_t__ ALIGN (char*) ;
 int ERANGE ;
 int errno ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

int
__copy_netent(struct netent *ne, struct netent *nptr, char *buf, size_t buflen)
{
 char *cp;
 int i, n;
 int numptr, len;


 numptr = 1;
 len = (char *)ALIGN(buf) - buf;
 for (i = 0; ne->n_aliases[i]; i++, numptr++) {
  len += strlen(ne->n_aliases[i]) + 1;
 }
 len += strlen(ne->n_name) + 1;
 len += numptr * sizeof(char*);

 if (len > (int)buflen) {
  errno = ERANGE;
  return (-1);
 }


 nptr->n_addrtype = ne->n_addrtype;
 nptr->n_net = ne->n_net;

 cp = (char *)ALIGN(buf) + numptr * sizeof(char *);


 n = strlen(ne->n_name) + 1;
 strcpy(cp, ne->n_name);
 nptr->n_name = cp;
 cp += n;


 nptr->n_aliases = (char **)ALIGN(buf);
 for (i = 0 ; ne->n_aliases[i]; i++) {
  n = strlen(ne->n_aliases[i]) + 1;
  strcpy(cp, ne->n_aliases[i]);
  nptr->n_aliases[i] = cp;
  cp += n;
 }
 nptr->n_aliases[i] = ((void*)0);

 return (0);
}
