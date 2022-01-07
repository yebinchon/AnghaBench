
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct passwd {int dummy; } ;


 int fprintf (int ,char*,int ) ;
 struct passwd* getpwuid (scalar_t__) ;
 scalar_t__ getuid () ;
 int sanitise_stdfd () ;
 int sftp_server_main (int,char**,struct passwd*) ;
 int ssh_malloc_init () ;
 int stderr ;

int
main(int argc, char **argv)
{
 struct passwd *user_pw;

 ssh_malloc_init();

 sanitise_stdfd();

 if ((user_pw = getpwuid(getuid())) == ((void*)0)) {
  fprintf(stderr, "No user found for uid %lu\n",
      (u_long)getuid());
  return 1;
 }

 return (sftp_server_main(argc, argv, user_pw));
}
