
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;


 int MTX_DEF ;
 int mtx_init (struct mtx*,char*,int *,int ) ;

__attribute__((used)) static void
acpi_intr_init(struct mtx *lock)
{

 mtx_init(lock, "ACPI interrupt lock", ((void*)0), MTX_DEF);
}
