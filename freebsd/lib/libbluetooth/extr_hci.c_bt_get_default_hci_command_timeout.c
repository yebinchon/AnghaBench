
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int to ;
typedef int time_t ;


 int ERANGE ;
 int errno ;
 scalar_t__ sysctlbyname (char*,int*,size_t*,int *,int ) ;

__attribute__((used)) static time_t
bt_get_default_hci_command_timeout(void)
{
 int to;
 size_t to_size = sizeof(to);

 if (sysctlbyname("net.bluetooth.hci.command_timeout",
    &to, &to_size, ((void*)0), 0) < 0)
  return (-1);


 if (to <= 0) {
  errno = ERANGE;
  return (-1);
 }

 return ((time_t)to);
}
