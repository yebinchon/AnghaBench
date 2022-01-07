
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdd {int vdd_type; struct path_table* pathtbl; } ;
struct path_table {int cnt; struct isoent** sorted; struct isoent* first; } ;
struct isoent {int dir_number; struct isoent* ptnext; } ;
struct archive_write {int archive; } ;
typedef int __compar_fn_t ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ENOMEM ;



 int _compare_path_table ;
 int _compare_path_table_joliet ;
 int archive_set_error (int *,int ,char*) ;
 struct isoent** malloc (int) ;
 int qsort (struct isoent**,int,int,int ) ;

__attribute__((used)) static int
isoent_make_path_table_2(struct archive_write *a, struct vdd *vdd,
    int depth, int *dir_number)
{
 struct isoent *np;
 struct isoent **enttbl;
 struct path_table *pt;
 int i;

 pt = &vdd->pathtbl[depth];
 if (pt->cnt == 0) {
  pt->sorted = ((void*)0);
  return (ARCHIVE_OK);
 }
 enttbl = malloc(pt->cnt * sizeof(struct isoent *));
 if (enttbl == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate memory");
  return (ARCHIVE_FATAL);
 }
 pt->sorted = enttbl;
 for (np = pt->first; np != ((void*)0); np = np->ptnext)
  *enttbl ++ = np;
 enttbl = pt->sorted;

 switch (vdd->vdd_type) {
 case 128:
 case 130:




  qsort(enttbl, pt->cnt, sizeof(struct isoent *),
      _compare_path_table);

  break;
 case 129:




  qsort(enttbl, pt->cnt, sizeof(struct isoent *),
      _compare_path_table_joliet);

  break;
 }
 for (i = 0; i < pt->cnt; i++)
  enttbl[i]->dir_number = (*dir_number)++;

 return (ARCHIVE_OK);
}
