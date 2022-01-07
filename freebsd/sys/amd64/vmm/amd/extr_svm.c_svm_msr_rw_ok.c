
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int svm_msr_perm (int *,int ,int,int) ;

__attribute__((used)) static void
svm_msr_rw_ok(uint8_t *perm_bitmap, uint64_t msr)
{

 svm_msr_perm(perm_bitmap, msr, 1, 1);
}
