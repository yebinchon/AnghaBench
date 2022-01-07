
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memset (void*,int ,size_t) ;

__attribute__((used)) static void
RtlFillMemory(void *dst, size_t len, uint8_t c)
{
 memset(dst, c, len);
}
