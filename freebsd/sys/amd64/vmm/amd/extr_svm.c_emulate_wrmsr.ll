; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_emulate_wrmsr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_emulate_wrmsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svm_softc = type { i32 }

@MSR_EFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svm_softc*, i32, i64, i32, i32*)* @emulate_wrmsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_wrmsr(%struct.svm_softc* %0, i32 %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.svm_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.svm_softc* %0, %struct.svm_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i64 @lapic_msr(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %5
  %16 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %17 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @lapic_wrmsr(i32 %18, i32 %19, i64 %20, i32 %21, i32* %22)
  store i32 %23, i32* %11, align 4
  br label %42

24:                                               ; preds = %5
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @MSR_EFER, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @svm_write_efer(%struct.svm_softc* %29, i32 %30, i32 %31, i32* %32)
  store i32 %33, i32* %11, align 4
  br label %41

34:                                               ; preds = %24
  %35 = load %struct.svm_softc*, %struct.svm_softc** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i64, i64* %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @svm_wrmsr(%struct.svm_softc* %35, i32 %36, i64 %37, i32 %38, i32* %39)
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %34, %28
  br label %42

42:                                               ; preds = %41, %15
  %43 = load i32, i32* %11, align 4
  ret i32 %43
}

declare dso_local i64 @lapic_msr(i64) #1

declare dso_local i32 @lapic_wrmsr(i32, i32, i64, i32, i32*) #1

declare dso_local i32 @svm_write_efer(%struct.svm_softc*, i32, i32, i32*) #1

declare dso_local i32 @svm_wrmsr(%struct.svm_softc*, i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
