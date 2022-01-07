
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int * val; } ;
typedef int PA_DATA ;
typedef TYPE_1__ METHOD_DATA ;


 int ENOMEM ;
 int * realloc (int *,int) ;

__attribute__((used)) static int
realloc_method_data(METHOD_DATA *md)
{
    PA_DATA *pa;
    pa = realloc(md->val, (md->len + 1) * sizeof(*md->val));
    if(pa == ((void*)0))
 return ENOMEM;
    md->val = pa;
    md->len++;
    return 0;
}
