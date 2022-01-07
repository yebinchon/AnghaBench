
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hostapd_cli_close_connection () ;
 int os_daemonize_terminate (scalar_t__) ;
 int os_program_deinit () ;
 scalar_t__ pid_file ;

__attribute__((used)) static void hostapd_cli_cleanup(void)
{
 hostapd_cli_close_connection();
 if (pid_file)
  os_daemonize_terminate(pid_file);

 os_program_deinit();
}
