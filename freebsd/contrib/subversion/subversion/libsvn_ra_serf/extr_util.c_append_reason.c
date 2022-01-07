
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;


 char const* _ (char*) ;
 int svn_stringbuf_appendcstr (int *,char const*) ;

__attribute__((used)) static void append_reason(svn_stringbuf_t *errmsg, const char *reason, int *reasons)
{
  if (*reasons < 1)
    svn_stringbuf_appendcstr(errmsg, _(": "));
  else
    svn_stringbuf_appendcstr(errmsg, _(", "));
  svn_stringbuf_appendcstr(errmsg, reason);
  (*reasons)++;
}
