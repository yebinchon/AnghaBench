
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int userbuf ;
struct stat {int st_mode; } ;
typedef int buf ;
typedef int FILE ;


 int O_NONBLOCK ;
 int O_RDONLY ;
 int RBUFLN ;
 int S_ISREG (int ) ;
 int auth_debug_add (char*,char const*) ;
 int close (int) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 scalar_t__ fgets (char*,int,int *) ;
 int fstat (int,struct stat*) ;
 int innetgr (char*,char const*,char const*,int *) ;
 int logit (char*,char const*,char const*) ;
 int open (char const*,int) ;
 int sscanf (char*,char*,char*,char*,char*) ;
 scalar_t__ strcasecmp (char*,char const*) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlcpy (char*,char const*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int unset_nonblock (int) ;

__attribute__((used)) static int
check_rhosts_file(const char *filename, const char *hostname,
    const char *ipaddr, const char *client_user,
    const char *server_user)
{
 FILE *f;

 char buf[1024];
 int fd;
 struct stat st;


 if ((fd = open(filename, O_RDONLY|O_NONBLOCK)) == -1)
  return 0;
 if (fstat(fd, &st) == -1) {
  close(fd);
  return 0;
 }
 if (!S_ISREG(st.st_mode)) {
  logit("User %s hosts file %s is not a regular file",
      server_user, filename);
  close(fd);
  return 0;
 }
 unset_nonblock(fd);
 if ((f = fdopen(fd, "r")) == ((void*)0)) {
  close(fd);
  return 0;
 }
 while (fgets(buf, sizeof(buf), f)) {

  char hostbuf[1024], userbuf[1024], dummy[1024];
  char *host, *user, *cp;
  int negated;

  for (cp = buf; *cp == ' ' || *cp == '\t'; cp++)
   ;
  if (*cp == '#' || *cp == '\n' || !*cp)
   continue;





  if (strncmp(cp, "NO_PLUS", 7) == 0)
   continue;





  switch (sscanf(buf, "%1023s %1023s %1023s", hostbuf, userbuf,
      dummy)) {
  case 0:
   auth_debug_add("Found empty line in %.100s.", filename);
   continue;
  case 1:

   strlcpy(userbuf, server_user, sizeof(userbuf));
   break;
  case 2:

   break;
  case 3:
   auth_debug_add("Found garbage in %.100s.", filename);
   continue;
  default:

   continue;
  }

  host = hostbuf;
  user = userbuf;
  negated = 0;


  if (host[0] == '-') {
   negated = 1;
   host++;
  } else if (host[0] == '+')
   host++;

  if (user[0] == '-') {
   negated = 1;
   user++;
  } else if (user[0] == '+')
   user++;


  if (!host[0] || !user[0]) {

   auth_debug_add("Ignoring wild host/user names "
       "in %.100s.", filename);
   continue;
  }

  if (host[0] == '@') {
   if (!innetgr(host + 1, hostname, ((void*)0), ((void*)0)) &&
       !innetgr(host + 1, ipaddr, ((void*)0), ((void*)0)))
    continue;
  } else if (strcasecmp(host, hostname) &&
      strcmp(host, ipaddr) != 0)
   continue;


  if (user[0] == '@') {
   if (!innetgr(user + 1, ((void*)0), client_user, ((void*)0)))
    continue;
  } else if (strcmp(user, client_user) != 0)
   continue;


  fclose(f);


  if (negated) {
   auth_debug_add("Matched negative entry in %.100s.",
       filename);
   return 0;
  }

  return 1;
 }


 fclose(f);
 return 0;
}
