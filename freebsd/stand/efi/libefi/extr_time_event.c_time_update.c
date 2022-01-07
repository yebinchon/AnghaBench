
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EFI_EVENT ;


 int curtime ;

__attribute__((used)) static void
time_update(EFI_EVENT event, void *context)
{

 curtime += 10;
}
