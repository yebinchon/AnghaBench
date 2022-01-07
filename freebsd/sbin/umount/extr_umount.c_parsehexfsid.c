
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int fsid_t ;


 int isxdigit (char) ;
 int strlen (char const*) ;
 int strtol (char*,int *,int) ;

int
parsehexfsid(const char *hex, fsid_t *fsid)
{
 char hexbuf[3];
 int i;

 if (strlen(hex) != sizeof(*fsid) * 2)
  return (-1);
 hexbuf[2] = '\0';
 for (i = 0; i < (int)sizeof(*fsid); i++) {
  hexbuf[0] = hex[i * 2];
  hexbuf[1] = hex[i * 2 + 1];
  if (!isxdigit(hexbuf[0]) || !isxdigit(hexbuf[1]))
   return (-1);
  ((u_char *)fsid)[i] = strtol(hexbuf, ((void*)0), 16);
 }
 return (0);
}
