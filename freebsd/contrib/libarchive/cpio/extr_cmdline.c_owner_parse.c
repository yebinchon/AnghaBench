
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_uid; int pw_gid; } ;
struct group {int gr_gid; } ;
typedef int errbuff ;


 scalar_t__ errno ;
 int free (char*) ;
 struct group* getgrnam (char const*) ;
 struct passwd* getpwnam (char*) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char const*,int) ;
 int snprintf (char*,int,char*,char const*) ;
 scalar_t__ strtoul (char const*,char**,int) ;

const char *
owner_parse(const char *spec, int *uid, int *gid)
{
 static char errbuff[128];
 const char *u, *ue, *g;

 *uid = -1;
 *gid = -1;

 if (spec[0] == '\0')
  return ("Invalid empty user/group spec");







 if (*spec == ':' || *spec == '.') {

  ue = u = ((void*)0);
  g = spec + 1;
 } else {

  ue = u = spec;
  while (*ue != ':' && *ue != '.' && *ue != '\0')
   ++ue;
  g = ue;
  if (*g != '\0')
   ++g;
 }

 if (u != ((void*)0)) {

  char *user;
  struct passwd *pwent;

  user = (char *)malloc(ue - u + 1);
  if (user == ((void*)0))
   return ("Couldn't allocate memory");
  memcpy(user, u, ue - u);
  user[ue - u] = '\0';
  if ((pwent = getpwnam(user)) != ((void*)0)) {
   *uid = pwent->pw_uid;
   if (*ue != '\0')
    *gid = pwent->pw_gid;
  } else {
   char *end;
   errno = 0;
   *uid = (int)strtoul(user, &end, 10);
   if (errno || *end != '\0') {
    snprintf(errbuff, sizeof(errbuff),
        "Couldn't lookup user ``%s''", user);
    errbuff[sizeof(errbuff) - 1] = '\0';
    free(user);
    return (errbuff);
   }
  }
  free(user);
 }

 if (*g != '\0') {
  struct group *grp;
  if ((grp = getgrnam(g)) != ((void*)0)) {
   *gid = grp->gr_gid;
  } else {
   char *end;
   errno = 0;
   *gid = (int)strtoul(g, &end, 10);
   if (errno || *end != '\0') {
    snprintf(errbuff, sizeof(errbuff),
        "Couldn't lookup group ``%s''", g);
    errbuff[sizeof(errbuff) - 1] = '\0';
    return (errbuff);
   }
  }
 }
 return (((void*)0));
}
