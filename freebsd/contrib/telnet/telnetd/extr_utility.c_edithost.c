
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* editedhost ;
 int strncpy (char*,char*,int) ;

void
edithost(char *pat, char *host)
{
 char *res = editedhost;

 if (pat) {
  while (*pat) {
   switch (*pat) {

   case '#':
    if (*host)
     host++;
    break;

   case '@':
    if (*host)
     *res++ = *host++;
    break;

   default:
    *res++ = *pat;
    break;
   }
   if (res == &editedhost[sizeof editedhost - 1]) {
    *res = '\0';
    return;
   }
   pat++;
  }
 }
 if (*host)
  (void) strncpy(res, host,
    sizeof editedhost - (res - editedhost) -1);
 else
  *res = '\0';
 editedhost[sizeof editedhost - 1] = '\0';
}
