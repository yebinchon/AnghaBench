
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int server; } ;
typedef TYPE_1__ fs_warning_baton_t ;


 int log_error (int *,int ) ;

__attribute__((used)) static void
fs_warning_func(void *baton, svn_error_t *err)
{
  fs_warning_baton_t *b = baton;
  log_error(err, b->server);
}
