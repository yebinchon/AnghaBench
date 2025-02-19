
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
spool_str(char** at, size_t* left, int* ret, const char* buf, int len)
{
 int i;
 for(i=0; i<len; i++) {
  if(*left > 1) {
   *(*at)++ = buf[i];
   (*left)--;
  }
  (*ret)++;
 }
}
