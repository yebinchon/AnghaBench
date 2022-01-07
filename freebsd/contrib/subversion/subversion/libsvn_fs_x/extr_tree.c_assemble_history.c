
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* svn_revnum_t ;
typedef int svn_fs_x__id_t ;
typedef int svn_fs_t ;
struct TYPE_4__ {TYPE_2__* fsap_data; int * vtable; } ;
typedef TYPE_1__ svn_fs_history_t ;
typedef int svn_boolean_t ;
struct TYPE_5__ {int current_id; int * fs; void* next_copy; void* rev_hint; int * path_hint; int is_interesting; void* revision; int * path; } ;
typedef TYPE_2__ fs_history_data_t ;
typedef int apr_pool_t ;


 void* apr_pcalloc (int *,int) ;
 int history_vtable ;
 int * svn_fs__canonicalize_abspath (char const*,int *) ;
 int svn_fs_x__id_reset (int *) ;

__attribute__((used)) static svn_fs_history_t *
assemble_history(svn_fs_t *fs,
                 const char *path,
                 svn_revnum_t revision,
                 svn_boolean_t is_interesting,
                 const char *path_hint,
                 svn_revnum_t rev_hint,
                 svn_revnum_t next_copy,
                 const svn_fs_x__id_t *current_id,
                 apr_pool_t *result_pool)
{
  svn_fs_history_t *history = apr_pcalloc(result_pool, sizeof(*history));
  fs_history_data_t *fhd = apr_pcalloc(result_pool, sizeof(*fhd));
  fhd->path = svn_fs__canonicalize_abspath(path, result_pool);
  fhd->revision = revision;
  fhd->is_interesting = is_interesting;
  fhd->path_hint = path_hint
                 ? svn_fs__canonicalize_abspath(path_hint, result_pool)
                 : ((void*)0);
  fhd->rev_hint = rev_hint;
  fhd->next_copy = next_copy;
  fhd->fs = fs;

  if (current_id)
    fhd->current_id = *current_id;
  else
    svn_fs_x__id_reset(&fhd->current_id);

  history->vtable = &history_vtable;
  history->fsap_data = fhd;
  return history;
}
