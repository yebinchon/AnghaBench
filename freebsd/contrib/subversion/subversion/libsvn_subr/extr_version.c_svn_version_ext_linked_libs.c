
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* linked_libs; } ;
typedef TYPE_1__ svn_version_extended_t ;
typedef int apr_array_header_t ;



const apr_array_header_t *
svn_version_ext_linked_libs(const svn_version_extended_t *ext_info)
{
  return ext_info->linked_libs;
}
