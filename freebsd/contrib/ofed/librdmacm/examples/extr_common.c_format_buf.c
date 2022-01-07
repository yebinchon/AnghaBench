
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



void format_buf(void *buf, int size)
{
 uint8_t *array = buf;
 static uint8_t data;
 int i;

 for (i = 0; i < size; i++)
  array[i] = data++;
}
