
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int intr_restore (int ) ;

void
XX_RestoreAllIntr(uint32_t flags)
{

 intr_restore(flags);
}
