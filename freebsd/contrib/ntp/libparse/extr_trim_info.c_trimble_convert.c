
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cmd; } ;
typedef TYPE_1__ cmd_info_t ;



cmd_info_t *
trimble_convert(
  unsigned int cmd,
  cmd_info_t *tbl
  )
{
  int i;

  for (i = 0; tbl[i].cmd != 0xFF; i++)
    {
      if (tbl[i].cmd == cmd)
 return &tbl[i];
    }
  return 0;
}
