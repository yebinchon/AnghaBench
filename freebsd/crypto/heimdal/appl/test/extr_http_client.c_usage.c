
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arg_printusage (int ,int ,int *,char*) ;
 int exit (int) ;
 int http_args ;
 int num_http_args ;

__attribute__((used)) static void
usage(int code)
{
    arg_printusage(http_args, num_http_args, ((void*)0), "host [page]");
    exit(code);
}
