
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* svn_revnum_t ;
typedef int svn_fs_t ;
struct TYPE_4__ {TYPE_2__* fsap_data; int * vtable; } ;
typedef TYPE_1__ svn_fs_history_t ;
typedef int svn_boolean_t ;
struct TYPE_5__ {char const* path; char const* path_hint; int * fs; void* rev_hint; int is_interesting; void* revision; } ;
typedef TYPE_2__ base_history_data_t ;
typedef int apr_pool_t ;


 void* apr_pcalloc (int *,int) ;
 int history_vtable ;

__attribute__((used)) static svn_fs_history_t *
assemble_history(svn_fs_t *fs,
                 const char *path,
                 svn_revnum_t revision,
                 svn_boolean_t is_interesting,
                 const char *path_hint,
                 svn_revnum_t rev_hint,
                 apr_pool_t *pool)
{
  svn_fs_history_t *history = apr_pcalloc(pool, sizeof(*history));
  base_history_data_t *bhd = apr_pcalloc(pool, sizeof(*bhd));
  bhd->path = path;
  bhd->revision = revision;
  bhd->is_interesting = is_interesting;
  bhd->path_hint = path_hint;
  bhd->rev_hint = rev_hint;
  bhd->fs = fs;
  history->vtable = &history_vtable;
  history->fsap_data = bhd;
  return history;
}
