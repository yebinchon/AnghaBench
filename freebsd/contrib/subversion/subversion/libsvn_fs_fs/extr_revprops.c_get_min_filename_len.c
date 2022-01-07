
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int manifest_start; } ;
typedef TYPE_1__ packed_revprops_t ;
typedef scalar_t__ apr_size_t ;


 int SVN_INT64_BUFFER_SIZE ;
 scalar_t__ svn__i64toa (char*,int ) ;

__attribute__((used)) static apr_size_t
get_min_filename_len(packed_revprops_t *revprops)
{
  char number_buffer[SVN_INT64_BUFFER_SIZE];





  return svn__i64toa(number_buffer, revprops->manifest_start) + 2;
}
