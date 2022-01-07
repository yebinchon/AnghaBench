
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
sftp_server_usage(void)
{
 extern char *__progname;

 fprintf(stderr,
     "usage: %s [-ehR] [-d start_directory] [-f log_facility] "
     "[-l log_level]\n\t[-P blacklisted_requests] "
     "[-p whitelisted_requests] [-u umask]\n"
     "       %s -Q protocol_feature\n",
     __progname, __progname);
 exit(1);
}
