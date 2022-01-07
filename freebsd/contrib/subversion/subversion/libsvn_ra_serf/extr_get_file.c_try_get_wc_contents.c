
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
struct TYPE_5__ {int wc_callback_baton; TYPE_1__* wc_callbacks; } ;
typedef TYPE_2__ svn_ra_serf__session_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {int * (* get_wc_contents ) (int ,int **,int *,int *) ;} ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * stub1 (int ,int **,int *,int *) ;
 int svn_checksum_parse_hex (int **,int ,char const*,int *) ;
 int svn_checksum_sha1 ;
 int svn_error_clear (int *) ;
 int svn_stream_copy3 (int *,int ,int *,int *,int *) ;
 int svn_stream_disown (int *,int *) ;

__attribute__((used)) static svn_error_t *
try_get_wc_contents(svn_boolean_t *found_p,
                    svn_ra_serf__session_t *session,
                    const char *sha1_checksum_prop,
                    svn_stream_t *dst_stream,
                    apr_pool_t *pool)
{
  svn_checksum_t *checksum;
  svn_stream_t *wc_stream;
  svn_error_t *err;


  *found_p = FALSE;

  if (!session->wc_callbacks->get_wc_contents
      || sha1_checksum_prop == ((void*)0))
    {

      return SVN_NO_ERROR;
    }

  SVN_ERR(svn_checksum_parse_hex(&checksum, svn_checksum_sha1,
                                 sha1_checksum_prop, pool));

  err = session->wc_callbacks->get_wc_contents(
          session->wc_callback_baton, &wc_stream, checksum, pool);

  if (err)
    {
      svn_error_clear(err);


      return SVN_NO_ERROR;
    }

  if (wc_stream)
    {
        SVN_ERR(svn_stream_copy3(wc_stream,
                                 svn_stream_disown(dst_stream, pool),
                                 ((void*)0), ((void*)0), pool));
      *found_p = TRUE;
    }

  return SVN_NO_ERROR;
}
