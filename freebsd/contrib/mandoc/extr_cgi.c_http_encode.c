
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (unsigned char) ;
 int printf (char*,unsigned char) ;
 int putchar (char const) ;
 int * strchr (char*,char const) ;

__attribute__((used)) static void
http_encode(const char *p)
{
 for (; *p != '\0'; p++) {
  if (isalnum((unsigned char)*p) == 0 &&
      strchr("-._~", *p) == ((void*)0))
   printf("%%%2.2X", (unsigned char)*p);
  else
   putchar(*p);
 }
}
