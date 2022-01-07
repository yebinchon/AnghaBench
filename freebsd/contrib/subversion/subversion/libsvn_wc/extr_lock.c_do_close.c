
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* path; int db; int abspath; scalar_t__ closed; } ;
typedef TYPE_1__ svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 scalar_t__ IS_MISSING (TYPE_1__*) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 TYPE_1__* apr_hash_this_val (int *) ;
 int close_single (TYPE_1__*,int ,int *) ;
 TYPE_1__* get_from_shared (int ,int ,int *) ;
 scalar_t__ strcmp (char*,char const*) ;
 int svn_dirent_is_ancestor (char*,char const*) ;
 int * svn_error_trace (int ) ;
 int svn_wc__db_temp_clear_access (int ,char const*,int *) ;
 int * svn_wc__db_temp_get_all_access (int ,int *) ;

__attribute__((used)) static svn_error_t *
do_close(svn_wc_adm_access_t *adm_access,
         svn_boolean_t preserve_lock,
         apr_pool_t *scratch_pool)
{
  svn_wc_adm_access_t *look;

  if (adm_access->closed)
    return SVN_NO_ERROR;


  look = get_from_shared(adm_access->abspath, adm_access->db, scratch_pool);
  if (look != ((void*)0))
    {
      apr_hash_t *opened;
      apr_hash_index_t *hi;


      opened = svn_wc__db_temp_get_all_access(adm_access->db, scratch_pool);


      for (hi = apr_hash_first(scratch_pool, opened);
           hi;
           hi = apr_hash_next(hi))
        {
          const char *abspath = apr_hash_this_key(hi);
          svn_wc_adm_access_t *child = apr_hash_this_val(hi);
          const char *path = child->path;

          if (IS_MISSING(child))
            {


              svn_wc__db_temp_clear_access(adm_access->db, abspath,
                                           scratch_pool);
              continue;
            }

          if (! svn_dirent_is_ancestor(adm_access->path, path)
              || strcmp(adm_access->path, path) == 0)
            continue;

          SVN_ERR(close_single(child, preserve_lock, scratch_pool));
        }
    }

  return svn_error_trace(close_single(adm_access, preserve_lock,
                                      scratch_pool));
}
