
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
struct TYPE_6__ {char const* data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int apr_time_t ;
struct TYPE_7__ {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; } ;
typedef TYPE_2__ apr_time_exp_t ;
typedef int apr_pool_t ;


 char* apr_psprintf (int *,char*,int ,int ,int ,int ,int ,int ) ;
 int apr_time_exp_gmt (TYPE_2__*,int ) ;
 TYPE_1__* svn_stringbuf__morph_into_string (int *) ;
 int svn_stringbuf_appendbyte (int *,char const) ;
 int svn_stringbuf_appendbytes (int *,char const*,int) ;
 int svn_stringbuf_appendcstr (int *,char const*) ;
 int * svn_stringbuf_create_empty (int *) ;
 char const* svn_time_to_human_cstring (int ,int *) ;
 char* svn_uri_basename (char const*,int *) ;
 char* svn_uri_skip_ancestor (char const*,char const*,int *) ;

__attribute__((used)) static svn_string_t *
keyword_printf(const char *fmt,
               const char *rev,
               const char *url,
               const char *repos_root_url,
               apr_time_t date,
               const char *author,
               apr_pool_t *pool)
{
  svn_stringbuf_t *value = svn_stringbuf_create_empty(pool);
  const char *cur;
  size_t n;

  for (;;)
    {
      cur = fmt;

      while (*cur != '\0' && *cur != '%')
        cur++;

      if ((n = cur - fmt) > 0)
        svn_stringbuf_appendbytes(value, fmt, n);

      if (*cur == '\0')
        break;

      switch (cur[1])
        {
        case 'a':
          if (author)
            svn_stringbuf_appendcstr(value, author);
          break;
        case 'b':
          if (url && *url)
            {
              const char *base_name = svn_uri_basename(url, pool);
              svn_stringbuf_appendcstr(value, base_name);
            }
          break;
        case 'd':
          if (date)
            {
              apr_time_exp_t exploded_time;
              const char *human;

              apr_time_exp_gmt(&exploded_time, date);

              human = apr_psprintf(pool, "%04d-%02d-%02d %02d:%02d:%02dZ",
                                   exploded_time.tm_year + 1900,
                                   exploded_time.tm_mon + 1,
                                   exploded_time.tm_mday,
                                   exploded_time.tm_hour,
                                   exploded_time.tm_min,
                                   exploded_time.tm_sec);

              svn_stringbuf_appendcstr(value, human);
            }
          break;
        case 'D':
          if (date)
            svn_stringbuf_appendcstr(value,
                                     svn_time_to_human_cstring(date, pool));
          break;
        case 'P':
          if (repos_root_url && *repos_root_url != '\0' && url && *url != '\0')
            {
              const char *repos_relpath;

              repos_relpath = svn_uri_skip_ancestor(repos_root_url, url, pool);
              if (repos_relpath)
                svn_stringbuf_appendcstr(value, repos_relpath);
            }
          break;
        case 'R':
          if (repos_root_url && *repos_root_url != '\0')
            svn_stringbuf_appendcstr(value, repos_root_url);
          break;
        case 'r':
          if (rev)
            svn_stringbuf_appendcstr(value, rev);
          break;
        case 'u':
          if (url)
            svn_stringbuf_appendcstr(value, url);
          break;
        case '_':
          svn_stringbuf_appendbyte(value, ' ');
          break;
        case '%':
          svn_stringbuf_appendbyte(value, *cur);
          break;
        case '\0':
          svn_stringbuf_appendbyte(value, *cur);




          cur--;
          break;
        case 'H':
          {
            svn_string_t *s = keyword_printf("%P%_%r%_%d%_%a", rev, url,
                                             repos_root_url, date, author,
                                             pool);
            svn_stringbuf_appendcstr(value, s->data);
          }
          break;
        case 'I':
          {
            svn_string_t *s = keyword_printf("%b%_%r%_%d%_%a", rev, url,
                                             repos_root_url, date, author,
                                             pool);
            svn_stringbuf_appendcstr(value, s->data);
          }
          break;
        default:
          svn_stringbuf_appendbytes(value, cur, 2);
          break;
        }


      fmt = cur + 2;
    }

  return svn_stringbuf__morph_into_string(value);
}
