
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int logsock; } ;
typedef int int32_t ;





 int errx (int,char*,int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*,unsigned long,char*) ;
 int free (char*) ;
 scalar_t__ krb5_ret_int32 (int ,int*) ;
 int krb5_ret_string (int ,char**) ;
 int krb5_store_int32 (int ,int ) ;
 int logfile ;
 int printf (char*,char*,unsigned long,char*) ;

__attribute__((used)) static int
log_function(void *ptr)
{
    struct client *c = ptr;
    int32_t cmd, line;
    char *file, *string;

    while (1) {
        if (krb5_ret_int32(c->logsock, &cmd))
     goto out;

 switch (cmd) {
 case 128:
     if (krb5_ret_string(c->logsock, &file))
  goto out;
     free(file);
     break;
 case 129:
 case 130:
     if (krb5_ret_string(c->logsock, &file))
  goto out;
     if (krb5_ret_int32(c->logsock, &line))
  goto out;
     if (krb5_ret_string(c->logsock, &string))
  goto out;
     printf("%s:%lu: %s\n",
     file, (unsigned long)line, string);
     fprintf(logfile, "%s:%lu: %s\n",
      file, (unsigned long)line, string);
     fflush(logfile);
     free(file);
     free(string);
     if (krb5_store_int32(c->logsock, 0))
  goto out;
     break;
 default:
     errx(1, "client send bad log command: %d", (int)cmd);
 }
    }
out:

    return 0;
}
