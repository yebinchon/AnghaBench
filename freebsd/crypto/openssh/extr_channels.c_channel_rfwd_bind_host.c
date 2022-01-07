
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static const char *
channel_rfwd_bind_host(const char *listen_host)
{
 if (listen_host == ((void*)0)) {
  return "localhost";
 } else if (*listen_host == '\0' || strcmp(listen_host, "*") == 0) {
  return "";
 } else
  return listen_host;
}
