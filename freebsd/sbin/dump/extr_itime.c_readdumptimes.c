
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dumptime {int dt_value; } ;
struct dumpdates {int dummy; } ;
typedef int FILE ;


 struct dumptime* SLIST_FIRST (int *) ;
 int SLIST_INSERT_HEAD (int *,struct dumptime*,int ) ;
 struct dumptime* SLIST_NEXT (struct dumptime*,int ) ;
 int ** calloc (unsigned int,int) ;
 int ** ddatev ;
 int dt_list ;
 int dthead ;
 int free (struct dumptime*) ;
 scalar_t__ getrecord (int *,int *) ;
 int nddates ;

__attribute__((used)) static void
readdumptimes(FILE *df)
{
 int i;
 struct dumptime *dtwalk;

 for (;;) {
  dtwalk = (struct dumptime *)calloc(1, sizeof (struct dumptime));
  if (getrecord(df, &(dtwalk->dt_value)) < 0) {
   free(dtwalk);
   break;
  }
  nddates++;
  SLIST_INSERT_HEAD(&dthead, dtwalk, dt_list);
 }





 ddatev = calloc((unsigned) (nddates + 1), sizeof (struct dumpdates *));
 dtwalk = SLIST_FIRST(&dthead);
 for (i = nddates - 1; i >= 0; i--, dtwalk = SLIST_NEXT(dtwalk, dt_list))
  ddatev[i] = &dtwalk->dt_value;
}
