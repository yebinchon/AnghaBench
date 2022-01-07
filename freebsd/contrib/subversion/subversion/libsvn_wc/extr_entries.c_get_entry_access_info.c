
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 char* apr_pstrdup (int *,char const*) ;
 int svn_dirent_split (char const**,char const**,char const*,int *) ;
 int svn_io_check_special_path (char const*,scalar_t__*,scalar_t__*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_unknown ;
 int * svn_wc__adm_retrieve_internal2 (int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
get_entry_access_info(const char **adm_abspath,
                      const char **entry_name,
                      svn_wc__db_t *db,
                      const char *local_abspath,
                      svn_node_kind_t kind,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  svn_wc_adm_access_t *adm_access;
  svn_boolean_t read_from_subdir = FALSE;



  if (kind == svn_node_unknown)
    {
      svn_node_kind_t on_disk;


      adm_access = svn_wc__adm_retrieve_internal2(db, local_abspath,
                                                  scratch_pool);
      if (adm_access)
        {

          on_disk = svn_node_dir;
        }
      else
        {
          svn_boolean_t special;


          SVN_ERR(svn_io_check_special_path(local_abspath, &on_disk, &special,
                                            scratch_pool));
        }

      if (on_disk != svn_node_dir)
        {
        }
      else
        {


          read_from_subdir = TRUE;
        }
    }
  else if (kind == svn_node_dir)
    {
      read_from_subdir = TRUE;
    }

  if (read_from_subdir)
    {


      *adm_abspath = apr_pstrdup(result_pool, local_abspath);
      *entry_name = "";
    }
  else
    {



      svn_dirent_split(adm_abspath, entry_name, local_abspath, result_pool);
    }

  return SVN_NO_ERROR;
}
