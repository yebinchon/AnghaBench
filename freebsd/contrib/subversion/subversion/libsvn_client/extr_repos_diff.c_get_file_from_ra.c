
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct file_baton {int pool; int pristine_props; int base_revision; int path; TYPE_1__* edit_baton; int start_md5_checksum; int path_start_revision; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int ra_session; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_checksum_md5 ;
 int svn_io_file_del_on_pool_cleanup ;
 int svn_ra_get_file (int ,int ,int ,int *,int *,int *,int ) ;
 int * svn_stream_checksummed2 (int *,int *,int *,int ,int ,int ) ;
 int svn_stream_close (int *) ;
 int svn_stream_open_unique (int **,int *,int *,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
get_file_from_ra(struct file_baton *fb,
                 svn_boolean_t props_only,
                 apr_pool_t *scratch_pool)
{
  if (! props_only)
    {
      svn_stream_t *fstream;

      SVN_ERR(svn_stream_open_unique(&fstream, &(fb->path_start_revision),
                                     ((void*)0), svn_io_file_del_on_pool_cleanup,
                                     fb->pool, scratch_pool));

      fstream = svn_stream_checksummed2(fstream, ((void*)0), &fb->start_md5_checksum,
                                        svn_checksum_md5, TRUE, fb->pool);


      SVN_ERR(svn_ra_get_file(fb->edit_baton->ra_session,
                              fb->path,
                              fb->base_revision,
                              fstream, ((void*)0),
                              &(fb->pristine_props),
                              fb->pool));
      SVN_ERR(svn_stream_close(fstream));
    }
  else
    {
      SVN_ERR(svn_ra_get_file(fb->edit_baton->ra_session,
                              fb->path,
                              fb->base_revision,
                              ((void*)0), ((void*)0),
                              &(fb->pristine_props),
                              fb->pool));
    }

  return SVN_NO_ERROR;
}
