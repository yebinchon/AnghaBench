
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct getargs {int dummy; } ;


 int arg_printusage (struct getargs*,int,int *,char*) ;
 int exit (int) ;

__attribute__((used)) static void
usage (int ret, struct getargs *a, int num_args)
{
    arg_printusage (a, num_args, ((void*)0), "[principal ...]");
    exit (ret);
}
