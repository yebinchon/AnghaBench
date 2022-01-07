
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** malloc (size_t) ;
 int skipvfs ;
 char* strchr (char*,char) ;
 int warnx (char*) ;

const char **
makevfslist(char *fslist)
{
 const char **av;
 int i;
 char *nextcp;

 if (fslist == ((void*)0))
  return (((void*)0));
 if (fslist[0] == 'n' && fslist[1] == 'o') {
  fslist += 2;
  skipvfs = 1;
 }
 for (i = 0, nextcp = fslist; *nextcp; nextcp++)
  if (*nextcp == ',')
   i++;
 if ((av = malloc((size_t)(i + 2) * sizeof(char *))) == ((void*)0)) {
  warnx("malloc failed");
  return (((void*)0));
 }
 nextcp = fslist;
 i = 0;
 av[i++] = nextcp;
 while ((nextcp = strchr(nextcp, ',')) != ((void*)0)) {
  *nextcp++ = '\0';
  av[i++] = nextcp;
 }
 av[i++] = ((void*)0);
 return (av);
}
