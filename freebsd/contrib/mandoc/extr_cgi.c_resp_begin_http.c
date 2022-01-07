
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int printf (char*,...) ;
 int stdout ;

__attribute__((used)) static void
resp_begin_http(int code, const char *msg)
{

 if (200 != code)
  printf("Status: %d %s\r\n", code, msg);

 printf("Content-Type: text/html; charset=utf-8\r\n"
      "Cache-Control: no-cache\r\n"
      "Pragma: no-cache\r\n"
      "\r\n");

 fflush(stdout);
}
