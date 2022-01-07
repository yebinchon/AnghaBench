
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



void
ns_name_rollback(const u_char *src, const u_char **dnptrs,
   const u_char **lastdnptr)
{
 while (dnptrs < lastdnptr && *dnptrs != ((void*)0)) {
  if (*dnptrs >= src) {
   *dnptrs = ((void*)0);
   break;
  }
  dnptrs++;
 }
}
