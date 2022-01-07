
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int escaped_char ;
typedef int apr_pool_t ;


 int apr_snprintf (char*,int,char*,unsigned char) ;
 int strlen (char const*) ;
 scalar_t__ svn_ctype_iscntrl (char const) ;
 int svn_stringbuf_appendbytes (TYPE_1__*,char const*,int) ;
 int svn_stringbuf_appendcstr (TYPE_1__*,char*) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;

const char *
svn_xml_fuzzy_escape(const char *string, apr_pool_t *pool)
{
  const char *end = string + strlen(string);
  const char *p = string, *q;
  svn_stringbuf_t *outstr;
  char escaped_char[6];

  for (q = p; q < end; q++)
    {
      if (svn_ctype_iscntrl(*q)
          && ! ((*q == '\n') || (*q == '\r') || (*q == '\t')))
        break;
    }


  if (q == end)
    return string;

  outstr = svn_stringbuf_create_empty(pool);
  while (1)
    {
      q = p;


      while ((q < end)
             && ((! svn_ctype_iscntrl(*q))
                 || (*q == '\n') || (*q == '\r') || (*q == '\t')))
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
