
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * data; scalar_t__ len; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
struct TYPE_8__ {int parser_pool; int parsed_groups; scalar_t__ parsing_groups; int in_groups; } ;
typedef TYPE_2__ ctor_baton_t ;
typedef scalar_t__ apr_size_t ;


 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_AUTHZ_INVALID_CONFIG ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ apr_hash_get (int ,char const*,scalar_t__) ;
 int apr_hash_set (int ,int ,scalar_t__,int ) ;
 char* apr_pstrcat (int ,char*,int *,int ) ;
 int intern_string (TYPE_2__* const,char const*,scalar_t__) ;
 scalar_t__ strchr (char*,int ) ;
 int svn_cstring_split (int *,char*,int ,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*,...) ;

__attribute__((used)) static svn_error_t *
groups_add_value(void *baton, svn_stringbuf_t *section,
                 svn_stringbuf_t *option, svn_stringbuf_t *value)
{
  ctor_baton_t *const cb = baton;
  const char *group;
  apr_size_t group_len;

  SVN_ERR_ASSERT(cb->in_groups);

  if (strchr("@$&*~", *option->data))
    {
      if (cb->parsing_groups)
        return svn_error_createf(
            SVN_ERR_AUTHZ_INVALID_CONFIG, ((void*)0),
            _("Global group name '%s' may not begin with '%c'"),
            option->data, *option->data);
      else
        return svn_error_createf(
            SVN_ERR_AUTHZ_INVALID_CONFIG, ((void*)0),
            _("Group name '%s' may not begin with '%c'"),
            option->data, *option->data);
    }


  group = apr_pstrcat(cb->parser_pool, "@", option->data, SVN_VA_NULL);
  group_len = option->len + 1;
  if (apr_hash_get(cb->parsed_groups, group, group_len))
    {
      if (cb->parsing_groups)
        return svn_error_createf(SVN_ERR_AUTHZ_INVALID_CONFIG, ((void*)0),
                                 _("Can't override definition"
                                   " of global group '%s'"),
                                 group);
      else
        return svn_error_createf(SVN_ERR_AUTHZ_INVALID_CONFIG, ((void*)0),
                                 _("Can't override definition"
                                   " of group '%s'"),
                                 group);
    }





  apr_hash_set(cb->parsed_groups,
               intern_string(cb, group, group_len), group_len,
               svn_cstring_split(value->data, ",", TRUE, cb->parser_pool));

  return SVN_NO_ERROR;
}
