
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
 int execv (char*,char**) ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int htonl (int) ;
 int http_req ;
 int http_server_deinit (struct http_server*) ;
 struct http_server* http_server_init (struct in_addr*,int,int ,struct browser_data*) ;
 int os_memset (struct browser_data*,int ,int) ;
 char const* strerror (int ) ;
 int wpa_printf (int ,char*,...) ;

int hs20_web_browser(const char *url)
{
 struct http_server *http;
 struct in_addr addr;
 struct browser_data data;
 pid_t pid;

 wpa_printf(MSG_INFO, "Launching system browser to %s", url);

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

  char *argv[3];

  argv[0] = "browser-system";
  argv[1] = (void *) url;
  argv[2] = ((void*)0);

  execv("/usr/bin/x-www-browser", argv);
  wpa_printf(MSG_ERROR, "execv: %s", strerror(errno));
  exit(0);
  return -1;
 }

 eloop_register_timeout(120, 0, browser_timeout, &data, ((void*)0));
 eloop_run();
 eloop_cancel_timeout(browser_timeout, &data, ((void*)0));
 http_server_deinit(http);
 eloop_destroy();



 return data.success;
}
