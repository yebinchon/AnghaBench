
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
struct TYPE_6__ {scalar_t__ section; int sections; int parser_pool; scalar_t__ parsing_groups; int current_acl; } ;
typedef TYPE_2__ ctor_baton_t ;


 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_AUTHZ_INVALID_CONFIG ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_hash_get (int ,int ,int ) ;
 scalar_t__ apr_pstrmemdup (int ,int ,int ) ;
 int interned_empty_string ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_hash_sets (int ,scalar_t__,int ) ;

__attribute__((used)) static svn_error_t *
check_open_section(ctor_baton_t *cb, svn_stringbuf_t *section)
{
  SVN_ERR_ASSERT(!cb->current_acl && !cb->section);
  if (apr_hash_get(cb->sections, section->data, section->len))
    {
      if (cb->parsing_groups)
        return svn_error_createf(
            SVN_ERR_AUTHZ_INVALID_CONFIG, ((void*)0),
            _("Section appears more than once"
              " in the global groups file: [%s]"),
            section->data);
      else
        return svn_error_createf(
            SVN_ERR_AUTHZ_INVALID_CONFIG, ((void*)0),
            _("Section appears more than once"
              " in the authz file: [%s]"),
            section->data);
    }

  cb->section = apr_pstrmemdup(cb->parser_pool, section->data, section->len);
  svn_hash_sets(cb->sections, cb->section, interned_empty_string);
  return SVN_NO_ERROR;
}
