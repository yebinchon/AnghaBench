
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int (* bdb_set_errcall ) (TYPE_2__*,void (*) (char const*,char*)) ;} ;


 int stub1 (TYPE_2__*,void (*) (char const*,char*)) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_set_berkeley_errcall(svn_fs_t *fs,
                            void (*handler)(const char *errpfx, char *msg))
{
  return svn_error_trace(fs->vtable->bdb_set_errcall(fs, handler));
}
