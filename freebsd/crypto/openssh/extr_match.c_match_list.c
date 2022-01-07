
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int MAX_PROP ;
 int SEP ;
 int free (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 char* strsep (char**,int ) ;
 char* xstrdup (char const*) ;

char *
match_list(const char *client, const char *server, u_int *next)
{
 char *sproposals[MAX_PROP];
 char *c, *s, *p, *ret, *cp, *sp;
 int i, j, nproposals;

 c = cp = xstrdup(client);
 s = sp = xstrdup(server);

 for ((p = strsep(&sp, SEP)), i=0; p && *p != '\0';
     (p = strsep(&sp, SEP)), i++) {
  if (i < MAX_PROP)
   sproposals[i] = p;
  else
   break;
 }
 nproposals = i;

 for ((p = strsep(&cp, SEP)), i=0; p && *p != '\0';
     (p = strsep(&cp, SEP)), i++) {
  for (j = 0; j < nproposals; j++) {
   if (strcmp(p, sproposals[j]) == 0) {
    ret = xstrdup(p);
    if (next != ((void*)0))
     *next = (cp == ((void*)0)) ?
         strlen(c) : (u_int)(cp - c);
    free(c);
    free(s);
    return ret;
   }
  }
 }
 if (next != ((void*)0))
  *next = strlen(c);
 free(c);
 free(s);
 return ((void*)0);
}
