
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* version_addendum; } ;


 char* OPENSSL_VERSION_STRING ;
 char* SSH_RELEASE ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 TYPE_1__ options ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 if (options.version_addendum && *options.version_addendum != '\0')
  fprintf(stderr, "%s %s, %s\n",
      SSH_RELEASE,
      options.version_addendum, OPENSSL_VERSION_STRING);
 else
  fprintf(stderr, "%s, %s\n",
      SSH_RELEASE, OPENSSL_VERSION_STRING);
 fprintf(stderr,
"usage: sshd [-46DdeiqTt] [-C connection_spec] [-c host_cert_file]\n"
"            [-E log_file] [-f config_file] [-g login_grace_time]\n"
"            [-h host_key_file] [-o option] [-p port] [-u len]\n"
 );
 exit(1);
}
