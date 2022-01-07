
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tui_locator_element {char* proc_name; int line_no; int addr; } ;
struct TYPE_2__ {struct tui_locator_element locator; } ;
struct tui_win_element {TYPE_1__ which_element; } ;
struct tui_gen_win_info {int content_size; void** content; int type; } ;
typedef int CORE_ADDR ;


 int MAX_LOCATOR_ELEMENT_LEN ;
 int strcat_to_buf (char*,int ,char const*) ;
 scalar_t__ tui_alloc_content (int,int ) ;
 struct tui_gen_win_info* tui_locator_win_info_ptr () ;
 int tui_set_locator_filename (char const*) ;

__attribute__((used)) static void
tui_set_locator_info (const char *filename, const char *procname, int lineno,
                      CORE_ADDR addr)
{
  struct tui_gen_win_info * locator = tui_locator_win_info_ptr ();
  struct tui_locator_element * element;


  if (locator->content_size <= 0)
    {
      locator->content = (void **) tui_alloc_content (1, locator->type);
      locator->content_size = 1;
    }

  element = &((struct tui_win_element *) locator->content[0])->which_element.locator;
  element->proc_name[0] = (char) 0;
  strcat_to_buf (element->proc_name, MAX_LOCATOR_ELEMENT_LEN, procname);
  element->line_no = lineno;
  element->addr = addr;
  tui_set_locator_filename (filename);
}
