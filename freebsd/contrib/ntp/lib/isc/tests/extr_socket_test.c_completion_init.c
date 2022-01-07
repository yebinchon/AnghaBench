
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int done; } ;
typedef TYPE_1__ completion_t ;


 int ISC_FALSE ;

__attribute__((used)) static void
completion_init(completion_t *completion) {
 completion->done = ISC_FALSE;
}
