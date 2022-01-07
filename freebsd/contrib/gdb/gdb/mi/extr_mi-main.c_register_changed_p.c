
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t DEPRECATED_REGISTER_BYTE (int) ;
 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 int MAX_REGISTER_SIZE ;
 int deprecated_selected_frame ;
 int frame_register_read (int ,int,char*) ;
 scalar_t__ memcmp (int *,char*,int ) ;
 int memcpy (int *,char*,int ) ;
 int * old_regs ;

__attribute__((used)) static int
register_changed_p (int regnum)
{
  char raw_buffer[MAX_REGISTER_SIZE];

  if (! frame_register_read (deprecated_selected_frame, regnum, raw_buffer))
    return -1;

  if (memcmp (&old_regs[DEPRECATED_REGISTER_BYTE (regnum)], raw_buffer,
       DEPRECATED_REGISTER_RAW_SIZE (regnum)) == 0)
    return 0;



  memcpy (&old_regs[DEPRECATED_REGISTER_BYTE (regnum)], raw_buffer,
   DEPRECATED_REGISTER_RAW_SIZE (regnum));

  return 1;
}
