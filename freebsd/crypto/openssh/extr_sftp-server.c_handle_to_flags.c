
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int HANDLE_FILE ;
 scalar_t__ handle_is_ok (int,int ) ;
 TYPE_1__* handles ;

__attribute__((used)) static int
handle_to_flags(int handle)
{
 if (handle_is_ok(handle, HANDLE_FILE))
  return handles[handle].flags;
 return 0;
}
