
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtdmap {int dummy; } ;


 int drhd_num ;
 int vtd_translation_disable (struct vtdmap*) ;
 struct vtdmap** vtdmaps ;

__attribute__((used)) static void
vtd_disable(void)
{
 int i;
 struct vtdmap *vtdmap;

 for (i = 0; i < drhd_num; i++) {
  vtdmap = vtdmaps[i];
  vtd_translation_disable(vtdmap);
 }
}
