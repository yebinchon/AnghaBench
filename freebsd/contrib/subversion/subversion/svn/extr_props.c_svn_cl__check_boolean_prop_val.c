
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_BAD_PROPERTY_VALUE ;
 int _ (char*) ;
 int stderr ;
 scalar_t__ svn_cstring_casecmp (char*,char*) ;
 int svn_error_clear (int *) ;
 int * svn_error_createf (int ,int *,int ,char const*,char const*) ;
 int svn_handle_warning2 (int ,int *,char*) ;
 int svn_prop_is_boolean (char const*) ;
 TYPE_1__* svn_stringbuf_create (char const*,int *) ;
 int svn_stringbuf_strip_whitespace (TYPE_1__*) ;

void
svn_cl__check_boolean_prop_val(const char *propname, const char *propval,
                               apr_pool_t *pool)
{
  svn_stringbuf_t *propbuf;

  if (!svn_prop_is_boolean(propname))
    return;

  propbuf = svn_stringbuf_create(propval, pool);
  svn_stringbuf_strip_whitespace(propbuf);

  if (propbuf->data[0] == '\0'
      || svn_cstring_casecmp(propbuf->data, "0") == 0
      || svn_cstring_casecmp(propbuf->data, "no") == 0
      || svn_cstring_casecmp(propbuf->data, "off") == 0
      || svn_cstring_casecmp(propbuf->data, "false") == 0)
    {
      svn_error_t *err = svn_error_createf
        (SVN_ERR_BAD_PROPERTY_VALUE, ((void*)0),
         _("To turn off the %s property, use 'svn propdel';\n"
           "setting the property to '%s' will not turn it off."),
           propname, propval);
      svn_handle_warning2(stderr, err, "svn: ");
      svn_error_clear(err);
    }
}
