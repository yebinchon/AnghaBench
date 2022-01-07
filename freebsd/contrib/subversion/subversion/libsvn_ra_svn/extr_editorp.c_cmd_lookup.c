
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * cmd_handler_t ;
typedef scalar_t__ apr_size_t ;
struct TYPE_3__ {scalar_t__ len; int data; } ;
struct TYPE_4__ {int * handler; TYPE_1__ cmd; } ;


 TYPE_2__* cmd_hash ;
 scalar_t__ cmd_hash_func (char const*,scalar_t__) ;
 scalar_t__ memcmp (int ,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static cmd_handler_t
cmd_lookup(const char *cmd)
{
  apr_size_t value;
  apr_size_t len = strlen(cmd);


  if (len == 0)
    return ((void*)0);


  value = cmd_hash_func(cmd, len);


  if (cmd_hash[value].cmd.len != len)
    return ((void*)0);

  if (memcmp(cmd_hash[value].cmd.data, cmd, len))
    return ((void*)0);


  return cmd_hash[value].handler;
}
