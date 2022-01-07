
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_11__ {char* name; } ;
typedef TYPE_2__ apr_finfo_t ;
typedef int apr_dir_t ;


 int APR_FINFO_NAME ;
 int APR_STATUS_IS_ENOENT (int ) ;
 int FALSE ;
 TYPE_1__* SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ strcmp (char const*,char const*) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_io_dir_close (int *) ;
 TYPE_1__* svn_io_dir_open (int **,char const*,int *) ;
 TYPE_1__* svn_io_dir_read (TYPE_2__*,int ,int *,int *) ;
 int svn_wc_is_adm_dir (char*,int *) ;

__attribute__((used)) static svn_error_t *
is_empty_wc(svn_boolean_t *clean_checkout,
            const char *local_abspath,
            const char *anchor_abspath,
            apr_pool_t *pool)
{
  apr_dir_t *dir;
  apr_finfo_t finfo;
  svn_error_t *err;


  *clean_checkout = TRUE;



  err = svn_io_dir_open(&dir, local_abspath, pool);
  if (err)
    {
      if (! APR_STATUS_IS_ENOENT(err->apr_err))
        *clean_checkout = FALSE;

      svn_error_clear(err);
      return SVN_NO_ERROR;
    }

  for (err = svn_io_dir_read(&finfo, APR_FINFO_NAME, dir, pool);
       err == SVN_NO_ERROR;
       err = svn_io_dir_read(&finfo, APR_FINFO_NAME, dir, pool))
    {




      if (! (finfo.name[0] == '.'
             && (finfo.name[1] == '\0'
                 || (finfo.name[1] == '.' && finfo.name[2] == '\0'))))
        {
          if ( ! svn_wc_is_adm_dir(finfo.name, pool)
              || strcmp(local_abspath, anchor_abspath) != 0)
            {
              *clean_checkout = FALSE;
              break;
            }
        }
    }

  if (err)
    {
      if (! APR_STATUS_IS_ENOENT(err->apr_err))
        {


          *clean_checkout = FALSE;
        }

      svn_error_clear(err);
    }

  return svn_io_dir_close(dir);
}
