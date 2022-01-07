
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * error_message ;
 char* xstrdup (int *) ;

__attribute__((used)) static char *
errmsg_save(void)
{
    return error_message == ((void*)0) ? ((void*)0) : xstrdup(error_message);
}
