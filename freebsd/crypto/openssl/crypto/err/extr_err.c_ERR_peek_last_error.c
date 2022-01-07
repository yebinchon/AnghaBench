
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long get_error_values (int ,int,int *,int *,int *,int *) ;

unsigned long ERR_peek_last_error(void)
{
    return get_error_values(0, 1, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
}
