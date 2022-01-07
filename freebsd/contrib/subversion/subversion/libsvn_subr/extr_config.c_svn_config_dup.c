
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_11__ {int option_names_case_sensitive; int sections; int section_names_case_sensitive; int x_values; } ;
typedef TYPE_1__ svn_config_t ;
struct TYPE_12__ {int options; int name; } ;
typedef TYPE_2__ cfg_section_t ;
struct TYPE_13__ {char const* value; char const* x_value; int state; int name; } ;
typedef TYPE_3__ cfg_option_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 int apr_hash_set (int ,void*,int ,TYPE_3__*) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 void* apr_pstrdup (int *,char const*) ;
 TYPE_2__* svn_config_addsection (TYPE_1__*,int ) ;
 int svn_config_create2 (TYPE_1__**,int ,int ,int *) ;
 int svn_config_create_option (TYPE_3__**,int ,char const*,int ,int *) ;

svn_error_t *
svn_config_dup(svn_config_t **cfgp,
               const svn_config_t *src,
               apr_pool_t *pool)
{
  apr_hash_index_t *sectidx;
  apr_hash_index_t *optidx;

  *cfgp = 0;
  SVN_ERR(svn_config_create2(cfgp, FALSE, FALSE, pool));

  (*cfgp)->x_values = src->x_values;
  (*cfgp)->section_names_case_sensitive = src->section_names_case_sensitive;
  (*cfgp)->option_names_case_sensitive = src->option_names_case_sensitive;

  for (sectidx = apr_hash_first(pool, src->sections);
       sectidx != ((void*)0);
       sectidx = apr_hash_next(sectidx))
  {
    const void *sectkey;
    void *sectval;
    apr_ssize_t sectkeyLength;
    cfg_section_t * srcsect;
    cfg_section_t * destsec;

    apr_hash_this(sectidx, &sectkey, &sectkeyLength, &sectval);
    srcsect = sectval;

    destsec = svn_config_addsection(*cfgp, srcsect->name);

    for (optidx = apr_hash_first(pool, srcsect->options);
         optidx != ((void*)0);
         optidx = apr_hash_next(optidx))
    {
      const void *optkey;
      void *optval;
      apr_ssize_t optkeyLength;
      cfg_option_t *srcopt;
      cfg_option_t *destopt;

      apr_hash_this(optidx, &optkey, &optkeyLength, &optval);
      srcopt = optval;

      svn_config_create_option(&destopt, srcopt->name, srcopt->value,
                               (*cfgp)->option_names_case_sensitive,
                               pool);

      destopt->value = apr_pstrdup(pool, srcopt->value);
      destopt->x_value = apr_pstrdup(pool, srcopt->x_value);
      destopt->state = srcopt->state;
      apr_hash_set(destsec->options,
                   apr_pstrdup(pool, (const char*)optkey),
                   optkeyLength, destopt);
    }
  }

  return SVN_NO_ERROR;
}
