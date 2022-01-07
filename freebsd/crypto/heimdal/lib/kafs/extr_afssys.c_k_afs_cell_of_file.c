
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ViceIoctl {char* out; int out_size; scalar_t__ in_size; int * in; } ;


 int VIOC_FILE_CELL_NAME ;
 int k_pioctl (int ,int ,struct ViceIoctl*,int) ;
 int rk_UNCONST (char const*) ;

int
k_afs_cell_of_file(const char *path, char *cell, int len)
{
    struct ViceIoctl parms;
    parms.in = ((void*)0);
    parms.in_size = 0;
    parms.out = cell;
    parms.out_size = len;
    return k_pioctl(rk_UNCONST(path), VIOC_FILE_CELL_NAME, &parms, 1);
}
