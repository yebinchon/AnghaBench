
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_11__ {int edit_baton; TYPE_2__* editor; int ** s_roots; int t_rev; TYPE_1__* repos; int t_root; int reader; TYPE_4__* lookahead; int * s_operand; int * pool; } ;
typedef TYPE_3__ report_baton_t ;
struct TYPE_12__ {int depth; int rev; int path; scalar_t__ link_path; } ;
typedef TYPE_4__ path_info_t ;
typedef int apr_pool_t ;
struct TYPE_10__ {int (* abort_edit ) (int ,int *) ;int (* close_edit ) (int ,int *) ;} ;
struct TYPE_9__ {int fs; } ;


 int NUM_CACHED_SOURCE_ROOTS ;
 int SVN_ERR (int ) ;
 int SVN_ERR_REPOS_BAD_REVISION_REPORT ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int drive (TYPE_3__*,int ,TYPE_4__*,int *) ;
 int read_path_info (TYPE_4__**,int ,int *) ;
 scalar_t__ strcmp (int ,int *) ;
 int stub1 (int ,int *) ;
 int stub2 (int ,int *) ;
 int svn_error_compose_create (int *,int ) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_trace (int ) ;
 int svn_fs_revision_root (int *,int ,int ,int *) ;
 int * svn_pool_create (int *) ;
 int svn_spillbuf__reader_write (int ,char*,int,int *) ;

__attribute__((used)) static svn_error_t *
finish_report(report_baton_t *b, apr_pool_t *pool)
{
  path_info_t *info;
  apr_pool_t *subpool;
  svn_revnum_t s_rev;
  int i;


  b->pool = pool;


  SVN_ERR(svn_spillbuf__reader_write(b->reader, "-", 1, pool));



  SVN_ERR(read_path_info(&info, b->reader, pool));
  if (!info || strcmp(info->path, b->s_operand) != 0
      || info->link_path || !SVN_IS_VALID_REVNUM(info->rev))
    return svn_error_create(SVN_ERR_REPOS_BAD_REVISION_REPORT, ((void*)0),
                            _("Invalid report for top level of working copy"));
  s_rev = info->rev;


  subpool = svn_pool_create(pool);
  SVN_ERR(read_path_info(&b->lookahead, b->reader, subpool));

  if (b->lookahead && strcmp(b->lookahead->path, b->s_operand) == 0)
    {




      if (!*b->s_operand)
        return svn_error_create(SVN_ERR_REPOS_BAD_REVISION_REPORT, ((void*)0),
                                _("Two top-level reports with no target"));


      if (! SVN_IS_VALID_REVNUM(b->lookahead->rev))
        {
          b->lookahead->depth = info->depth;
        }
      info = b->lookahead;
      SVN_ERR(read_path_info(&b->lookahead, b->reader, subpool));
    }


  SVN_ERR(svn_fs_revision_root(&b->t_root, b->repos->fs, b->t_rev, pool));
  for (i = 0; i < NUM_CACHED_SOURCE_ROOTS; i++)
    b->s_roots[i] = ((void*)0);

  {
    svn_error_t *err = svn_error_trace(drive(b, s_rev, info, pool));

    if (err == SVN_NO_ERROR)
      return svn_error_trace(b->editor->close_edit(b->edit_baton, pool));

    return svn_error_trace(
                svn_error_compose_create(err,
                                         b->editor->abort_edit(b->edit_baton,
                                                               pool)));
  }
}
