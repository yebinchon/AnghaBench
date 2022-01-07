
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {char** h_addr_list; int h_length; char** h_aliases; char* h_name; int h_addrtype; } ;


 scalar_t__ ALIGN (char*) ;
 int ERANGE ;
 int errno ;
 int memcpy (char*,char*,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

int
__copy_hostent(struct hostent *he, struct hostent *hptr, char *buf,
    size_t buflen)
{
 char *cp;
 char **ptr;
 int i, n;
 int nptr, len;


 nptr = 2;
 len = (char *)ALIGN(buf) - buf;
 for (i = 0; he->h_addr_list[i]; i++, nptr++) {
  len += he->h_length;
 }
 for (i = 0; he->h_aliases[i]; i++, nptr++) {
  len += strlen(he->h_aliases[i]) + 1;
 }
 len += strlen(he->h_name) + 1;
 len += nptr * sizeof(char*);

 if (len > buflen) {
  errno = ERANGE;
  return (-1);
 }


 hptr->h_addrtype = he->h_addrtype;
 n = hptr->h_length = he->h_length;

 ptr = (char **)ALIGN(buf);
 cp = (char *)ALIGN(buf) + nptr * sizeof(char *);


 hptr->h_addr_list = ptr;
 for (i = 0; he->h_addr_list[i]; i++ , ptr++) {
  memcpy(cp, he->h_addr_list[i], n);
  hptr->h_addr_list[i] = cp;
  cp += n;
 }
 hptr->h_addr_list[i] = ((void*)0);
 ptr++;


 n = strlen(he->h_name) + 1;
 strcpy(cp, he->h_name);
 hptr->h_name = cp;
 cp += n;


 hptr->h_aliases = ptr;
 for (i = 0 ; he->h_aliases[i]; i++) {
  n = strlen(he->h_aliases[i]) + 1;
  strcpy(cp, he->h_aliases[i]);
  hptr->h_aliases[i] = cp;
  cp += n;
 }
 hptr->h_aliases[i] = ((void*)0);

 return (0);
}
