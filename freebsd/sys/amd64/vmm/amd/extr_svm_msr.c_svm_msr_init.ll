; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm_msr.c_svm_msr_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm_msr.c_svm_msr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
define dso_local void @svm_msr_init() #0 {
  %1 = load i32, i32* @MSR_LSTAR, align 4
  %2 = call i32 @rdmsr(i32 %1)
  %3 = load i32*, i32** @host_msrs, align 8
  %4 = load i64, i64* @IDX_MSR_LSTAR, align 8
  %5 = getelementptr inbounds i32, i32* %3, i64 %4
  store i32 %2, i32* %5, align 4
  %6 = load i32, i32* @MSR_CSTAR, align 4
  %7 = call i32 @rdmsr(i32 %6)
  %8 = load i32*, i32** @host_msrs, align 8
  %9 = load i64, i64* @IDX_MSR_CSTAR, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @MSR_STAR, align 4
  %12 = call i32 @rdmsr(i32 %11)
  %13 = load i32*, i32** @host_msrs, align 8
  %14 = load i64, i64* @IDX_MSR_STAR, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @MSR_SF_MASK, align 4
  %17 = call i32 @rdmsr(i32 %16)
  %18 = load i32*, i32** @host_msrs, align 8
  %19 = load i64, i64* @IDX_MSR_SF_MASK, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %17, i32* %20, align 4
  ret void
}

declare dso_local i32 @rdmsr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
