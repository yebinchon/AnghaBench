
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
cgetmatch(const char *buf, const char *name)
{
 const char *np, *bp;

 if (name == ((void*)0) || *name == '\0')
  return -1;




 bp = buf;
 for (;;) {



  np = name;
  for (;;)
   if (*np == '\0')
    if (*bp == '|' || *bp == ':' || *bp == '\0')
     return (0);
    else
     break;
   else
    if (*bp++ != *np++)
     break;




  bp--;
  for (;;)
   if (*bp == '\0' || *bp == ':')
    return (-1);
   else
    if (*bp++ == '|')
     break;
 }
}
