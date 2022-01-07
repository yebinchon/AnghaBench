
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_temp_serializer__context_t ;
typedef int apr_size_t ;


 int svn_temp_serializer__add_string (int *,char const**) ;
 int svn_temp_serializer__pop (int *) ;
 int svn_temp_serializer__push (int *,void const* const*,int) ;

__attribute__((used)) static void
serialize_cstring_array(svn_temp_serializer__context_t *context,
                        const char ***strings,
                        apr_size_t count)
{
  apr_size_t i;
  const char **entries = *strings;


  svn_temp_serializer__push(context,
                            (const void * const *)strings,
                            count * sizeof(const char*));


  for (i = 0; i < count; ++i)
    svn_temp_serializer__add_string(context, &entries[i]);

  svn_temp_serializer__pop(context);
}
