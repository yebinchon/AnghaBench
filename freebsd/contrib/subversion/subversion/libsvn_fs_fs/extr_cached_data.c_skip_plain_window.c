
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int current; } ;
typedef TYPE_1__ rep_state_t ;
typedef scalar_t__ apr_size_t ;
typedef scalar_t__ apr_off_t ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
skip_plain_window(rep_state_t *rs,
                  apr_size_t size)
{

  rs->current += (apr_off_t)size;

  return SVN_NO_ERROR;
}
