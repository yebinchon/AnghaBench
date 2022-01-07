
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {char* file_name; char* proc_name; int addr; int line_no; } ;
struct TYPE_11__ {char* name; char* content; void* highlight; int * value; int item_no; int type; } ;
struct TYPE_10__ {char* line; } ;
struct TYPE_14__ {int type; } ;
struct TYPE_8__ {int line_no; } ;
struct TYPE_9__ {char* line; void* has_break; void* is_exec_point; TYPE_1__ line_or_addr; } ;
struct TYPE_13__ {int simple_string; TYPE_5__ locator; TYPE_4__ data; TYPE_3__ command; TYPE_7__ data_window; TYPE_2__ source; } ;
struct tui_win_element {TYPE_6__ which_element; void* highlight; } ;
struct tui_gen_win_info {void** content; int content_size; } ;
typedef enum tui_win_type { ____Placeholder_tui_win_type } tui_win_type ;







 void* FALSE ;


 int TUI_REGISTER ;
 int UNDEFINED_ITEM ;
 int memset (int ,char,int) ;
 scalar_t__ tui_alloc_content (int,int) ;
 int tui_init_generic_part (TYPE_7__*) ;

void
init_content_element (struct tui_win_element * element, enum tui_win_type type)
{
  element->highlight = FALSE;
  switch (type)
    {
    case 128:
    case 131:
      element->which_element.source.line = (char *) ((void*)0);
      element->which_element.source.line_or_addr.line_no = 0;
      element->which_element.source.is_exec_point = FALSE;
      element->which_element.source.has_break = FALSE;
      break;
    case 132:
      tui_init_generic_part (&element->which_element.data_window);
      element->which_element.data_window.type = 133;
      ((struct tui_gen_win_info *) & element->which_element.data_window)->content =
 (void **) tui_alloc_content (1, 133);
      ((struct tui_gen_win_info *)
       & element->which_element.data_window)->content_size = 1;
      break;
    case 134:
      element->which_element.command.line = (char *) ((void*)0);
      break;
    case 133:
      element->which_element.data.name = (char *) ((void*)0);
      element->which_element.data.type = TUI_REGISTER;
      element->which_element.data.item_no = UNDEFINED_ITEM;
      element->which_element.data.value = ((void*)0);
      element->which_element.data.highlight = FALSE;
      element->which_element.data.content = (char*) ((void*)0);
      break;
    case 129:
      element->which_element.locator.file_name[0] =
 element->which_element.locator.proc_name[0] = (char) 0;
      element->which_element.locator.line_no = 0;
      element->which_element.locator.addr = 0;
      break;
    case 130:
      memset(element->which_element.simple_string, ' ',
             sizeof(element->which_element.simple_string));
      break;
    default:
      break;
    }
}
