
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char const* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_stream_t ;
struct TYPE_11__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 scalar_t__ TRUE ;
 int strncmp (char const*,char*,int) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_stream_close (int *) ;
 TYPE_2__* svn_stream_open_readonly (int **,char*,int *,int *) ;
 TYPE_2__* svn_stream_readline (int *,TYPE_1__**,char*,scalar_t__*,int *) ;
 TYPE_1__* svn_stringbuf_create (char const*,int *) ;
 int svn_stringbuf_strip_whitespace (TYPE_1__*) ;

__attribute__((used)) static const char *
systemd_release(apr_pool_t *pool)
{
  svn_error_t *err;
  svn_stream_t *stream;


  err = svn_stream_open_readonly(&stream, "/etc/os-release", pool, pool);
  if (err && APR_STATUS_IS_ENOENT(err->apr_err))
    {
      svn_error_clear(err);
      err = svn_stream_open_readonly(&stream, "/usr/lib/os-release", pool,
                                     pool);
    }
  if (err)
    {
      svn_error_clear(err);
      return ((void*)0);
    }


  while (TRUE)
    {
      svn_stringbuf_t *line;
      svn_boolean_t eof;

      err = svn_stream_readline(stream, &line, "\n", &eof, pool);
      if (err)
        {
          svn_error_clear(err);
          return ((void*)0);
        }

      if (!strncmp(line->data, "PRETTY_NAME=", 12))
        {
          svn_stringbuf_t *release_name;



          release_name = svn_stringbuf_create(line->data + 12, pool);
          svn_error_clear(svn_stream_close(stream));
          svn_stringbuf_strip_whitespace(release_name);
          return release_name->data;
        }

      if (eof)
        break;
    }


  svn_error_clear(svn_stream_close(stream));
  return ((void*)0);
}
