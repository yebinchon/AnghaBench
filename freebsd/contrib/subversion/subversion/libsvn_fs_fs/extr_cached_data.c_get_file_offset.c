
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_7__ {TYPE_2__* sfile; } ;
typedef TYPE_3__ rep_state_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
struct TYPE_6__ {TYPE_1__* rfile; } ;
struct TYPE_5__ {int file; } ;


 int * svn_error_trace (int ) ;
 int svn_io_file_get_offset (int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
get_file_offset(apr_off_t *offset,
                rep_state_t *rs,
                apr_pool_t *pool)
{
  return svn_error_trace(svn_io_file_get_offset(offset,
                                                rs->sfile->rfile->file,
                                                pool));
}
