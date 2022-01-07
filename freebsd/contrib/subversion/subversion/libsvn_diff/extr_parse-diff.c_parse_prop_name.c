
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int strlen (char const*) ;
 scalar_t__ svn_prop_name_is_valid (char const*) ;
 TYPE_1__* svn_stringbuf_create (char const*,int *) ;
 int svn_stringbuf_strip_whitespace (TYPE_1__*) ;
 int svn_utf_cstring_to_utf8 (char const**,char const*,int *) ;

__attribute__((used)) static svn_error_t *
parse_prop_name(const char **prop_name, const char *header,
                const char *indicator, apr_pool_t *result_pool)
{
  SVN_ERR(svn_utf_cstring_to_utf8(prop_name,
                                  header + strlen(indicator),
                                  result_pool));
  if (**prop_name == '\0')
    *prop_name = ((void*)0);
  else if (! svn_prop_name_is_valid(*prop_name))
    {
      svn_stringbuf_t *buf = svn_stringbuf_create(*prop_name, result_pool);
      svn_stringbuf_strip_whitespace(buf);
      *prop_name = (svn_prop_name_is_valid(buf->data) ? buf->data : ((void*)0));
    }

  return SVN_NO_ERROR;
}
