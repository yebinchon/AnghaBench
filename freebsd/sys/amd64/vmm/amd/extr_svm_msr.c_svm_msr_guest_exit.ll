; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm_msr.c_svm_msr_guest_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm_msr.c_svm_msr_guest_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svm_softc = type { i32 }

@MSR_LSTAR = common dso_local global i32 0, align 4
@host_msrs = common dso_local global i32* null, align 8
@IDX_MSR_LSTAR = common dso_local global i64 0, align 8
@MSR_CSTAR = common dso_local global i32 0, align 4
@IDX_MSR_CSTAR = common dso_local global i64 0, align 8
@MSR_STAR = common dso_local global i32 0, align 4
@IDX_MSR_STAR = common dso_local global i64 0, align 8
@MSR_SF_MASK = common dso_local global i32 0, align 4
@IDX_MSR_SF_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svm_msr_guest_exit(%struct.svm_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.svm_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.svm_softc* %0, %struct.svm_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @MSR_LSTAR, align 4
  %6 = load i32*, i32** @host_msrs, align 8
  %7 = load i64, i64* @IDX_MSR_LSTAR, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @wrmsr(i32 %5, i32 %9)
  %11 = load i32, i32* @MSR_CSTAR, align 4
  %12 = load i32*, i32** @host_msrs, align 8
  %13 = load i64, i64* @IDX_MSR_CSTAR, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @wrmsr(i32 %11, i32 %15)
  %17 = load i32, i32* @MSR_STAR, align 4
  %18 = load i32*, i32** @host_msrs, align 8
  %19 = load i64, i64* @IDX_MSR_STAR, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @wrmsr(i32 %17, i32 %21)
  %23 = load i32, i32* @MSR_SF_MASK, align 4
  %24 = load i32*, i32** @host_msrs, align 8
  %25 = load i64, i64* @IDX_MSR_SF_MASK, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @wrmsr(i32 %23, i32 %27)
  ret void
}

declare dso_local i32 @wrmsr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
