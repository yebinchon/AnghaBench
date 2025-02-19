
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONGEST ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ remote_fileio_extract_long (char**,scalar_t__*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int
remote_fileio_extract_ptr_w_len (char **buf, CORE_ADDR *ptrval, int *length)
{
  char *c;
  LONGEST retlong;

  if (!buf || !*buf || !**buf || !ptrval || !length)
    return -1;
  c = strchr (*buf, '/');
  if (!c)
    return -1;
  *c++ = '\0';
  if (remote_fileio_extract_long (buf, &retlong))
    return -1;
  *ptrval = (CORE_ADDR) retlong;
  *buf = c;
  if (remote_fileio_extract_long (buf, &retlong))
    return -1;
  *length = (int) retlong;
  return 0;
}
