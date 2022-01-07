
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_temp_serializer__context_t ;
struct TYPE_3__ {int created_path; int copyroot_path; int copyfrom_path; int data_rep; int prop_rep; } ;
typedef TYPE_1__ svn_fs_x__noderev_t ;


 int serialize_representation (int *,int *) ;
 int svn_temp_serializer__add_string (int *,int *) ;
 int svn_temp_serializer__pop (int *) ;
 int svn_temp_serializer__push (int *,void const* const*,int) ;

__attribute__((used)) static void
noderev_serialize(svn_temp_serializer__context_t *context,
                  svn_fs_x__noderev_t * const *noderev_p)
{
  const svn_fs_x__noderev_t *noderev = *noderev_p;
  if (noderev == ((void*)0))
    return;


  svn_temp_serializer__push(context,
                            (const void * const *)noderev_p,
                            sizeof(*noderev));


  serialize_representation(context, &noderev->prop_rep);
  serialize_representation(context, &noderev->data_rep);

  svn_temp_serializer__add_string(context, &noderev->copyfrom_path);
  svn_temp_serializer__add_string(context, &noderev->copyroot_path);
  svn_temp_serializer__add_string(context, &noderev->created_path);


  svn_temp_serializer__pop(context);
}
