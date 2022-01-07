
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ibd_nd_format ;

__attribute__((used)) static void build_node_desc(char *dest, size_t len,
       const char *device, const char *hostname)
{
 char *end = dest + len-1;
 const char *field;
 char *src = ibd_nd_format;

 while (*src && (dest < end)) {
  if (*src != '%') {
   *dest++ = *src++;
  } else {
   src++;
   switch (*src) {
   case 'h':
    field = hostname;
    while (*field && (*field != '.') && (dest < end))
     *dest++ = *field++;
    break;
   case 'd':
    field = device;
    while (*field && (dest < end))
     *dest++ = *field++;
    break;
   }
   src++;
  }
 }
 *dest = 0;
}
