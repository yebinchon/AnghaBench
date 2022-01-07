
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mips_desc ;
 int mips_expect (char const*) ;
 char* mips_monitor_prompt ;
 int serial_write (int ,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void
mips_send_command (const char *cmd, int prompt)
{
  serial_write (mips_desc, cmd, strlen (cmd));
  mips_expect (cmd);
  mips_expect ("\n");
  if (prompt)
    mips_expect (mips_monitor_prompt);
}
