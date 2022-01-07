
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int M_LINUX_CURRENT ;
 int free (struct mm_struct*,int ) ;

void
linux_mm_dtor(struct mm_struct *mm)
{
 free(mm, M_LINUX_CURRENT);
}
