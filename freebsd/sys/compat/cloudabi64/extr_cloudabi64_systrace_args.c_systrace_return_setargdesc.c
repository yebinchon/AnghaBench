
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static void
systrace_return_setargdesc(int sysnum, int ndx, char *desc, size_t descsz)
{
 const char *p = ((void*)0);
 switch (sysnum) {

 case 0:
  if (ndx == 0 || ndx == 1)
   p = "cloudabi_timestamp_t";
  break;

 case 1:
  if (ndx == 0 || ndx == 1)
   p = "cloudabi_timestamp_t";
  break;

 case 2:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 3:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 4:
  if (ndx == 0 || ndx == 1)
   p = "cloudabi_fd_t";
  break;

 case 5:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 6:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 7:
  if (ndx == 0 || ndx == 1)
   p = "cloudabi_fd_t";
  break;

 case 8:
  if (ndx == 0 || ndx == 1)
   p = "size_t";
  break;

 case 9:
  if (ndx == 0 || ndx == 1)
   p = "size_t";
  break;

 case 10:
  if (ndx == 0 || ndx == 1)
   p = "size_t";
  break;

 case 11:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 12:
  if (ndx == 0 || ndx == 1)
   p = "cloudabi_filesize_t";
  break;

 case 13:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 14:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 15:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 16:
  if (ndx == 0 || ndx == 1)
   p = "size_t";
  break;

 case 17:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 18:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 19:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 20:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 21:
  if (ndx == 0 || ndx == 1)
   p = "cloudabi_fd_t";
  break;

 case 22:
  if (ndx == 0 || ndx == 1)
   p = "size_t";
  break;

 case 23:
  if (ndx == 0 || ndx == 1)
   p = "size_t";
  break;

 case 24:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 25:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 26:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 27:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 28:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 29:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 30:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 31:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 32:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 33:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 34:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 35:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 36:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 37:
  if (ndx == 0 || ndx == 1)
   p = "size_t";
  break;

 case 38:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 39:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 40:

 case 41:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 42:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 43:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 44:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 45:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 46:
  if (ndx == 0 || ndx == 1)
   p = "cloudabi_tid_t";
  break;

 case 47:
  if (ndx == 0 || ndx == 1)
   p = "void";
  break;

 case 48:
 default:
  break;
 };
 if (p != ((void*)0))
  strlcpy(desc, p, descsz);
}
