
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ strcmp (char const*,char const*) ;
 TYPE_1__* svn_string_create (char const*,int *) ;
 int svn_utf_cstring_to_utf8 (char const**,char*,int *) ;
 int svn_utf_cstring_to_utf8_ex2 (char const**,char*,char const*,int *) ;
 int translate_cstring (char const**,int*,char const*,char*,int,int *,int ,int *) ;

svn_error_t *
svn_subst_translate_string2(svn_string_t **new_value,
                            svn_boolean_t *translated_to_utf8,
                            svn_boolean_t *translated_line_endings,
                            const svn_string_t *value,
                            const char *encoding,
                            svn_boolean_t repair,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  const char *val_utf8;
  const char *val_utf8_lf;

  if (value == ((void*)0))
    {
      *new_value = ((void*)0);
      return SVN_NO_ERROR;
    }

  if (encoding && !strcmp(encoding, "UTF-8"))
    {
      val_utf8 = value->data;
    }
  else if (encoding)
    {
      SVN_ERR(svn_utf_cstring_to_utf8_ex2(&val_utf8, value->data,
                                          encoding, scratch_pool));
    }
  else
    {
      SVN_ERR(svn_utf_cstring_to_utf8(&val_utf8, value->data, scratch_pool));
    }

  if (translated_to_utf8)
    *translated_to_utf8 = (strcmp(value->data, val_utf8) != 0);

  SVN_ERR(translate_cstring(&val_utf8_lf,
                            translated_line_endings,
                            val_utf8,
                            "\n",
                            repair,
                            ((void*)0),
                            FALSE,
                            scratch_pool));

  *new_value = svn_string_create(val_utf8_lf, result_pool);
  return SVN_NO_ERROR;
}
