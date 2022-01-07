
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* data; void* len; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_membuf_t ;
typedef int apr_size_t ;


 void* strlen (char const*) ;
 int svn_string__similarity (TYPE_1__*,TYPE_1__*,int *,int *) ;

apr_size_t
svn_cstring__similarity(const char *stra, const char *strb,
                        svn_membuf_t *buffer, apr_size_t *rlcs)
{
  svn_string_t stringa, stringb;
  stringa.data = stra;
  stringa.len = strlen(stra);
  stringb.data = strb;
  stringb.len = strlen(strb);
  return svn_string__similarity(&stringa, &stringb, buffer, rlcs);
}
