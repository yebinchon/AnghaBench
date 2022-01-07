
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ERR_error_string (long,int *) ;
 long ERR_get_error () ;
 int abort () ;
 int fprintf (int ,char*,char const*,int,char*) ;
 int stderr ;

void
ssl_err_check(const char *file, int line)
{
 long openssl_error = ERR_get_error();

 if (openssl_error == 0)
  return;

 fprintf(stderr, "\n%s:%d: uncaught OpenSSL error: %s",
     file, line, ERR_error_string(openssl_error, ((void*)0)));
 abort();
}
