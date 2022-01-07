
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 extern char *__progname;

 fprintf(stderr,
     "usage: %s [-46aCfpqrv] [-B buffer_size] [-b batchfile] [-c cipher]\n"
     "          [-D sftp_server_path] [-F ssh_config] "
     "[-i identity_file] [-l limit]\n"
     "          [-o ssh_option] [-P port] [-R num_requests] "
     "[-S program]\n"
     "          [-s subsystem | sftp_server] destination\n",
     __progname);
 exit(1);
}
