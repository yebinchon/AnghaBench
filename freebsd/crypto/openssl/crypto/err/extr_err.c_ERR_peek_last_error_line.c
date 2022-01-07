
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long get_error_values (int ,int,char const**,int*,int *,int *) ;

unsigned long ERR_peek_last_error_line(const char **file, int *line)
{
    return get_error_values(0, 1, file, line, ((void*)0), ((void*)0));
}
