
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int xo_set_file_h (int *,int *) ;

int
xo_set_file (FILE *fp)
{
    return xo_set_file_h(((void*)0), fp);
}
