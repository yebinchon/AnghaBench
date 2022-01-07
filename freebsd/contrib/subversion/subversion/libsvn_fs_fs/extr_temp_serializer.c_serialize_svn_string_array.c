
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_temp_serializer__context_t ;
typedef int svn_string_t ;
typedef int apr_size_t ;


 int serialize_svn_string (int *,int const**) ;
 int svn_temp_serializer__pop (int *) ;
 int svn_temp_serializer__push (int *,void const* const*,int) ;

__attribute__((used)) static void
serialize_svn_string_array(svn_temp_serializer__context_t *context,
                           const svn_string_t ***strings,
                           apr_size_t count)
{
  apr_size_t i;
  const svn_string_t **entries = *strings;


  svn_temp_serializer__push(context,
                            (const void * const *)strings,
                            count * sizeof(const char*));


  for (i = 0; i < count; ++i)
    serialize_svn_string(context, &entries[i]);

  svn_temp_serializer__pop(context);
}
