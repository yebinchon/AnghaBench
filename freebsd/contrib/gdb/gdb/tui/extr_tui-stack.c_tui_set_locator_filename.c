
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tui_locator_element {scalar_t__* file_name; } ;
struct TYPE_2__ {struct tui_locator_element locator; } ;
struct tui_win_element {TYPE_1__ which_element; } ;
struct tui_gen_win_info {int ** content; } ;


 int MAX_LOCATOR_ELEMENT_LEN ;
 int strcat_to_buf (scalar_t__*,int ,char const*) ;
 struct tui_gen_win_info* tui_locator_win_info_ptr () ;
 int tui_set_locator_info (char const*,int *,int ,int ) ;

__attribute__((used)) static void
tui_set_locator_filename (const char *filename)
{
  struct tui_gen_win_info * locator = tui_locator_win_info_ptr ();
  struct tui_locator_element * element;

  if (locator->content[0] == ((void*)0))
    {
      tui_set_locator_info (filename, ((void*)0), 0, 0);
      return;
    }

  element = &((struct tui_win_element *) locator->content[0])->which_element.locator;
  element->file_name[0] = 0;
  strcat_to_buf (element->file_name, MAX_LOCATOR_ELEMENT_LEN, filename);
}
