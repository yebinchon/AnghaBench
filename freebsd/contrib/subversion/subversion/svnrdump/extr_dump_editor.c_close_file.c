
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_stream_t ;
typedef int svn_repos__dumpfile_headers_t ;
typedef int svn_filesize_t ;
typedef int svn_error_t ;
struct file_baton {char const* base_checksum; scalar_t__ dump_text; int deleted_props; int props; scalar_t__ dump_props; int copyfrom_rev; int copyfrom_path; int is_copy; int action; int repos_relpath; struct dump_edit_baton* eb; } ;
struct dump_edit_baton {int stream; int delta_file; } ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int APR_SET ;
 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_REPOS_DUMPFILE_TEXT_CONTENT_MD5 ;
 int SVN_REPOS_DUMPFILE_TEXT_DELTA ;
 int SVN_REPOS_DUMPFILE_TEXT_DELTA_BASE_MD5 ;
 int TRUE ;
 int apr_hash_clear (int ) ;
 int dump_node (int **,struct dump_edit_baton*,int ,int *,struct file_baton*,int ,int ,int ,int ,int *) ;
 int dump_pending_dir (struct dump_edit_baton*,int *) ;
 int get_props_content (int *,int **,int ,int ,int *,int *) ;
 int svn_io_file_seek (int ,int ,int *,int *) ;
 int svn_io_file_size_get (int *,int ,int *) ;
 int svn_io_file_trunc (int ,int ,int *) ;
 int svn_repos__dump_node_record (int ,int *,int *,scalar_t__,int ,scalar_t__,int *) ;
 int svn_repos__dumpfile_header_push (int *,int ,char const*) ;
 int svn_stream_close (int *) ;
 int svn_stream_copy3 (int *,int ,int *,int *,int *) ;
 int * svn_stream_from_aprfile2 (int ,int ,int *) ;
 int svn_stream_puts (int ,char*) ;

__attribute__((used)) static svn_error_t *
close_file(void *file_baton,
           const char *text_checksum,
           apr_pool_t *pool)
{
  struct file_baton *fb = file_baton;
  struct dump_edit_baton *eb = fb->eb;
  svn_filesize_t text_content_length = 0;
  svn_stringbuf_t *propstring = ((void*)0);
  svn_repos__dumpfile_headers_t *headers;

  SVN_ERR(dump_pending_dir(eb, pool));


  SVN_ERR(dump_node(&headers, eb, fb->repos_relpath, ((void*)0), fb,
                    fb->action, fb->is_copy, fb->copyfrom_path,
                    fb->copyfrom_rev, pool));




  if (fb->dump_props)
    {
      SVN_ERR(get_props_content(headers, &propstring,
                                fb->props, fb->deleted_props,
                                pool, pool));
    }


  if (fb->dump_text)
    {

      svn_repos__dumpfile_header_push(
        headers, SVN_REPOS_DUMPFILE_TEXT_DELTA, "true");

      SVN_ERR(svn_io_file_size_get(&text_content_length, eb->delta_file,
                                   pool));

      if (fb->base_checksum)

        svn_repos__dumpfile_header_push(
          headers, SVN_REPOS_DUMPFILE_TEXT_DELTA_BASE_MD5, fb->base_checksum);


      svn_repos__dumpfile_header_push(
        headers, SVN_REPOS_DUMPFILE_TEXT_CONTENT_MD5, text_checksum);
    }


  SVN_ERR(svn_repos__dump_node_record(eb->stream, headers, propstring,
                                      fb->dump_text, text_content_length,
                                      FALSE ,
                                      pool));

  if (fb->dump_props)
    {

      fb->dump_props = FALSE;
      apr_hash_clear(fb->props);
      apr_hash_clear(fb->deleted_props);
    }


  if (fb->dump_text)
    {





      svn_stream_t *delta_filestream;
      apr_off_t offset = 0;

      SVN_ERR(svn_io_file_seek(eb->delta_file, APR_SET, &offset, pool));
      delta_filestream = svn_stream_from_aprfile2(eb->delta_file, TRUE, pool);
      SVN_ERR(svn_stream_copy3(delta_filestream, eb->stream, ((void*)0), ((void*)0), pool));


      SVN_ERR(svn_stream_close(delta_filestream));
      SVN_ERR(svn_io_file_trunc(eb->delta_file, 0, pool));
    }



  SVN_ERR(svn_stream_puts(eb->stream, "\n\n"));

  return SVN_NO_ERROR;
}
