
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_state {int dummy; } ;


 int current_gdbarch ;
 struct remote_state* gdbarch_data (int ,int ) ;
 int remote_gdbarch_data_handle ;

__attribute__((used)) static struct remote_state *
get_remote_state (void)
{
  return gdbarch_data (current_gdbarch, remote_gdbarch_data_handle);
}
