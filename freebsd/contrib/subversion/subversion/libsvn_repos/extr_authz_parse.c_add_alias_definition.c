
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ len; int * data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
struct TYPE_9__ {int parsed_aliases; int parser_pool; } ;
typedef TYPE_2__ ctor_baton_t ;
typedef scalar_t__ apr_size_t ;


 int SVN_ERR_AUTHZ_INVALID_CONFIG ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 int _ (char*) ;
 scalar_t__ apr_hash_get (int ,char const*,scalar_t__) ;
 int apr_hash_set (int ,char const*,scalar_t__,char const*) ;
 char* apr_pstrcat (int ,char*,int *,int ) ;
 char* intern_string (TYPE_2__*,int *,scalar_t__) ;
 int prepare_global_rights (TYPE_2__*,char const*) ;
 scalar_t__ strchr (char*,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*,...) ;

__attribute__((used)) static svn_error_t *
add_alias_definition(ctor_baton_t *cb,
                     svn_stringbuf_t *option, svn_stringbuf_t *value)
{
  const char *alias;
  apr_size_t alias_len;
  const char *user;

  if (strchr("@$&*~", *option->data))
    return svn_error_createf(
        SVN_ERR_AUTHZ_INVALID_CONFIG, ((void*)0),
        _("Alias name '%s' may not begin with '%c'"),
        option->data, *option->data);


  alias = apr_pstrcat(cb->parser_pool, "&", option->data, SVN_VA_NULL);
  alias_len = option->len + 1;
  if (apr_hash_get(cb->parsed_aliases, alias, alias_len))
    return svn_error_createf(
        SVN_ERR_AUTHZ_INVALID_CONFIG, ((void*)0),
        _("Can't override definition of alias '%s'"),
        alias);

  user = intern_string(cb, value->data, value->len);
  apr_hash_set(cb->parsed_aliases, alias, alias_len, user);


  prepare_global_rights(cb, user);
  return SVN_NO_ERROR;
}
