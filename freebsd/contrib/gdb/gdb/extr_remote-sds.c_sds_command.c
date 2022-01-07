
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fromhex (char) ;
 int printf_filtered (char*,...) ;
 int sds_send (unsigned char*,int) ;

__attribute__((used)) static void
sds_command (char *args, int from_tty)
{
  char *p;
  int i, len, retlen;
  unsigned char buf[1000];


  p = args;
  len = 0;
  while (*p != '\0')
    {
      buf[len++] = fromhex (p[0]) * 16 + fromhex (p[1]);
      if (p[1] == '\0')
 break;
      p += 2;
    }

  retlen = sds_send (buf, len);

  printf_filtered ("Reply is ");
  for (i = 0; i < retlen; ++i)
    {
      printf_filtered ("%02x", buf[i]);
    }
  printf_filtered ("\n");
}
