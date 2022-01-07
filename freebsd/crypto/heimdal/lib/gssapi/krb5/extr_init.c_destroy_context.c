
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * krb5_context ;


 int krb5_free_context (int *) ;

__attribute__((used)) static void
destroy_context(void *ptr)
{
    krb5_context context = ptr;

    if (context == ((void*)0))
 return;
    krb5_free_context(context);
}
