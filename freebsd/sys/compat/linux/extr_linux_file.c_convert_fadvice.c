
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POSIX_FADV_DONTNEED ;
 int POSIX_FADV_NOREUSE ;
 int POSIX_FADV_NORMAL ;
 int POSIX_FADV_RANDOM ;
 int POSIX_FADV_SEQUENTIAL ;
 int POSIX_FADV_WILLNEED ;

__attribute__((used)) static int
convert_fadvice(int advice)
{
 switch (advice) {
 case 131:
  return (POSIX_FADV_NORMAL);
 case 130:
  return (POSIX_FADV_RANDOM);
 case 129:
  return (POSIX_FADV_SEQUENTIAL);
 case 128:
  return (POSIX_FADV_WILLNEED);
 case 133:
  return (POSIX_FADV_DONTNEED);
 case 132:
  return (POSIX_FADV_NOREUSE);
 default:
  return (-1);
 }
}
