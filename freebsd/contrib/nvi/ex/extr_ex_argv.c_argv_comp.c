
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bp; } ;
typedef TYPE_1__ ARGS ;


 int STRCMP (int ,int ) ;

__attribute__((used)) static int
argv_comp(const void *a, const void *b)
{
 return (STRCMP((*(ARGS **)a)->bp, (*(ARGS **)b)->bp));
}
