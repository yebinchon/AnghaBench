
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_data_element {scalar_t__ value; } ;
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
typedef enum tui_status { ____Placeholder_tui_status } tui_status ;


 int FALSE ;
 int MAX_REGISTER_SIZE ;
 int TRUE ;
 int TUI_FAILURE ;
 int TUI_SUCCESS ;
 int get_frame_register (struct frame_info*,int,char*) ;
 scalar_t__ register_cached (int) ;
 int register_size (struct gdbarch*,int) ;
 scalar_t__ target_has_registers ;
 int tui_register_format (struct gdbarch*,struct frame_info*,struct tui_data_element*,int) ;

__attribute__((used)) static enum tui_status
tui_get_register (struct gdbarch *gdbarch, struct frame_info *frame,
                  struct tui_data_element *data, int regnum, int *changedp)
{
  enum tui_status ret = TUI_FAILURE;

  if (changedp)
    *changedp = FALSE;
  if (target_has_registers)
    {
      char buf[MAX_REGISTER_SIZE];

      get_frame_register (frame, regnum, buf);



      if (register_cached (regnum) >= 0)
        {
          if (changedp)
            {
              int size = register_size (gdbarch, regnum);
              char *old = (char*) data->value;
              int i;

              for (i = 0; i < size; i++)
                if (buf[i] != old[i])
                  {
                    *changedp = TRUE;
                    old[i] = buf[i];
                  }
            }


          if (changedp == 0 || *changedp == TRUE)
            tui_register_format (gdbarch, frame, data, regnum);
          ret = TUI_SUCCESS;
        }
    }
  return ret;
}
