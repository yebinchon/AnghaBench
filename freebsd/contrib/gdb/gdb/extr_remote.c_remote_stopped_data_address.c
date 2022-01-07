
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 scalar_t__ remote_stopped_by_watchpoint () ;
 int remote_watch_data_address ;

__attribute__((used)) static CORE_ADDR
remote_stopped_data_address (void)
{
  if (remote_stopped_by_watchpoint ())
    return remote_watch_data_address;
  return (CORE_ADDR)0;
}
