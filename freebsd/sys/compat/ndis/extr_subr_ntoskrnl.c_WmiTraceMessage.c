
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int STATUS_SUCCESS ;

__attribute__((used)) static uint32_t
WmiTraceMessage(uint64_t loghandle, uint32_t messageflags,
 void *guid, uint16_t messagenum, ...)
{
 return (STATUS_SUCCESS);
}
