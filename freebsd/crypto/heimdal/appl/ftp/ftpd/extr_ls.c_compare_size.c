
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int st_size; } ;
struct fileinfo {TYPE_1__ st; int * filename; } ;



__attribute__((used)) static int
compare_size(struct fileinfo *a, struct fileinfo *b)
{
    if(a->filename == ((void*)0))
 return 1;
    if(b->filename == ((void*)0))
 return -1;
    return b->st.st_size - a->st.st_size;
}
