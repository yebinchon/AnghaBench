
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* error_message ;

char *
dlerror(void)
{
    char *msg = error_message;
    error_message = ((void*)0);
    return msg;
}
