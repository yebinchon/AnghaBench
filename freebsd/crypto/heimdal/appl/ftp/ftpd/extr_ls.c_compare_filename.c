
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileinfo {int * filename; } ;


 int strcmp (int *,int *) ;

__attribute__((used)) static int
compare_filename(struct fileinfo *a, struct fileinfo *b)
{
    if(a->filename == ((void*)0))
 return 1;
    if(b->filename == ((void*)0))
 return -1;
    return strcmp(a->filename, b->filename);
}
