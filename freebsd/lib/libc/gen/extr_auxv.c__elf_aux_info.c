
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
 int EINVAL ;
 int ENOENT ;
 int ENOSYS ;
 int * __elf_aux_vector ;
 int __init_elf_aux_vector () ;
 int _once (int *,int ) ;
 int aux_once ;
 int * canary ;
 int canary_len ;
 int * execpath ;
 int hwcap ;
 int hwcap2 ;
 int hwcap2_present ;
 int hwcap_present ;
 int init_aux ;
 int memcpy (void*,int *,int) ;
 int memset (int *,int ,int) ;
 int ncpus ;
 int osreldate ;
 int pagesize ;
 int * pagesizes ;
 int pagesizes_len ;
 int strlcpy (void*,int *,int) ;
 int * timekeep ;

int
_elf_aux_info(int aux, void *buf, int buflen)
{
 int res;

 __init_elf_aux_vector();
 if (__elf_aux_vector == ((void*)0))
  return (ENOSYS);
 _once(&aux_once, init_aux);

 switch (aux) {
 case 136:
  if (canary != ((void*)0) && canary_len >= buflen) {
   memcpy(buf, canary, buflen);
   memset(canary, 0, canary_len);
   canary = ((void*)0);
   res = 0;
  } else
   res = ENOENT;
  break;
 case 135:
  if (execpath == ((void*)0))
   res = ENOENT;
  else if (buf == ((void*)0))
   res = EINVAL;
  else {
   if (strlcpy(buf, execpath, buflen) >= buflen)
    res = EINVAL;
   else
    res = 0;
  }
  break;
 case 134:
  if (hwcap_present && buflen == sizeof(u_long)) {
   *(u_long *)buf = hwcap;
   res = 0;
  } else
   res = ENOENT;
  break;
 case 133:
  if (hwcap2_present && buflen == sizeof(u_long)) {
   *(u_long *)buf = hwcap2;
   res = 0;
  } else
   res = ENOENT;
  break;
 case 130:
  if (pagesizes != ((void*)0) && pagesizes_len >= buflen) {
   memcpy(buf, pagesizes, buflen);
   res = 0;
  } else
   res = ENOENT;
  break;
 case 129:
  if (buflen == sizeof(int)) {
   if (pagesize != 0) {
    *(int *)buf = pagesize;
    res = 0;
   } else
    res = ENOENT;
  } else
   res = EINVAL;
  break;
 case 131:
  if (buflen == sizeof(int)) {
   if (osreldate != 0) {
    *(int *)buf = osreldate;
    res = 0;
   } else
    res = ENOENT;
  } else
   res = EINVAL;
  break;
 case 132:
  if (buflen == sizeof(int)) {
   if (ncpus != 0) {
    *(int *)buf = ncpus;
    res = 0;
   } else
    res = ENOENT;
  } else
   res = EINVAL;
  break;
 case 128:
  if (buflen == sizeof(void *)) {
   if (timekeep != ((void*)0)) {
    *(void **)buf = timekeep;
    res = 0;
   } else
    res = ENOENT;
  } else
   res = EINVAL;
  break;
 default:
  res = ENOENT;
  break;
 }
 return (res);
}
