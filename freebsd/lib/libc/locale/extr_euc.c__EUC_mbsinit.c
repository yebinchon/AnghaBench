
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mbstate_t ;
struct TYPE_2__ {scalar_t__ want; } ;
typedef TYPE_1__ _EucState ;



__attribute__((used)) static int
_EUC_mbsinit(const mbstate_t *ps)
{

 return (ps == ((void*)0) || ((const _EucState *)ps)->want == 0);
}
