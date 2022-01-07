
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;


 int strlen (char const*) ;
 int svn_stringbuf_appendbytes (int *,char const*,int ) ;

void
svn_stringbuf_appendcstr(svn_stringbuf_t *targetstr, const char *cstr)
{
  svn_stringbuf_appendbytes(targetstr, cstr, strlen(cstr));
}
