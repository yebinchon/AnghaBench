
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
trim(char *buf, size_t len, const char *name)
{
 char *path = buf, *epath = buf + len;
 while (path < epath && (*path++ = *name++) != '\0')
  continue;
 path--;
 while (path > buf && *--path == '/')
  *path = '\0';
}
