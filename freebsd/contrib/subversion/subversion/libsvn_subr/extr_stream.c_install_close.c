
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int pool; int file; } ;
struct install_baton_t {TYPE_1__ baton_apr; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_io_file_flush (int ,int ) ;

__attribute__((used)) static svn_error_t *
install_close(void *baton)
{
  struct install_baton_t *ib = baton;


  SVN_ERR(svn_io_file_flush(ib->baton_apr.file, ib->baton_apr.pool));

  return SVN_NO_ERROR;
}
