
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xo_stack_t ;
struct TYPE_4__ {int xo_stack_size; int * xo_stack; } ;
typedef TYPE_1__ xo_handle_t ;


 scalar_t__ XO_DEPTH ;
 int bzero (int *,int) ;
 int xo_failure (TYPE_1__*,char*,int) ;
 int * xo_realloc (int *,int) ;

__attribute__((used)) static int
xo_depth_check (xo_handle_t *xop, int depth)
{
    xo_stack_t *xsp;

    if (depth >= xop->xo_stack_size) {
 depth += XO_DEPTH;

 xsp = xo_realloc(xop->xo_stack, sizeof(xop->xo_stack[0]) * depth);
 if (xsp == ((void*)0)) {
     xo_failure(xop, "xo_depth_check: out of memory (%d)", depth);
     return -1;
 }

 int count = depth - xop->xo_stack_size;

 bzero(xsp + xop->xo_stack_size, count * sizeof(*xsp));
 xop->xo_stack_size = depth;
 xop->xo_stack = xsp;
    }

    return 0;
}
