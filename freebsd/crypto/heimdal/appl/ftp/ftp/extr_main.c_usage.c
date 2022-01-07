
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arg_printusage (int ,int ,int *,char*) ;
 int exit (int) ;
 int getargs ;
 int num_args ;

__attribute__((used)) static void
usage(int ecode)
{
    arg_printusage(getargs, num_args, ((void*)0), "[host [port]]");
    exit(ecode);
}
