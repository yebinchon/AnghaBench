
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;

char *
cleanhostname(char *host)
{
 if (*host == '[' && host[strlen(host) - 1] == ']') {
  host[strlen(host) - 1] = '\0';
  return (host + 1);
 } else
  return host;
}
