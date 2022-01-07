
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
struct TYPE_4__ {TYPE_2__* fsap_data; int * vtable; } ;
typedef TYPE_1__ svn_fs_history_t ;
typedef int svn_boolean_t ;
struct TYPE_5__ {int * fs; int * current_id; void* next_copy; void* rev_hint; int * path_hint; int is_interesting; void* revision; int * path; } ;
typedef TYPE_2__ fs_history_data_t ;
typedef int apr_pool_t ;


 void* apr_pcalloc (int *,int) ;
 int history_vtable ;
 int * svn_fs__canonicalize_abspath (char const*,int *) ;
 int * svn_fs_fs__id_copy (int const*,int *) ;

__attribute__((used)) static svn_fs_history_t *
assemble_history(svn_fs_t *fs,
                 const char *path,
                 svn_revnum_t revision,
                 svn_boolean_t is_interesting,
                 const char *path_hint,
                 svn_revnum_t rev_hint,
                 svn_revnum_t next_copy,
                 const svn_fs_id_t *current_id,
                 apr_pool_t *pool)
{
  svn_fs_history_t *history = apr_pcalloc(pool, sizeof(*history));
  fs_history_data_t *fhd = apr_pcalloc(pool, sizeof(*fhd));
  fhd->path = svn_fs__canonicalize_abspath(path, pool);
  fhd->revision = revision;
  fhd->is_interesting = is_interesting;
  fhd->path_hint = path_hint ? svn_fs__canonicalize_abspath(path_hint, pool)
                             : ((void*)0);
  fhd->rev_hint = rev_hint;
  fhd->next_copy = next_copy;
  fhd->current_id = current_id ? svn_fs_fs__id_copy(current_id, pool) : ((void*)0);
  fhd->fs = fs;

  history->vtable = &history_vtable;
  history->fsap_data = fhd;
  return history;
}
