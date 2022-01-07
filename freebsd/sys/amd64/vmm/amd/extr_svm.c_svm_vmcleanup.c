
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svm_softc {int msr_bitmap; int iopm_bitmap; } ;


 int M_SVM ;
 int SVM_IO_BITMAP_SIZE ;
 int SVM_MSR_BITMAP_SIZE ;
 int contigfree (int ,int ,int ) ;
 int free (struct svm_softc*,int ) ;

__attribute__((used)) static void
svm_vmcleanup(void *arg)
{
 struct svm_softc *sc = arg;

 contigfree(sc->iopm_bitmap, SVM_IO_BITMAP_SIZE, M_SVM);
 contigfree(sc->msr_bitmap, SVM_MSR_BITMAP_SIZE, M_SVM);
 free(sc, M_SVM);
}
