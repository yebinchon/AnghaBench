
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;


 int kgdb_parse (char*) ;
 int ofs_fix ;

void
kgdb_trgt_new_objfile(struct objfile *objfile)
{
 if (kgdb_parse("((char *)calltrap)[0]") == 0x54)
  ofs_fix = 4;
 else
  ofs_fix = 0;
}
