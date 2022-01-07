
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONGEST ;


 int remote_fileio_extract_long (char**,scalar_t__*) ;

__attribute__((used)) static int
remote_fileio_extract_int (char **buf, long *retint)
{
  int ret;
  LONGEST retlong;

  if (!retint)
    return -1;
  ret = remote_fileio_extract_long (buf, &retlong);
  if (!ret)
    *retint = (long) retlong;
  return ret;
}
