
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int printf (char*,long long) ;

int verify_buf(void *buf, int size)
{
 static long long total_bytes;
 uint8_t *array = buf;
 static uint8_t data;
 int i;

 for (i = 0; i < size; i++, total_bytes++) {
  if (array[i] != data++) {
   printf("data verification failed byte %lld\n", total_bytes);
   return -1;
  }
 }
 return 0;
}
