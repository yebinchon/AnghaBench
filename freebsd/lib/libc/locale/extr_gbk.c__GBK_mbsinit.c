
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mbstate_t ;
struct TYPE_2__ {scalar_t__ ch; } ;
typedef TYPE_1__ _GBKState ;



__attribute__((used)) static int
_GBK_mbsinit(const mbstate_t *ps)
{

 return (ps == ((void*)0) || ((const _GBKState *)ps)->ch == 0);
}
