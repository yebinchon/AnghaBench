
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void svn_fs_id_t ;
struct TYPE_3__ {TYPE_2__* fsap_data; int * vtable; } ;
struct TYPE_4__ {TYPE_1__ generic_id; } ;
typedef TYPE_2__ fs_fs__id_t ;


 int id_vtable ;
 int svn_temp_deserializer__resolve (void*,void**) ;

void
svn_fs_fs__id_deserialize(void *buffer, svn_fs_id_t **in_out)
{
  fs_fs__id_t *id;



  if (*in_out != buffer)
    svn_temp_deserializer__resolve(buffer, (void**)in_out);

  id = (fs_fs__id_t *)*in_out;


  if (id == ((void*)0))
    return;


  id->generic_id.vtable = &id_vtable;
  id->generic_id.fsap_data = id;
}
