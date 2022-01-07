
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ggd_export {int dummy; } ;


 int SLIST_EMPTY (int *) ;
 struct ggd_export* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int e_next ;
 int exports ;
 int free (struct ggd_export*) ;

__attribute__((used)) static void
exports_clear(void)
{
 struct ggd_export *ex;

 while (!SLIST_EMPTY(&exports)) {
  ex = SLIST_FIRST(&exports);
  SLIST_REMOVE_HEAD(&exports, e_next);
  free(ex);
 }
}
