
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAX_WRAPPED_INTERFACES ;
 char* getenv (char*) ;
 int sscanf (char const*,char*,unsigned int*) ;

__attribute__((used)) static unsigned int socket_wrapper_default_iface(void)
{
 const char *s = getenv("SOCKET_WRAPPER_DEFAULT_IFACE");
 if (s) {
  unsigned int iface;
  if (sscanf(s, "%u", &iface) == 1) {
   if (iface >= 1 && iface <= MAX_WRAPPED_INTERFACES) {
    return iface;
   }
  }
 }

 return 1;
}
