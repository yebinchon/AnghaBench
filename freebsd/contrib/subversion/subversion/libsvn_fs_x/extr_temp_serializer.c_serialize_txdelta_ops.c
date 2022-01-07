
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_op_t ;
typedef int svn_temp_serializer__context_t ;
typedef int apr_size_t ;


 int svn_temp_serializer__add_leaf (int *,void const* const*,int) ;

__attribute__((used)) static void
serialize_txdelta_ops(svn_temp_serializer__context_t *context,
                      const svn_txdelta_op_t * const * ops,
                      apr_size_t count)
{
  if (*ops == ((void*)0))
    return;


  svn_temp_serializer__add_leaf(context,
                                (const void * const *)ops,
                                count * sizeof(svn_txdelta_op_t));
}
