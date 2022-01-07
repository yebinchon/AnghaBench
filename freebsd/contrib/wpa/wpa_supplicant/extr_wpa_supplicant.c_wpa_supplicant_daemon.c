
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_DEBUG ;
 int os_daemonize (char const*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wpa_supplicant_daemon(const char *pid_file)
{
 wpa_printf(MSG_DEBUG, "Daemonize..");
 return os_daemonize(pid_file);
}
