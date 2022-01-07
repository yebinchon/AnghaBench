
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uid_t ;
struct TYPE_4__ {int key; void* mask; void* denied; void* allowed; } ;
typedef TYPE_1__ acevals_t ;


 void* ACE_MASK_UNDEFINED ;
 int bzero (TYPE_1__*,int) ;

__attribute__((used)) static void
acevals_init(acevals_t *vals, uid_t key)
{
 bzero(vals, sizeof (*vals));
 vals->allowed = ACE_MASK_UNDEFINED;
 vals->denied = ACE_MASK_UNDEFINED;
 vals->mask = ACE_MASK_UNDEFINED;
 vals->key = key;
}
