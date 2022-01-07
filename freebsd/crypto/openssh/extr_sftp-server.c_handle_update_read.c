
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_2__ {int bytes_read; } ;


 int HANDLE_FILE ;
 scalar_t__ handle_is_ok (int,int ) ;
 TYPE_1__* handles ;

__attribute__((used)) static void
handle_update_read(int handle, ssize_t bytes)
{
 if (handle_is_ok(handle, HANDLE_FILE) && bytes > 0)
  handles[handle].bytes_read += bytes;
}
