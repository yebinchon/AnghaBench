
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; int dirp; int fd; } ;


 int ENOENT ;
 int HANDLE_DIR ;
 int HANDLE_FILE ;
 int close (int ) ;
 int closedir (int ) ;
 int errno ;
 int free (int ) ;
 scalar_t__ handle_is_ok (int,int ) ;
 int handle_unused (int) ;
 TYPE_1__* handles ;

__attribute__((used)) static int
handle_close(int handle)
{
 int ret = -1;

 if (handle_is_ok(handle, HANDLE_FILE)) {
  ret = close(handles[handle].fd);
  free(handles[handle].name);
  handle_unused(handle);
 } else if (handle_is_ok(handle, HANDLE_DIR)) {
  ret = closedir(handles[handle].dirp);
  free(handles[handle].name);
  handle_unused(handle);
 } else {
  errno = ENOENT;
 }
 return ret;
}
