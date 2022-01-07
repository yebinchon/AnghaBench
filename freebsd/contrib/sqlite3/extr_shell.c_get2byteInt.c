
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int get2byteInt(unsigned char *a){
  return (a[0]<<8) + a[1];
}
