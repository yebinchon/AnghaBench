
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ instream ;
 scalar_t__* line ;
 scalar_t__ server_command ;
 scalar_t__ stdin ;

void
dont_repeat (void)
{
  if (server_command)
    return;




  if (instream == stdin)
    *line = 0;
}
