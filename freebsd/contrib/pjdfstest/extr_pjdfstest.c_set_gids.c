
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gid_t ;


 int _SC_NGROUPS_MAX ;
 int assert (int) ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int free (int *) ;
 int isspace (unsigned char) ;
 int * malloc (int) ;
 scalar_t__ setegid (int ) ;
 scalar_t__ setgroups (unsigned int,int *) ;
 int stderr ;
 char* strerror (int ) ;
 char* strtok (char*,char*) ;
 int strtol (char*,char**,int ) ;
 long sysconf (int ) ;

__attribute__((used)) static void
set_gids(char *gids)
{
 gid_t *gidset;
 long ngroups;
 char *g, *endp;
 unsigned i;

 ngroups = sysconf(_SC_NGROUPS_MAX);
 assert(ngroups > 0);
 gidset = malloc(sizeof(*gidset) * ngroups);
 assert(gidset != ((void*)0));
 for (i = 0, g = strtok(gids, ","); g != ((void*)0);
     g = strtok(((void*)0), ","), i++) {
  if ((long)i >= ngroups) {
   fprintf(stderr, "too many gids\n");
   exit(1);
  }
  gidset[i] = strtol(g, &endp, 0);
  if (*endp != '\0' && !isspace((unsigned char)*endp)) {
   fprintf(stderr, "invalid gid '%s' - number expected\n",
       g);
   exit(1);
  }
 }
 if (setgroups(i, gidset) < 0) {
  fprintf(stderr, "cannot change groups: %s\n", strerror(errno));
  exit(1);
 }
 if (setegid(gidset[0]) < 0) {
  fprintf(stderr, "cannot change effective gid: %s\n",
      strerror(errno));
  exit(1);
 }
 free(gidset);
}
