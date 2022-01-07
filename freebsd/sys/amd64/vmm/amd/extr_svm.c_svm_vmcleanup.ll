; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_vmcleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_vmcleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svm_softc = type { i32, i32 }

@SVM_IO_BITMAP_SIZE = common dso_local global i32 0, align 4
@M_SVM = common dso_local global i32 0, align 4
@SVM_MSR_BITMAP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @svm_vmcleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svm_vmcleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.svm_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.svm_softc*
  store %struct.svm_softc* %5, %struct.svm_softc** %3, align 8
  %6 = load %struct.svm_softc*, %struct.svm_softc** %3, align 8
  %7 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SVM_IO_BITMAP_SIZE, align 4
  %10 = load i32, i32* @M_SVM, align 4
  %11 = call i32 @contigfree(i32 %8, i32 %9, i32 %10)
  %12 = load %struct.svm_softc*, %struct.svm_softc** %3, align 8
  %13 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SVM_MSR_BITMAP_SIZE, align 4
  %16 = load i32, i32* @M_SVM, align 4
  %17 = call i32 @contigfree(i32 %14, i32 %15, i32 %16)
  %18 = load %struct.svm_softc*, %struct.svm_softc** %3, align 8
  %19 = load i32, i32* @M_SVM, align 4
  %20 = call i32 @free(%struct.svm_softc* %18, i32 %19)
  ret void
}

declare dso_local i32 @contigfree(i32, i32, i32) #1

declare dso_local i32 @free(%struct.svm_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
