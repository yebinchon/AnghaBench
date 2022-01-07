
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void
print_data(unsigned char *data, size_t len)
{
    int i;
    for(i = 0; i < len; i++) {
 if(i > 0 && (i % 16) == 0)
     printf("\n            ");
 printf("%02x ", data[i]);
    }
    printf("\n");
}
