
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ svn_fs_dirent_t ;
typedef int svn_boolean_t ;
struct TYPE_5__ {int nelts; scalar_t__ elts; } ;
typedef TYPE_2__ apr_array_header_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static svn_boolean_t
sorted(apr_array_header_t *entries)
{
  int i;

  const svn_fs_dirent_t * const *dirents = (const void *)entries->elts;
  for (i = 0; i < entries->nelts-1; ++i)
    if (strcmp(dirents[i]->name, dirents[i+1]->name) > 0)
      return FALSE;

  return TRUE;
}
