
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void
print_data(const char* msg, const char* data, int len)
{
 int i;
 printf("%s: ", msg);
 for(i=0; i<len; i++) {
  printf(" %2.2x", (unsigned char)data[i]);
 }
 printf("\n");
}
