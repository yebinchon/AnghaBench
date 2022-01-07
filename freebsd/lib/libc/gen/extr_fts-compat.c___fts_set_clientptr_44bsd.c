
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* fts_clientptr; } ;
typedef TYPE_1__ FTS ;



void
__fts_set_clientptr_44bsd(FTS *sp, void *clientptr)
{

 sp->fts_clientptr = clientptr;
}
