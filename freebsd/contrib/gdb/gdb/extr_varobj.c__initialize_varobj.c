
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlist {int dummy; } ;


 int VAROBJ_TABLE_SIZE ;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int class_maintenance ;
 int memset (int ,int ,int) ;
 int setlist ;
 int showlist ;
 int var_zinteger ;
 int varobj_table ;
 int varobjdebug ;
 int xmalloc (int) ;

void
_initialize_varobj (void)
{
  int sizeof_table = sizeof (struct vlist *) * VAROBJ_TABLE_SIZE;

  varobj_table = xmalloc (sizeof_table);
  memset (varobj_table, 0, sizeof_table);

  add_show_from_set (add_set_cmd ("debugvarobj", class_maintenance, var_zinteger, (char *) &varobjdebug, "Set varobj debugging.\nWhen non-zero, varobj debugging is enabled.", &setlist),

       &showlist);
}
