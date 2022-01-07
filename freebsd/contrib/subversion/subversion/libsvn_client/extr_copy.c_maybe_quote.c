
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int apr_status_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT_NO_RETURN (int) ;
 char const* apr_pstrdup (int *,char const*) ;
 int apr_tokenize_to_argv (char const*,char***,int *) ;
 scalar_t__ strcmp (char*,char const*) ;
 int svn_stringbuf_appendbyte (TYPE_1__*,char const) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;

__attribute__((used)) static const char *
maybe_quote(const char *value,
            apr_pool_t *result_pool)
{
  apr_status_t status;
  char **argv;

  status = apr_tokenize_to_argv(value, &argv, result_pool);

  if (!status && argv[0] && !argv[1] && strcmp(argv[0], value) == 0)
    return apr_pstrdup(result_pool, value);

  {
    svn_stringbuf_t *sb = svn_stringbuf_create_empty(result_pool);
    const char *c;

    svn_stringbuf_appendbyte(sb, '\"');

    for (c = value; *c; c++)
      {
        if (*c == '\\' || *c == '\"' || *c == '\'')
          svn_stringbuf_appendbyte(sb, '\\');

        svn_stringbuf_appendbyte(sb, *c);
      }

    svn_stringbuf_appendbyte(sb, '\"');
    return sb->data;
  }
}
