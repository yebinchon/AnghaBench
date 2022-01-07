
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_3__ {scalar_t__ revision; } ;
typedef TYPE_1__ svn_commit_info_t ;
struct revision_baton {scalar_t__ rev; struct parse_baton* pb; } ;
struct parse_baton {scalar_t__ last_rev_mapped; int rev_map; int quiet; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int set_revision_mapping (int ,scalar_t__,scalar_t__) ;
 int svn_cmdline_printf (int *,char*,scalar_t__) ;

__attribute__((used)) static svn_error_t *
commit_callback(const svn_commit_info_t *commit_info,
                void *baton,
                apr_pool_t *pool)
{
  struct revision_baton *rb = baton;
  struct parse_baton *pb = rb->pb;


  if (! pb->quiet)
    SVN_ERR(svn_cmdline_printf(pool, "* Loaded revision %ld.\n",
                               commit_info->revision));


  set_revision_mapping(pb->rev_map, rb->rev, commit_info->revision);






  if ((pb->last_rev_mapped != SVN_INVALID_REVNUM)
      && (rb->rev != pb->last_rev_mapped + 1))
    {
      svn_revnum_t i;

      for (i = pb->last_rev_mapped + 1; i < rb->rev; i++)
        {
          set_revision_mapping(pb->rev_map, i, pb->last_rev_mapped);
        }
    }


  pb->last_rev_mapped = rb->rev;

  return SVN_NO_ERROR;
}
