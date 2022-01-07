
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_temp_serializer__context_t ;
typedef int svn_fs_x__representation_t ;


 int svn_temp_serializer__add_leaf (int *,void const* const*,int) ;

__attribute__((used)) static void
serialize_representation(svn_temp_serializer__context_t *context,
                         svn_fs_x__representation_t * const *representation)
{
  const svn_fs_x__representation_t * rep = *representation;
  if (rep == ((void*)0))
    return;


  svn_temp_serializer__add_leaf(context,
                                (const void * const *)representation,
                                sizeof(*rep));
}
