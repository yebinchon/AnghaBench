
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tui_first_reg_element_no_inline (int) ;

int
tui_first_data_element_no_in_line (int line_no)
{
  int first_element_no = (-1);





  if ((first_element_no = tui_first_reg_element_no_inline (line_no)) == -1)
    {


    }

  return first_element_no;
}
