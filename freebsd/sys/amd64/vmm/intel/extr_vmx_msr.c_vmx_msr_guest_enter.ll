; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx_msr.c_vmx_msr_guest_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx_msr.c_vmx_msr_guest_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { i32** }

@curpcb = common dso_local global i32 0, align 4
@MSR_LSTAR = common dso_local global i32 0, align 4
@IDX_MSR_LSTAR = common dso_local global i64 0, align 8
@MSR_CSTAR = common dso_local global i32 0, align 4
@IDX_MSR_CSTAR = common dso_local global i64 0, align 8
@MSR_STAR = common dso_local global i32 0, align 4
@IDX_MSR_STAR = common dso_local global i64 0, align 8
@MSR_SF_MASK = common dso_local global i32 0, align 4
@IDX_MSR_SF_MASK = common dso_local global i64 0, align 8
@MSR_KGSBASE = common dso_local global i32 0, align 4
@IDX_MSR_KGSBASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmx_msr_guest_enter(%struct.vmx* %0, i32 %1) #0 {
  %3 = alloca %struct.vmx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.vmx* %0, %struct.vmx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vmx*, %struct.vmx** %3, align 8
  %7 = getelementptr inbounds %struct.vmx, %struct.vmx* %6, i32 0, i32 0
  %8 = load i32**, i32*** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32*, i32** %8, i64 %10
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load i32, i32* @curpcb, align 4
  %14 = call i32 @update_pcb_bases(i32 %13)
  %15 = load i32, i32* @MSR_LSTAR, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i64, i64* @IDX_MSR_LSTAR, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @wrmsr(i32 %15, i32 %19)
  %21 = load i32, i32* @MSR_CSTAR, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i64, i64* @IDX_MSR_CSTAR, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @wrmsr(i32 %21, i32 %25)
  %27 = load i32, i32* @MSR_STAR, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* @IDX_MSR_STAR, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @wrmsr(i32 %27, i32 %31)
  %33 = load i32, i32* @MSR_SF_MASK, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i64, i64* @IDX_MSR_SF_MASK, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @wrmsr(i32 %33, i32 %37)
  %39 = load i32, i32* @MSR_KGSBASE, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i64, i64* @IDX_MSR_KGSBASE, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @wrmsr(i32 %39, i32 %43)
  ret void
}

declare dso_local i32 @update_pcb_bases(i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
