
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char const* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
struct TYPE_8__ {char* data; int len; } ;
typedef TYPE_2__ svn_string_t ;
typedef int escaped_char ;
typedef int apr_pool_t ;


 int apr_snprintf (char*,int,char*,unsigned char) ;
 scalar_t__ svn_ctype_isascii (char const) ;
 scalar_t__ svn_ctype_iscntrl (char const) ;
 int svn_stringbuf_appendbytes (TYPE_1__*,char const*,int) ;
 int svn_stringbuf_appendcstr (TYPE_1__*,char*) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;

__attribute__((used)) static const char *
fuzzy_escape(const svn_string_t *src, apr_pool_t *result_pool)
{
  const char *end = src->data + src->len;
  const char *p = src->data, *q;
  svn_stringbuf_t *outstr;
  char escaped_char[6];

  for (q = p; q < end; q++)
    {
      if (!svn_ctype_isascii(*q) || svn_ctype_iscntrl(*q))
        break;
    }

  if (q == end)
    return src->data;

  outstr = svn_stringbuf_create_empty(result_pool);
  while (1)
    {
      q = p;


      while (q < end && svn_ctype_isascii(*q) && !svn_ctype_iscntrl(*q))
        q++;


      svn_stringbuf_appendbytes(outstr, p, q - p);

      if (q == end)
        break;

      apr_snprintf(escaped_char, sizeof(escaped_char), "?\\%03u",
                   (unsigned char) *q);
      svn_stringbuf_appendcstr(outstr, escaped_char);

      p = q + 1;
    }

  return outstr->data;
}
