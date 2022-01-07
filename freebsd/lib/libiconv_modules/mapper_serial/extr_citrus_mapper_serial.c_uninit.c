
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct maplink {int ml_mapper; } ;
struct _citrus_mapper_serial {int sr_mappers; } ;


 struct maplink* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int _mapper_close (int ) ;
 int free (struct maplink*) ;
 int ml_entry ;

__attribute__((used)) static void
uninit(struct _citrus_mapper_serial *sr)
{
 struct maplink *ml;

 while ((ml = STAILQ_FIRST(&sr->sr_mappers)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&sr->sr_mappers, ml_entry);
  _mapper_close(ml->ml_mapper);
  free(ml);
 }
}
