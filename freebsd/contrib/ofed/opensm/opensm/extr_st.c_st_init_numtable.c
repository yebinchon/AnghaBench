
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st_table ;


 int * st_init_table (int *) ;
 int type_numhash ;

st_table *st_init_numtable(void)
{
 return st_init_table(&type_numhash);
}
