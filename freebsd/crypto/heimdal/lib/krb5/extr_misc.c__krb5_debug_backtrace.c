
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stack ;
typedef int krb5_context ;


 int _krb5_debug (int ,int,char*,int,char*) ;
 int backtrace (void**,int) ;
 char** backtrace_symbols (void**,int) ;
 int free (char**) ;

void
_krb5_debug_backtrace(krb5_context context)
{
}
