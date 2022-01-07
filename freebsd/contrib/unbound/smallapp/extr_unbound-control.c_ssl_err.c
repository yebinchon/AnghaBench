
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_print_errors_fp (int ) ;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void ssl_err(const char* s)
{
 fprintf(stderr, "error: %s\n", s);
 ERR_print_errors_fp(stderr);
 exit(1);
}
