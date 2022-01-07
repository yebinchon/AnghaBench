
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
struct getter_baton {int base_revision_for_url; int * ra_session; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_MIME_TYPE ;
 int * svn_hash_gets (int *,int ) ;
 int svn_ra_get_file (int *,char*,int ,int *,int *,int **,int *) ;

__attribute__((used)) static svn_error_t *
get_file_for_validation(const svn_string_t **mime_type,
                        svn_stream_t *stream,
                        void *baton,
                        apr_pool_t *pool)
{
  struct getter_baton *gb = baton;
  svn_ra_session_t *ra_session = gb->ra_session;
  apr_hash_t *props;

  SVN_ERR(svn_ra_get_file(ra_session, "", gb->base_revision_for_url,
                          stream, ((void*)0),
                          (mime_type ? &props : ((void*)0)),
                          pool));

  if (mime_type)
    *mime_type = svn_hash_gets(props, SVN_PROP_MIME_TYPE);

  return SVN_NO_ERROR;
}
