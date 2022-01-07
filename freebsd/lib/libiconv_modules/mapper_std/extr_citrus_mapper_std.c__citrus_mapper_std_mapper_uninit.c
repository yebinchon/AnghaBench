
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_mapper_std {int ms_file; int ms_db; int (* ms_uninit ) (struct _citrus_mapper_std*) ;} ;
struct _citrus_mapper {struct _citrus_mapper_std* cm_closure; } ;


 int _db_close (int ) ;
 int _unmap_file (int *) ;
 int free (struct _citrus_mapper_std*) ;
 int stub1 (struct _citrus_mapper_std*) ;

__attribute__((used)) static void

_citrus_mapper_std_mapper_uninit(struct _citrus_mapper *cm)
{
 struct _citrus_mapper_std *ms;

 ms = cm->cm_closure;
 if (ms->ms_uninit)
  (*ms->ms_uninit)(ms);
 _db_close(ms->ms_db);
 _unmap_file(&ms->ms_file);
 free(ms);
}
