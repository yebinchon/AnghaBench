
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arg_printusage (int ,int ,int *,char*) ;
 int args ;
 int exit (int) ;
 int num_args ;

__attribute__((used)) static void
usage(int status)
{
    arg_printusage(args, num_args, ((void*)0), "master");
    exit(status);
}
