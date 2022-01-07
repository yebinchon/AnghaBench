
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct src_head {int dummy; } ;
struct src_entry {struct src_entry* se_name; int se_df; } ;


 struct src_entry* STAILQ_FIRST (struct src_head*) ;
 int STAILQ_REMOVE_HEAD (struct src_head*,int ) ;
 int _db_factory_free (int ) ;
 int free (struct src_entry*) ;
 int se_entry ;

__attribute__((used)) static void
free_src(struct src_head *sh)
{
 struct src_entry *se;

 while ((se = STAILQ_FIRST(sh)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(sh, se_entry);
  _db_factory_free(se->se_df);
  free(se->se_name);
  free(se);
 }
}
