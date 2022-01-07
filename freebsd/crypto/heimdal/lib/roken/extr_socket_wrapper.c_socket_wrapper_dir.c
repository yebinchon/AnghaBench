
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static const char *socket_wrapper_dir(void)
{
 const char *s = getenv("SOCKET_WRAPPER_DIR");
 if (s == ((void*)0)) {
  return ((void*)0);
 }
 if (strncmp(s, "./", 2) == 0) {
  s += 2;
 }
 return s;
}
