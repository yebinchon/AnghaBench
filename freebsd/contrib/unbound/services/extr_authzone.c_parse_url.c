
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUTH_HTTPS_PORT ;
 int AUTH_HTTP_PORT ;
 char* dup_all (char*) ;
 char* dup_prefix (char*,size_t) ;
 int free (char*) ;
 int log_err (char*,...) ;
 char* str_find_first_of_chars (char*,char,char) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strstr (char*,char*) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static int
parse_url(char* url, char** host, char** file, int* port, int* ssl)
{
 char* p = url;



 *ssl = 1;
 *port = AUTH_HTTPS_PORT;


 if(strncmp(p, "http://", 7) == 0) {
  p += 7;
  *ssl = 0;
  *port = AUTH_HTTP_PORT;
 } else if(strncmp(p, "https://", 8) == 0) {
  p += 8;
 } else if(strstr(p, "://") && strchr(p, '/') > strstr(p, "://") &&
  strchr(p, ':') >= strstr(p, "://")) {
  char* uri = dup_prefix(p, (size_t)(strstr(p, "://")-p));
  log_err("protocol %s:// not supported (for url %s)",
   uri?uri:"", p);
  free(uri);
  return 0;
 }


 if(p[0] == '[') {
  char* end = strchr(p, ']');
  p++;
  if(end) {
   *host = dup_prefix(p, (size_t)(end-p));
   if(!*host) return 0;
   p = end+1;
  } else {
   *host = dup_all(p);
   if(!*host) return 0;
   p = end;
  }
 } else {
  char* end = str_find_first_of_chars(p, ':', '/');
  if(end) {
   *host = dup_prefix(p, (size_t)(end-p));
   if(!*host) return 0;
  } else {
   *host = dup_all(p);
   if(!*host) return 0;
  }
  p = end;
 }


 if(p && p[0] == ':') {
  char* end = ((void*)0);
  *port = strtol(p+1, &end, 10);
  p = end;
 }


 while(p && *p == '/')
  p++;
 if(!p || p[0] == 0)
  *file = strdup("index.html");
 else *file = strdup(p);
 if(!*file) {
  log_err("malloc failure");
  return 0;
 }
 return 1;
}
