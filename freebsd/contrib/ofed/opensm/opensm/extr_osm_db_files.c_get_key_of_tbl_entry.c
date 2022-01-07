
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ st_data_t ;
typedef int cl_list_t ;


 int ST_CONTINUE ;
 int cl_list_insert_tail (int *,void*) ;

__attribute__((used)) static int get_key_of_tbl_entry(st_data_t key, st_data_t val, st_data_t arg)
{
 cl_list_t *p_list = (cl_list_t *) arg;
 cl_list_insert_tail(p_list, (void *)key);
 return ST_CONTINUE;
}
