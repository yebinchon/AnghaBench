
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int len; int data; } ;
typedef TYPE_2__ svn_stringbuf_t ;
typedef int svn_error_t ;
struct TYPE_14__ {int parser_pool; int parsed_rules; TYPE_2__* rule_string_buffer; } ;
typedef TYPE_3__ ctor_baton_t ;
struct TYPE_15__ {int len; TYPE_5__* path; int repos; } ;
typedef TYPE_4__ authz_rule_t ;
struct TYPE_12__ {int len; int data; } ;
struct TYPE_16__ {char kind; TYPE_1__ pattern; } ;
typedef TYPE_5__ authz_rule_segment_t ;


 int SVN_ERR_AUTHZ_INVALID_CONFIG ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* apr_hash_get (int ,int ,int ) ;
 int apr_hash_set (int ,int ,int ,int ) ;
 int apr_pstrdup (int ,char const*) ;
 int apr_pstrmemdup (int ,int ,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*,char const*) ;
 int svn_stringbuf_appendbyte (TYPE_2__* const,char) ;
 int svn_stringbuf_appendbytes (TYPE_2__* const,int ,int ) ;
 int svn_stringbuf_appendcstr (TYPE_2__* const,int ) ;
 int svn_stringbuf_setempty (TYPE_2__* const) ;

__attribute__((used)) static svn_error_t *
check_unique_rule(ctor_baton_t *cb,
                  const authz_rule_t *rule,
                  const char *section)
{
  svn_stringbuf_t *const buf = cb->rule_string_buffer;
  const char *exists;
  int i;


  svn_stringbuf_setempty(buf);
  svn_stringbuf_appendcstr(buf, rule->repos);
  svn_stringbuf_appendbyte(buf, '\n');

  for (i = 0; i < rule->len; ++i)
    {
      authz_rule_segment_t *const seg = &rule->path[i];
      svn_stringbuf_appendbyte(buf, '@' + seg->kind);
      svn_stringbuf_appendbytes(buf, seg->pattern.data, seg->pattern.len);
      svn_stringbuf_appendbyte(buf, '\n');
    }


  exists = apr_hash_get(cb->parsed_rules, buf->data, buf->len);
  if (exists)
    return svn_error_createf(
        SVN_ERR_AUTHZ_INVALID_CONFIG, ((void*)0),
        _("Section [%s] describes the same rule as section [%s]"),
        section, exists);


  apr_hash_set(cb->parsed_rules,
               apr_pstrmemdup(cb->parser_pool, buf->data, buf->len),
               buf->len,
               apr_pstrdup(cb->parser_pool, section));

  return SVN_NO_ERROR;
}
