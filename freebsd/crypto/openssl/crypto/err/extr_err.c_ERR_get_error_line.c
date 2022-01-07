
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long get_error_values (int,int ,char const**,int*,int *,int *) ;

unsigned long ERR_get_error_line(const char **file, int *line)
{
    return get_error_values(1, 0, file, line, ((void*)0), ((void*)0));
}
