
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 char const* apr_psprintf (int *,char*,char const*,char*,char const*,char*) ;
 TYPE_1__* read_file_contents (char*,int *) ;
 char* stringbuf_split_key (TYPE_1__*,char) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int svn_error_clear (int *) ;
 int * svn_stream_from_stringbuf (TYPE_1__*,int *) ;
 int * svn_stream_readline (int *,TYPE_1__**,char*,scalar_t__*,int *) ;
 int svn_stringbuf_strip_whitespace (TYPE_1__*) ;

__attribute__((used)) static const char *
suse_release(apr_pool_t *pool)
{
  const char *release = ((void*)0);
  const char *codename = ((void*)0);

  svn_stringbuf_t *buffer = read_file_contents("/etc/SuSE-release", pool);
  svn_stringbuf_t *line;
  svn_stream_t *stream;
  svn_boolean_t eof;
  svn_error_t *err;
  if (!buffer)
      return ((void*)0);

  stream = svn_stream_from_stringbuf(buffer, pool);
  err = svn_stream_readline(stream, &line, "\n", &eof, pool);
  if (err || eof)
    {
      svn_error_clear(err);
      return ((void*)0);
    }

  svn_stringbuf_strip_whitespace(line);
  release = line->data;

  for (;;)
    {
      const char *key;

      err = svn_stream_readline(stream, &line, "\n", &eof, pool);
      if (err || eof)
        {
          svn_error_clear(err);
          break;
        }

      key = stringbuf_split_key(line, '=');
      if (!key)
        continue;

      if (0 == strncmp(key, "CODENAME", 8))
        codename = line->data;
    }

  return apr_psprintf(pool, "%s%s%s%s",
                      release,
                      (codename ? " (" : ""),
                      (codename ? codename : ""),
                      (codename ? ")" : ""));
}
