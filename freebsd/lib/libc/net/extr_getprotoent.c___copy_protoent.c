
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent {char** p_aliases; char* p_name; int p_proto; } ;


 scalar_t__ ALIGN (char*) ;
 int ERANGE ;
 int errno ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

int
__copy_protoent(struct protoent *pe, struct protoent *pptr, char *buf,
    size_t buflen)
{
 char *cp;
 int i, n;
 int numptr, len;


 numptr = 1;
 len = (char *)ALIGN(buf) - buf;
 for (i = 0; pe->p_aliases[i]; i++, numptr++) {
  len += strlen(pe->p_aliases[i]) + 1;
 }
 len += strlen(pe->p_name) + 1;
 len += numptr * sizeof(char*);

 if (len > (int)buflen) {
  errno = ERANGE;
  return (-1);
 }


 pptr->p_proto = pe->p_proto;

 cp = (char *)ALIGN(buf) + numptr * sizeof(char *);


 n = strlen(pe->p_name) + 1;
 strcpy(cp, pe->p_name);
 pptr->p_name = cp;
 cp += n;


 pptr->p_aliases = (char **)ALIGN(buf);
 for (i = 0 ; pe->p_aliases[i]; i++) {
  n = strlen(pe->p_aliases[i]) + 1;
  strcpy(cp, pe->p_aliases[i]);
  pptr->p_aliases[i] = cp;
  cp += n;
 }
 pptr->p_aliases[i] = ((void*)0);

 return (0);
}
