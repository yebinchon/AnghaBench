
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;

__attribute__((used)) static void
flush_buf(char *buf)
{
 if (buf[0])
  printf("%s\n", buf);
 buf[0] = '\0';
}
