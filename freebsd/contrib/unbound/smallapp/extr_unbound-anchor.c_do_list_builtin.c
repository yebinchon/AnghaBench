
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 char* get_builtin_cert () ;
 char* get_builtin_ds () ;
 int printf (char*,char const*) ;

__attribute__((used)) static void
do_list_builtin(void)
{
 const char* builtin_cert = get_builtin_cert();
 const char* builtin_ds = get_builtin_ds();
 printf("%s\n", builtin_ds);
 printf("%s\n", builtin_cert);
 exit(0);
}
