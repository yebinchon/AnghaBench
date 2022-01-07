
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct getarg_strings {int num_strings; char** strings; } ;


 char** ecalloc (int,int) ;
 int free (char**) ;
 int permute (char****,size_t*,char**,int ,int) ;

char ***
permutate_all(struct getarg_strings *strings, size_t *size)
{
    char **list, ***all = ((void*)0);
    int i;

    *size = 0;

    list = ecalloc(strings->num_strings, sizeof(*list));
    for (i = 0; i < strings->num_strings; i++)
 list[i] = strings->strings[i];

    permute(&all, size, list, 0, strings->num_strings);
    free(list);
    return all;
}
