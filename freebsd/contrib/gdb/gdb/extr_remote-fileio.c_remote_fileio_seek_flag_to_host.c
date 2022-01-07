
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;

__attribute__((used)) static int
remote_fileio_seek_flag_to_host (long num, int *flag)
{
  if (!flag)
    return 0;
  switch (num)
    {
      case 128:
        *flag = SEEK_SET;
 break;
      case 130:
        *flag = SEEK_CUR;
 break;
      case 129:
        *flag = SEEK_END;
 break;
      default:
        return -1;
    }
  return 0;
}
