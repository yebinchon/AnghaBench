
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ERR_error_string (int ,int *) ;
 int ERR_get_error () ;
 int initialize () ;

char *
get_error_string(void)
{
 initialize();
 return (ERR_error_string(ERR_get_error(), ((void*)0)));
}
