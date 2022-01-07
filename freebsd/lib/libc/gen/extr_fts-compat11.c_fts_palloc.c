
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t fts_pathlen; int * fts_path; } ;
typedef TYPE_1__ FTS11 ;


 int * reallocf (int *,size_t) ;

__attribute__((used)) static int
fts_palloc(FTS11 *sp, size_t more)
{

 sp->fts_pathlen += more + 256;
 sp->fts_path = reallocf(sp->fts_path, sp->fts_pathlen);
 return (sp->fts_path == ((void*)0));
}
