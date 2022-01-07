
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_OK ;
 int EX_OSERR ;
 int EX_USAGE ;
 int STDIN_FILENO ;
 char* get_username () ;
 char* ptsname (int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int ulog_login (char const*,char const*,char const*) ;
 int ulog_logout (char const*) ;

int
main(int argc, char *argv[])
{
 const char *line, *user, *host;


 if ((line = ptsname(STDIN_FILENO)) == ((void*)0))
  return (EX_USAGE);

 if ((argc == 2 || argc == 3) && strcmp(argv[1], "login") == 0) {

  user = get_username();
  if (user == ((void*)0))
   return (EX_OSERR);


  host = argc == 3 ? argv[2] : ((void*)0);

  ulog_login(line, user, host);
  return (EX_OK);
 } else if (argc == 2 && strcmp(argv[1], "logout") == 0) {
  ulog_logout(line);
  return (EX_OK);
 }

 return (EX_USAGE);
}
