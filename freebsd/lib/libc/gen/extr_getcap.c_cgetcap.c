
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
cgetcap(char *buf, const char *cap, int type)
{
 char *bp;
 const char *cp;

 bp = buf;
 for (;;) {





  for (;;)
   if (*bp == '\0')
    return (((void*)0));
   else
    if (*bp++ == ':')
     break;




  for (cp = cap; *cp == *bp && *bp != '\0'; cp++, bp++)
   continue;
  if (*cp != '\0')
   continue;
  if (*bp == '@')
   return (((void*)0));
  if (type == ':') {
   if (*bp != '\0' && *bp != ':')
    continue;
   return(bp);
  }
  if (*bp != type)
   continue;
  bp++;
  return (*bp == '@' ? ((void*)0) : bp);
 }

}
