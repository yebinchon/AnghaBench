
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_temp_serializer__context_t ;
typedef int svn_fs_id_t ;
typedef int fs_fs__id_t ;


 int svn_temp_serializer__add_leaf (int *,void const* const*,int) ;

void
svn_fs_fs__id_serialize(svn_temp_serializer__context_t *context,
                        const svn_fs_id_t * const *in)
{
  const fs_fs__id_t *id = (const fs_fs__id_t *)*in;


  if (id == ((void*)0))
    return;




  svn_temp_serializer__add_leaf(context,
                                (const void * const *)in,
                                sizeof(fs_fs__id_t));
}
