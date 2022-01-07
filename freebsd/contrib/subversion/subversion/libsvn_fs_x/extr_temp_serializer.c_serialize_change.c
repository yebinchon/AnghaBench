
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_temp_serializer__context_t ;
struct TYPE_4__ {int data; } ;
struct TYPE_5__ {int copyfrom_path; TYPE_1__ path; } ;
typedef TYPE_2__ svn_fs_x__change_t ;


 int svn_temp_serializer__add_string (int *,int *) ;
 int svn_temp_serializer__pop (int *) ;
 int svn_temp_serializer__push (int *,void const* const*,int) ;

__attribute__((used)) static void
serialize_change(svn_temp_serializer__context_t *context,
                 svn_fs_x__change_t * const *change_p)
{
  const svn_fs_x__change_t * change = *change_p;
  if (change == ((void*)0))
    return;


  svn_temp_serializer__push(context,
                            (const void * const *)change_p,
                            sizeof(*change));


  svn_temp_serializer__add_string(context, &change->path.data);
  svn_temp_serializer__add_string(context, &change->copyfrom_path);


  svn_temp_serializer__pop(context);
}
