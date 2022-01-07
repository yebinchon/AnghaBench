
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int xo_xsf_flags_t ;
struct TYPE_11__ {int xs_state; int xs_flags; int xs_name; } ;
typedef TYPE_1__ xo_stack_t ;
struct TYPE_12__ {size_t xo_depth; TYPE_1__* xo_stack; } ;
typedef TYPE_2__ xo_handle_t ;
typedef scalar_t__ ssize_t ;


 int XSF_MARKER_FLAGS ;






 int xo_depth_change (TYPE_2__*,int ,int,int ,int const,int ) ;
 scalar_t__ xo_do_close_container (TYPE_2__*,int *) ;
 scalar_t__ xo_do_close_instance (TYPE_2__*,int *) ;
 scalar_t__ xo_do_close_leaf_list (TYPE_2__*,int *) ;
 scalar_t__ xo_do_close_list (TYPE_2__*,int *) ;
 int xo_failure (TYPE_2__*,char*,int,scalar_t__) ;

__attribute__((used)) static int
xo_do_close_all (xo_handle_t *xop, xo_stack_t *limit)
{
    xo_stack_t *xsp;
    ssize_t rc = 0;
    xo_xsf_flags_t flags;

    for (xsp = &xop->xo_stack[xop->xo_depth]; xsp >= limit; xsp--) {
 switch (xsp->xs_state) {
 case 133:

     rc = 0;
     break;

 case 131:
     rc = xo_do_close_container(xop, ((void*)0));
     break;

 case 128:
     rc = xo_do_close_list(xop, ((void*)0));
     break;

 case 130:
     rc = xo_do_close_instance(xop, ((void*)0));
     break;

 case 129:
     rc = xo_do_close_leaf_list(xop, ((void*)0));
     break;

 case 132:
     flags = xsp->xs_flags & XSF_MARKER_FLAGS;
     xo_depth_change(xop, xsp->xs_name, -1, 0, 132, 0);
     xop->xo_stack[xop->xo_depth].xs_flags |= flags;
     rc = 0;
     break;
 }

 if (rc < 0)
     xo_failure(xop, "close %d failed: %d", xsp->xs_state, rc);
    }

    return 0;
}
