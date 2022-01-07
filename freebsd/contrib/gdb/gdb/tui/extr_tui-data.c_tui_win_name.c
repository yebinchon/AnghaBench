
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_gen_win_info {int type; } ;


 char* CMD_NAME ;

 char* DATA_NAME ;

 char* DISASSEM_NAME ;

 char* SRC_NAME ;


char *
tui_win_name (struct tui_gen_win_info * win_info)
{
  char *name = (char *) ((void*)0);

  switch (win_info->type)
    {
    case 128:
      name = SRC_NAME;
      break;
    case 131:
      name = CMD_NAME;
      break;
    case 129:
      name = DISASSEM_NAME;
      break;
    case 130:
      name = DATA_NAME;
      break;
    default:
      name = "";
      break;
    }

  return name;
}
