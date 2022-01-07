
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_2__ {int use; } ;


 TYPE_1__* handles ;
 scalar_t__ num_handles ;

__attribute__((used)) static int
handle_is_ok(int i, int type)
{
 return i >= 0 && (u_int)i < num_handles && handles[i].use == type;
}
