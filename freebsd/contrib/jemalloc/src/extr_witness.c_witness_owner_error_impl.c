
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rank; int name; } ;
typedef TYPE_1__ witness_t ;


 int abort () ;
 int malloc_printf (char*,int ,int ) ;

__attribute__((used)) static void
witness_owner_error_impl(const witness_t *witness) {
 malloc_printf("<jemalloc>: Should own %s(%u)\n", witness->name,
     witness->rank);
 abort();
}
