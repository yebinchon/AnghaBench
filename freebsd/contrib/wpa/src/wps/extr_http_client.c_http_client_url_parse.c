
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {void* sin_port; int sin_addr; int sin_family; } ;


 int AF_INET ;
 int MSG_DEBUG ;
 int atoi (char*) ;
 void* htons (int) ;
 scalar_t__ inet_aton (char*,int *) ;
 int os_free (char*) ;
 int os_memset (struct sockaddr_in*,int ,int) ;
 char* os_strchr (char*,char) ;
 char* os_strdup (char const*) ;
 int wpa_printf (int ,char*,char const*,char*,char*) ;

char * http_client_url_parse(const char *url, struct sockaddr_in *dst,
        char **ret_path)
{
 char *u, *addr, *port, *path;

 u = os_strdup(url);
 if (u == ((void*)0))
  return ((void*)0);

 os_memset(dst, 0, sizeof(*dst));
 dst->sin_family = AF_INET;
 addr = u + 7;
 path = os_strchr(addr, '/');
 port = os_strchr(addr, ':');
 if (path == ((void*)0)) {
  path = "/";
 } else {
  *path = '\0';
  if (port > path)
   port = ((void*)0);
 }
 if (port)
  *port++ = '\0';

 if (inet_aton(addr, &dst->sin_addr) == 0) {

  wpa_printf(MSG_DEBUG, "HTTP: Unsupported address in URL '%s' "
      "(addr='%s' port='%s')",
      url, addr, port);
  os_free(u);
  return ((void*)0);
 }

 if (port)
  dst->sin_port = htons(atoi(port));
 else
  dst->sin_port = htons(80);

 if (*path == '\0') {

  *path = '/';
 }

 *ret_path = path;

 return u;
}
