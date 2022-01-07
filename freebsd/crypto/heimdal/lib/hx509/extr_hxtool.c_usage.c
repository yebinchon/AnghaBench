
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arg_printusage (int ,int ,int *,char*) ;
 int args ;
 int exit (int) ;
 char* getprogname () ;
 int num_args ;
 int printf (char*,char*) ;

__attribute__((used)) static void
usage(int code)
{
    arg_printusage(args, num_args, ((void*)0), "command");
    printf("Use \"%s help\" to get more help\n", getprogname());
    exit(code);
}
