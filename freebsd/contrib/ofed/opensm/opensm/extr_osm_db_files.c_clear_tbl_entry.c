
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ st_data_t ;


 int ST_DELETE ;
 int free (char*) ;

__attribute__((used)) static int clear_tbl_entry(st_data_t key, st_data_t val, st_data_t arg)
{
 free((char *)key);
 free((char *)val);
 return ST_DELETE;
}
