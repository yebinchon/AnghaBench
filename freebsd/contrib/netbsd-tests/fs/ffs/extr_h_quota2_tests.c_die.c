
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ background ;
 int exit (int) ;
 int rump_daemonize_done (int) ;
 int strerror (int) ;
 int warnx (char*,char const*,int ) ;

__attribute__((used)) static void
die(const char *reason, int error)
{

 warnx("%s: %s", reason, strerror(error));
 if (background)
  rump_daemonize_done(error);
 exit(1);
}
