
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fgetstr (char*,int,int) ;
 int free (char*) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 int strlen (char*) ;

__attribute__((used)) static int
help_getnext(int fd, char **topic, char **subtopic, char **desc)
{
 char line[81], *cp, *ep;


 *topic = *subtopic = *desc = ((void*)0);
 for (;;) {
  if (fgetstr(line, 80, fd) < 0)
   return (0);

  if (strlen(line) < 3 || line[0] != '#' || line[1] != ' ')
   continue;

  cp = line + 2;
  while (cp != ((void*)0) && *cp != 0) {
   ep = strchr(cp, ' ');
   if (*cp == 'T' && *topic == ((void*)0)) {
    if (ep != ((void*)0))
     *ep++ = 0;
    *topic = strdup(cp + 1);
   } else if (*cp == 'S' && *subtopic == ((void*)0)) {
    if (ep != ((void*)0))
     *ep++ = 0;
    *subtopic = strdup(cp + 1);
   } else if (*cp == 'D') {
    *desc = strdup(cp + 1);
    ep = ((void*)0);
   }
   cp = ep;
  }
  if (*topic == ((void*)0)) {
   free(*subtopic);
   free(*desc);
   *subtopic = *desc = ((void*)0);
   continue;
  }
  return (1);
 }
}
