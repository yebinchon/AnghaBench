
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 int HP_ACC_VBASE_START ;
 struct type* TYPE_PRIMARY_BASE (struct type*) ;
 int builtin_type_int ;
 int error (char*) ;
 int value_as_long (struct value*) ;
 struct value* value_at (int ,scalar_t__,int *) ;
 int virtual_base_index_skip_primaries (struct type*,struct type*) ;
 int virtual_base_list_length_skip_primaries (struct type*) ;

void
find_rt_vbase_offset (struct type *type, struct type *basetype, char *valaddr,
        int offset, int *boffset_p, int *skip_p)
{
  int boffset;
  int index;
  int skip;

  struct value *vp;
  CORE_ADDR vtbl;
  struct type *pbc;





  boffset = 0;
  pbc = TYPE_PRIMARY_BASE (type);
  if (pbc)
    {
      find_rt_vbase_offset (pbc, basetype, valaddr, offset, &boffset, &skip);
      if (skip < 0)
 {
   *boffset_p = boffset;
   *skip_p = -1;
   return;
 }
    }
  else
    skip = 0;




  index = virtual_base_index_skip_primaries (basetype, type);

  if (index < 0)
    {
      *skip_p = skip + virtual_base_list_length_skip_primaries (type);
      *boffset_p = 0;
      return;
    }



  vtbl = *(CORE_ADDR *) (valaddr + offset);


  if (vtbl == 0)
    error ("Couldn't find virtual table -- object may not be constructed yet.");
  vp = value_at (builtin_type_int, vtbl + 4 * (-skip - index - HP_ACC_VBASE_START), ((void*)0));
  boffset = value_as_long (vp);
  *skip_p = -1;
  *boffset_p = boffset;
  return;
}
