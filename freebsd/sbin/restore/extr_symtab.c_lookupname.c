
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {int e_name; struct entry* e_sibling; struct entry* e_entries; } ;
typedef int buf ;


 int MAXPATHLEN ;
 int UFS_ROOTINO ;
 struct entry* lookupino (int ) ;
 scalar_t__ strcmp (int ,char*) ;

struct entry *
lookupname(char *name)
{
 struct entry *ep;
 char *np, *cp;
 char buf[MAXPATHLEN];

 cp = name;
 for (ep = lookupino(UFS_ROOTINO); ep != ((void*)0); ep = ep->e_entries) {
  for (np = buf; *cp != '/' && *cp != '\0' &&
    np < &buf[sizeof(buf)]; )
   *np++ = *cp++;
  if (np == &buf[sizeof(buf)])
   break;
  *np = '\0';
  for ( ; ep != ((void*)0); ep = ep->e_sibling)
   if (strcmp(ep->e_name, buf) == 0)
    break;
  if (ep == ((void*)0))
   break;
  if (*cp++ == '\0')
   return (ep);
 }
 return (((void*)0));
}
