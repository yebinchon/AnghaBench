
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_window_t ;
typedef int svn_error_t ;
struct file_baton {int pool; int result_digest; int result_md5_checksum; int apply_baton; int (* apply_handler ) (int *,int ) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int *,int ) ;
 int svn_checksum__from_digest_md5 (int ,int ) ;

__attribute__((used)) static svn_error_t *
window_handler(svn_txdelta_window_t *window,
               void *window_baton)
{
  struct file_baton *fb = window_baton;

  SVN_ERR(fb->apply_handler(window, fb->apply_baton));

  if (!window)
    {
      fb->result_md5_checksum = svn_checksum__from_digest_md5(
                                        fb->result_digest,
                                        fb->pool);
    }

  return SVN_NO_ERROR;
}
