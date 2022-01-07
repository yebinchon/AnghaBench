
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct group {scalar_t__ gr_gid; char** gr_mem; } ;
struct TYPE_2__ {scalar_t__ pw_gid; } ;
typedef int FILE ;


 int errno ;
 int fatalerror (char*) ;
 int fclose (int *) ;
 char* fgetln (int *,size_t*) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 struct group* getgrnam (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char*,size_t) ;
 TYPE_1__* pw ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 int strspn (char*,char*) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static int
checkuser(char *fname, char *name, int pwset, char **residue, int *ecode)
{
 FILE *fd;
 int found = 0;
 size_t len;
 char *line, *mp, *p;

 if (ecode != ((void*)0))
  *ecode = 0;
 if ((fd = fopen(fname, "r")) != ((void*)0)) {
  while (!found && (line = fgetln(fd, &len)) != ((void*)0)) {

   if (line[0] == '#')
    continue;
   if (line[len - 1] == '\n') {
    line[len - 1] = '\0';
    mp = ((void*)0);
   } else {
    if ((mp = malloc(len + 1)) == ((void*)0))
     fatalerror("Ran out of memory.");
    memcpy(mp, line, len);
    mp[len] = '\0';
    line = mp;
   }

   p = strtok(line, " \t");

   if (p == ((void*)0))
    goto nextline;



   if (p[0] == '@') {
    int i = 0;
    struct group *grp;

    if (p[1] == '\0')
     found = 1;
    else {
     if ((grp = getgrnam(p+1)) == ((void*)0))
      goto nextline;



     if (pwset && grp->gr_gid == pw->pw_gid)
      found = 1;



     while (!found && grp->gr_mem[i])
      found = strcmp(name,
       grp->gr_mem[i++])
       == 0;
    }
   }



   else
    found = strcmp(p, name) == 0;



   if (found && residue) {
    if ((p = strtok(((void*)0), "")) != ((void*)0))
     p += strspn(p, " \t");
    if (p && *p) {
      if ((*residue = strdup(p)) == ((void*)0))
      fatalerror("Ran out of memory.");
    } else
     *residue = ((void*)0);
   }
nextline:
   if (mp)
    free(mp);
  }
  (void) fclose(fd);
 } else if (ecode != ((void*)0))
  *ecode = errno;
 return (found);
}
