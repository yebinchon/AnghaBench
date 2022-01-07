
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int err; } ;
typedef TYPE_1__ open_txdelta_baton_t ;


 int svn_error_compose_create (int ,int ) ;
 int svn_error_dup (int *) ;

__attribute__((used)) static void
txdelta_stream_errfunc(void *baton, svn_error_t *err)
{
  open_txdelta_baton_t *b = baton;





  b->err = svn_error_compose_create(b->err, svn_error_dup(err));
}
