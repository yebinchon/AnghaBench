
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int parsed_acl_t ;
struct TYPE_5__ {int * parser_pool; int rule_string_buffer; int rule_path_buffer; int * current_acl; int parsed_acls; void* parsed_aliases; void* parsed_groups; void* parsed_rules; void* in_aliases; void* in_groups; void* parsing_groups; int * section; void* sections; void* strings; TYPE_2__* authz; } ;
typedef TYPE_1__ ctor_baton_t ;
struct TYPE_6__ {int * pool; void* user_rights; int authn_rights; int anon_rights; } ;
typedef TYPE_2__ authz_full_t ;
typedef int apr_pool_t ;


 void* FALSE ;
 int anon_access_token ;
 int apr_array_make (int * const,int,int) ;
 void* apr_pcalloc (int *,int) ;
 int authn_access_token ;
 int init_global_rights (int *,int ,int *) ;
 int insert_default_acl (TYPE_1__* const) ;
 void* svn_hash__make (int * const) ;
 int svn_membuf__create (int *,int ,int * const) ;
 int * svn_pool_create (int *) ;
 int svn_stringbuf_create_empty (int * const) ;

__attribute__((used)) static ctor_baton_t *
create_ctor_baton(apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  apr_pool_t *const parser_pool = svn_pool_create(scratch_pool);
  ctor_baton_t *const cb = apr_pcalloc(parser_pool, sizeof(*cb));

  authz_full_t *const authz = apr_pcalloc(result_pool, sizeof(*authz));
  init_global_rights(&authz->anon_rights, anon_access_token, result_pool);
  init_global_rights(&authz->authn_rights, authn_access_token, result_pool);
  authz->user_rights = svn_hash__make(result_pool);
  authz->pool = result_pool;

  cb->authz = authz;
  cb->strings = svn_hash__make(parser_pool);

  cb->sections = svn_hash__make(parser_pool);
  cb->section = ((void*)0);
  cb->parsing_groups = FALSE;
  cb->in_groups = FALSE;
  cb->in_aliases = FALSE;

  cb->parsed_rules = svn_hash__make(parser_pool);
  cb->parsed_groups = svn_hash__make(parser_pool);
  cb->parsed_aliases = svn_hash__make(parser_pool);
  cb->parsed_acls = apr_array_make(parser_pool, 64, sizeof(parsed_acl_t));
  cb->current_acl = ((void*)0);

  svn_membuf__create(&cb->rule_path_buffer, 0, parser_pool);
  cb->rule_string_buffer = svn_stringbuf_create_empty(parser_pool);

  cb->parser_pool = parser_pool;

  insert_default_acl(cb);

  return cb;
}
