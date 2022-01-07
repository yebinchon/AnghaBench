
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int strlenChar(const char *z){
  int n = 0;
  while( *z ){
    if( (0xc0&*(z++))!=0x80 ) n++;
  }
  return n;
}
