
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fts_pathlen; int * fts_path; } ;
typedef TYPE_1__ FTS ;


 int ENAMETOOLONG ;
 scalar_t__ USHRT_MAX ;
 int errno ;
 int free (int *) ;
 int * reallocf (int *,scalar_t__) ;

__attribute__((used)) static int
fts_palloc(FTS *sp, size_t more)
{

 sp->fts_pathlen += more + 256;





 if (sp->fts_pathlen < 0 || sp->fts_pathlen >= USHRT_MAX) {
  if (sp->fts_path)
   free(sp->fts_path);
  sp->fts_path = ((void*)0);
  errno = ENAMETOOLONG;
  return (1);
 }
 sp->fts_path = reallocf(sp->fts_path, sp->fts_pathlen);
 return (sp->fts_path == ((void*)0));
}
