
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;
struct http_server {int dummy; } ;
struct browser_data {int success; } ;
typedef scalar_t__ pid_t ;
typedef int data ;


 int MSG_ERROR ;
 int MSG_INFO ;
 int browser_timeout ;
 int eloop_cancel_timeout (int ,struct browser_data*,int *) ;
 int eloop_destroy () ;
 scalar_t__ eloop_init () ;
 int eloop_register_timeout (int,int ,int ,struct browser_data*,int *) ;
 int eloop_run () ;
 int errno ;
 int execve (char*,char**,char**) ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int htonl (int) ;
 int http_req ;
 int http_server_deinit (struct http_server*) ;
 struct http_server* http_server_init (struct in_addr*,int,int ,struct browser_data*) ;
 scalar_t__ os_exec (char*,char*,int) ;
 int os_memset (struct browser_data*,int ,int) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,...) ;

int hs20_web_browser(const char *url)
{
 struct http_server *http;
 struct in_addr addr;
 struct browser_data data;
 pid_t pid;

 wpa_printf(MSG_INFO, "Launching wpadebug browser to %s", url);

 os_memset(&data, 0, sizeof(data));

 if (eloop_init() < 0) {
  wpa_printf(MSG_ERROR, "eloop_init failed");
  return -1;
 }
 addr.s_addr = htonl((127 << 24) | 1);
 http = http_server_init(&addr, 12345, http_req, &data);
 if (http == ((void*)0)) {
  wpa_printf(MSG_ERROR, "http_server_init failed");
  eloop_destroy();
  return -1;
 }

 pid = fork();
 if (pid < 0) {
  wpa_printf(MSG_ERROR, "fork: %s", strerror(errno));
  http_server_deinit(http);
  eloop_destroy();
  return -1;
 }

 if (pid == 0) {

  char *argv[14];
  char *envp[] = { "PATH=/system/bin:/vendor/bin", ((void*)0) };

  argv[0] = "browser-wpadebug";
  argv[1] = "start";
  argv[2] = "-a";
  argv[3] = "android.action.MAIN";
  argv[4] = "-c";
  argv[5] = "android.intent.category.LAUNCHER";
  argv[6] = "-n";
  argv[7] = "w1.fi.wpadebug/.WpaWebViewActivity";
  argv[8] = "-e";
  argv[9] = "w1.fi.wpadebug.URL";
  argv[10] = (void *) url;
  argv[11] = "--user";
  argv[12] = "-3";
  argv[13] = ((void*)0);

  execve("/system/bin/am", argv, envp);
  wpa_printf(MSG_ERROR, "execve: %s", strerror(errno));
  exit(0);
  return -1;
 }

 eloop_register_timeout(300, 0, browser_timeout, &data, ((void*)0));
 eloop_run();
 eloop_cancel_timeout(browser_timeout, &data, ((void*)0));
 http_server_deinit(http);
 eloop_destroy();

 wpa_printf(MSG_INFO, "Closing Android browser");
 if (os_exec("/system/bin/am",
      "start -a android.action.MAIN "
      "-c android.intent.category.LAUNCHER "
      "-n w1.fi.wpadebug/.WpaWebViewActivity "
      "-e w1.fi.wpadebug.URL FINISH", 1) != 0) {
  wpa_printf(MSG_INFO, "Failed to close wpadebug browser");
 }

 return data.success;
}
