
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
pcap_strtok_r(char *s, const char *delim, char **last)
{
 char *spanp, *tok;
 int c, sc;

 if (s == ((void*)0) && (s = *last) == ((void*)0))
  return (((void*)0));




cont:
 c = *s++;
 for (spanp = (char *)delim; (sc = *spanp++) != 0;) {
  if (c == sc)
   goto cont;
 }

 if (c == 0) {
  *last = ((void*)0);
  return (((void*)0));
 }
 tok = s - 1;





 for (;;) {
  c = *s++;
  spanp = (char *)delim;
  do {
   if ((sc = *spanp++) == c) {
    if (c == 0)
     s = ((void*)0);
    else
     s[-1] = '\0';
    *last = s;
    return (tok);
   }
  } while (sc != 0);
 }

}
