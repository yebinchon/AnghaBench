
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct edit_baton {char* switch_repos_relpath; char* target_basename; } ;
struct dir_baton {int new_repos_relpath; int * parent_baton; } ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_pstrdup (int *,char const*) ;
 scalar_t__ strcmp (char*,char const*) ;
 char* svn_dirent_basename (char const*,int *) ;
 char* svn_relpath_join (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
calculate_repos_relpath(const char **new_repos_relpath,
                        const char *local_abspath,
                        const char *old_repos_relpath,
                        struct edit_baton *eb,
                        struct dir_baton *pb,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  const char *name = svn_dirent_basename(local_abspath, ((void*)0));


  if (eb->switch_repos_relpath)
    {


      if (pb == ((void*)0))
        {
          if (*eb->target_basename == '\0')
            {



              *new_repos_relpath = eb->switch_repos_relpath;
            }
          else
            {



              *new_repos_relpath = apr_pstrdup(result_pool, old_repos_relpath);
            }
        }
      else
        {







          if (pb->parent_baton == ((void*)0)
              && strcmp(eb->target_basename, name) == 0)
            *new_repos_relpath = eb->switch_repos_relpath;
          else
            *new_repos_relpath = svn_relpath_join(pb->new_repos_relpath, name,
                                                  result_pool);
        }
    }
  else
    {


      if (old_repos_relpath == ((void*)0))
        {
          SVN_ERR_ASSERT(pb != ((void*)0));
          *new_repos_relpath = svn_relpath_join(pb->new_repos_relpath, name,
                                                result_pool);
        }
      else
        {
          *new_repos_relpath = apr_pstrdup(result_pool, old_repos_relpath);
        }
    }

  return SVN_NO_ERROR;
}
