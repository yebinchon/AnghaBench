
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_temp_serializer__context_t ;
struct TYPE_3__ {scalar_t__ len; int data; } ;
typedef TYPE_1__ svn_string_t ;


 int svn_temp_serializer__add_leaf (int *,void const* const*,scalar_t__) ;
 int svn_temp_serializer__pop (int *) ;
 int svn_temp_serializer__push (int *,void const* const*,int) ;

__attribute__((used)) static void
serialize_svn_string(svn_temp_serializer__context_t *context,
                     const svn_string_t * const *s)
{
  const svn_string_t *string = *s;


  if (string == ((void*)0))
    return;

  svn_temp_serializer__push(context,
                            (const void * const *)s,
                            sizeof(*string));



  svn_temp_serializer__add_leaf(context,
                                (const void * const *)&string->data,
                                string->len + 1);


  svn_temp_serializer__pop(context);
}
