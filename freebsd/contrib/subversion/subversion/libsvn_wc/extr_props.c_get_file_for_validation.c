
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
struct getter_baton {int local_abspath; int * mime_type; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_stream_copy3 (int *,int ,int *,int *,int *) ;
 int svn_stream_disown (int *,int *) ;
 int svn_stream_open_readonly (int **,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
get_file_for_validation(const svn_string_t **mime_type,
                        svn_stream_t *stream,
                        void *baton,
                        apr_pool_t *pool)
{
  struct getter_baton *gb = baton;

  if (mime_type)
    *mime_type = gb->mime_type;

  if (stream)
    {
      svn_stream_t *read_stream;


      SVN_ERR(svn_stream_open_readonly(&read_stream, gb->local_abspath,
                                       pool, pool));
      SVN_ERR(svn_stream_copy3(read_stream, svn_stream_disown(stream, pool),
                               ((void*)0), ((void*)0), pool));
    }

  return SVN_NO_ERROR;
}
