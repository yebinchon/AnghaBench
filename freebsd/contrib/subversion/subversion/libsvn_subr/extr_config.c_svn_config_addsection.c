
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sections; int pool; scalar_t__ section_names_case_sensitive; } ;
typedef TYPE_1__ svn_config_t ;
struct TYPE_8__ {char* name; int options; } ;
typedef TYPE_2__ cfg_section_t ;


 TYPE_2__* apr_palloc (int ,int) ;
 char* apr_pstrdup (int ,char const*) ;
 char* make_hash_key (char*) ;
 int svn_hash__make (int ) ;
 int svn_hash_sets (int ,char const*,TYPE_2__*) ;

__attribute__((used)) static cfg_section_t *
svn_config_addsection(svn_config_t *cfg,
                      const char *section)
{
  cfg_section_t *s;
  const char *hash_key;

  s = apr_palloc(cfg->pool, sizeof(cfg_section_t));
  s->name = apr_pstrdup(cfg->pool, section);
  if(cfg->section_names_case_sensitive)
    hash_key = s->name;
  else
    hash_key = make_hash_key(apr_pstrdup(cfg->pool, section));
  s->options = svn_hash__make(cfg->pool);

  svn_hash_sets(cfg->sections, hash_key, s);

  return s;
}
