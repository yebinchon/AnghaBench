
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_diff_t ;
typedef int svn_diff_file_options_t ;
typedef int svn_cancel_func_t ;
struct rev {int dummy; } ;
struct diff_baton {struct rev* rev; struct blame_chain* chain; } ;
struct blame_chain {int * blame; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int * blame_create (struct blame_chain*,struct rev*,int ) ;
 int output_fns ;
 int svn_diff_file_diff_2 (int **,char const*,char const*,int const*,int *) ;
 int svn_diff_output2 (int *,struct diff_baton*,int *,int ,void*) ;

__attribute__((used)) static svn_error_t *
add_file_blame(const char *last_file,
               const char *cur_file,
               struct blame_chain *chain,
               struct rev *rev,
               const svn_diff_file_options_t *diff_options,
               svn_cancel_func_t cancel_func,
               void *cancel_baton,
               apr_pool_t *pool)
{
  if (!last_file)
    {
      SVN_ERR_ASSERT(chain->blame == ((void*)0));
      chain->blame = blame_create(chain, rev, 0);
    }
  else
    {
      svn_diff_t *diff;
      struct diff_baton diff_baton;

      diff_baton.chain = chain;
      diff_baton.rev = rev;


      SVN_ERR(svn_diff_file_diff_2(&diff, last_file, cur_file,
                                   diff_options, pool));
      SVN_ERR(svn_diff_output2(diff, &diff_baton, &output_fns,
                               cancel_func, cancel_baton));
    }

  return SVN_NO_ERROR;
}
