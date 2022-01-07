
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * context; } ;
typedef TYPE_1__ svn_sqlite__context_t ;
typedef int svn_error_t ;
struct function_wrapper_baton_t {int baton; int * (* func ) (TYPE_1__*,int,void*,int ) ;} ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int buf ;


 int sqlite3_result_error (int *,int ,int) ;
 struct function_wrapper_baton_t* sqlite3_user_data (int *) ;
 int * stub1 (TYPE_1__*,int,void*,int ) ;
 int svn_err_best_message (int *,char*,int) ;
 int svn_error_clear (int *) ;

__attribute__((used)) static void
wrapped_func(sqlite3_context *context,
             int argc,
             sqlite3_value *values[])
{
  struct function_wrapper_baton_t *fwb = sqlite3_user_data(context);
  svn_sqlite__context_t sctx;
  svn_error_t *err;
  void *void_values = values;

  sctx.context = context;

  err = fwb->func(&sctx, argc, void_values, fwb->baton);

  if (err)
    {
      char buf[256];
      sqlite3_result_error(context,
                           svn_err_best_message(err, buf, sizeof(buf)),
                           -1);
      svn_error_clear(err);
    }
}
