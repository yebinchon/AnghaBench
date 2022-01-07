
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_wc__db_t ;
struct TYPE_9__ {int len; int data; scalar_t__ is_atom; struct TYPE_9__* next; TYPE_2__* children; } ;
typedef TYPE_3__ svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {TYPE_1__* next; } ;
struct TYPE_7__ {TYPE_3__* children; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_WC_MISSING ;
 int * SVN_NO_ERROR ;
 int SVN_WC__CONFLICT_KIND_TEXT ;
 int _ (char*) ;
 char* apr_pstrmemdup (int *,int ,int ) ;
 int conflict__get_conflict (TYPE_3__**,TYPE_3__ const*,int ) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_wc__db_from_relpath (char const**,int *,char const*,char const*,int *,int *) ;

svn_error_t *
svn_wc__conflict_read_text_conflict(const char **mine_abspath,
                                    const char **their_old_abspath,
                                    const char **their_abspath,
                                    svn_wc__db_t *db,
                                    const char *wri_abspath,
                                    const svn_skel_t *conflict_skel,
                                    apr_pool_t *result_pool,
                                    apr_pool_t *scratch_pool)
{
  svn_skel_t *text_conflict;
  const svn_skel_t *m;

  SVN_ERR(conflict__get_conflict(&text_conflict, conflict_skel,
                                 SVN_WC__CONFLICT_KIND_TEXT));

  if (!text_conflict)
    return svn_error_create(SVN_ERR_WC_MISSING, ((void*)0), _("Conflict not set"));

  m = text_conflict->children->next->children;

  if (their_old_abspath)
    {
      if (m->is_atom)
        {
          const char *original_relpath;

          original_relpath = apr_pstrmemdup(scratch_pool, m->data, m->len);
          SVN_ERR(svn_wc__db_from_relpath(their_old_abspath,
                                          db, wri_abspath, original_relpath,
                                          result_pool, scratch_pool));
        }
      else
        *their_old_abspath = ((void*)0);
    }
  m = m->next;

  if (mine_abspath)
    {
      if (m->is_atom)
        {
          const char *mine_relpath;

          mine_relpath = apr_pstrmemdup(scratch_pool, m->data, m->len);
          SVN_ERR(svn_wc__db_from_relpath(mine_abspath,
                                          db, wri_abspath, mine_relpath,
                                          result_pool, scratch_pool));
        }
      else
        *mine_abspath = ((void*)0);
    }
  m = m->next;

  if (their_abspath)
    {
      if (m->is_atom)
        {
          const char *their_relpath;

          their_relpath = apr_pstrmemdup(scratch_pool, m->data, m->len);
          SVN_ERR(svn_wc__db_from_relpath(their_abspath,
                                          db, wri_abspath, their_relpath,
                                          result_pool, scratch_pool));
        }
      else
        *their_abspath = ((void*)0);
    }

  return SVN_NO_ERROR;
}
