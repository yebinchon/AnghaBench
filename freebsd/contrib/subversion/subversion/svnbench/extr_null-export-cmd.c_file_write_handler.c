
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int byte_count; } ;
typedef TYPE_1__ edit_baton_t ;
typedef scalar_t__ apr_size_t ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
file_write_handler(void *baton, const char *data, apr_size_t *len)
{
  edit_baton_t *eb = baton;
  eb->byte_count += *len;

  return SVN_NO_ERROR;
}
