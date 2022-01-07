
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int CHAR_BIT ;
 int EINVAL ;
 char* _PATH_STDPATH ;
 int errno ;
 int strlcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

size_t
confstr(int name, char *buf, size_t len)
{
 const char *p;
 const char UPE[] = "unsupported programming environment";

 switch (name) {
 case 141:
  p = _PATH_STDPATH;
  goto docopy;
 case 140:
 case 139:
 case 138:
 case 131:
 case 130:
 case 129:



  p = UPE;
  goto docopy;

 case 137:
 case 136:
 case 135:
  if (sizeof(long) * CHAR_BIT == 32 &&
      sizeof(off_t) > sizeof(long))
   p = "";
  else
   p = UPE;
  goto docopy;

 case 134:
 case 133:
 case 132:
  if (sizeof(long) * CHAR_BIT >= 64 &&
      sizeof(void *) * CHAR_BIT >= 64 &&
      sizeof(int) * CHAR_BIT >= 32 &&
      sizeof(off_t) >= sizeof(long))
   p = "";
  else
   p = UPE;
  goto docopy;

 case 128:

  if (sizeof(long) * CHAR_BIT >= 64)
   p = "_POSIX_V6_LP64_OFF64";
  else
   p = "_POSIX_V6_ILP32_OFFBIG";
  goto docopy;

docopy:
  if (len != 0 && buf != ((void*)0))
   strlcpy(buf, p, len);
  return (strlen(p) + 1);

 default:
  errno = EINVAL;
  return (0);
 }

}
