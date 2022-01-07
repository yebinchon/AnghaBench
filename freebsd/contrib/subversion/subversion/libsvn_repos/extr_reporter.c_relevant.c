
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_boolean_t ;
struct TYPE_3__ {char* path; } ;
typedef TYPE_1__ path_info_t ;
typedef size_t apr_size_t ;


 scalar_t__ strncmp (char*,char const*,size_t) ;

__attribute__((used)) static svn_boolean_t
relevant(path_info_t *pi, const char *prefix, apr_size_t plen)
{
  return (pi && strncmp(pi->path, prefix, plen) == 0 &&
          (!*prefix || pi->path[plen] == '/'));
}
