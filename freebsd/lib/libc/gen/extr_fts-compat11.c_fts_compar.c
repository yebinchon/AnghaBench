
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* fts_compar ) (void const*,void const*) ;} ;
struct TYPE_3__ {TYPE_2__* fts_fts; } ;
typedef TYPE_1__ FTSENT11 ;
typedef TYPE_2__ FTS11 ;


 int stub1 (void const*,void const*) ;

__attribute__((used)) static int
fts_compar(const void *a, const void *b)
{
 FTS11 *parent;

 parent = (*(const FTSENT11 * const *)a)->fts_fts;
 return (*parent->fts_compar)(a, b);
}
