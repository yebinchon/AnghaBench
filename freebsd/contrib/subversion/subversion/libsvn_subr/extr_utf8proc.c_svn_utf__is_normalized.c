
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ svn_membuf_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_int32_t ;


 int FALSE ;
 int * normalize_cstring (int*,char const*,int const,int,int,TYPE_1__*) ;
 scalar_t__ strcmp (char const*,int ) ;
 int strlen (char const*) ;
 int svn_error_clear (int *) ;
 int svn_membuf__create (TYPE_1__*,int const,int *) ;

svn_boolean_t
svn_utf__is_normalized(const char *string, apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  svn_membuf_t buffer;
  apr_size_t result_length;
  const apr_size_t length = strlen(string);
  svn_membuf__create(&buffer, length * sizeof(apr_int32_t), scratch_pool);
  err = normalize_cstring(&result_length, string, length,
                          FALSE, FALSE, &buffer);
  if (err)
    {
      svn_error_clear(err);
      return FALSE;
    }
  return (length == result_length && 0 == strcmp(string, buffer.data));
}
