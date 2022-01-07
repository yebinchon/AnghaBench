
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MSG_DONTWAIT ;
 int echo ;
 scalar_t__ flags ;
 int strlen (char const*) ;
 int strncasecmp (char*,char const*,int) ;
 int use_async ;
 scalar_t__ use_rs ;

__attribute__((used)) static int set_test_opt(const char *arg)
{
 if (strlen(arg) == 1) {
  switch (arg[0]) {
  case 's':
   use_rs = 0;
   break;
  case 'a':
   use_async = 1;
   break;
  case 'b':
   flags = 0;
   break;
  case 'n':
   flags = MSG_DONTWAIT;
   break;
  case 'e':
   echo = 1;
   break;
  default:
   return -1;
  }
 } else {
  if (!strncasecmp("socket", arg, 6)) {
   use_rs = 0;
  } else if (!strncasecmp("async", arg, 5)) {
   use_async = 1;
  } else if (!strncasecmp("block", arg, 5)) {
   flags = 0;
  } else if (!strncasecmp("nonblock", arg, 8)) {
   flags = MSG_DONTWAIT;
  } else if (!strncasecmp("echo", arg, 4)) {
   echo = 1;
  } else {
   return -1;
  }
 }
 return 0;
}
