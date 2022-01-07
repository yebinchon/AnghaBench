
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int new_data; int num_ops; int ops; } ;
typedef TYPE_1__ svn_txdelta_window_t ;
typedef int svn_temp_serializer__context_t ;


 int serialize_svn_string (int *,int *) ;
 int serialize_txdelta_ops (int *,int *,int ) ;
 int svn_temp_serializer__pop (int *) ;
 int svn_temp_serializer__push (int *,void const* const*,int) ;

__attribute__((used)) static void
serialize_txdeltawindow(svn_temp_serializer__context_t *context,
                        svn_txdelta_window_t * const * w)
{
  svn_txdelta_window_t *window = *w;


  svn_temp_serializer__push(context,
                            (const void * const *)w,
                            sizeof(svn_txdelta_window_t));


  serialize_txdelta_ops(context, &window->ops, window->num_ops);
  serialize_svn_string(context, &window->new_data);

  svn_temp_serializer__pop(context);
}
