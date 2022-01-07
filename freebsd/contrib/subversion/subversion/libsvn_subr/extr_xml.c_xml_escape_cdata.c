
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int svn_stringbuf_appendbytes (int *,char const*,int) ;
 int svn_stringbuf_appendcstr (int *,char*) ;
 int * svn_stringbuf_create_empty (int *) ;

__attribute__((used)) static void
xml_escape_cdata(svn_stringbuf_t **outstr,
                 const char *data,
                 apr_size_t len,
                 apr_pool_t *pool)
{
  const char *end = data + len;
  const char *p = data, *q;

  if (*outstr == ((void*)0))
    *outstr = svn_stringbuf_create_empty(pool);

  while (1)
    {
      q = p;
      while (q < end && *q != '&' && *q != '<' && *q != '>' && *q != '\r')
        q++;
      svn_stringbuf_appendbytes(*outstr, p, q - p);


      if (q == end)
        break;


      if (*q == '&')
        svn_stringbuf_appendcstr(*outstr, "&amp;");
      else if (*q == '<')
        svn_stringbuf_appendcstr(*outstr, "&lt;");
      else if (*q == '>')
        svn_stringbuf_appendcstr(*outstr, "&gt;");
      else if (*q == '\r')
        svn_stringbuf_appendcstr(*outstr, "&#13;");

      p = q + 1;
    }
}
