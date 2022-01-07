; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx_msr.c_vmx_msr_guest_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx_msr.c_vmx_msr_guest_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { i32** }

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
@host_msrs = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmx_msr_guest_exit(%struct.vmx* %0, i32 %1) #0 {
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
  %13 = load i32, i32* @MSR_LSTAR, align 4
  %14 = call i32 @rdmsr(i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = load i64, i64* @IDX_MSR_LSTAR, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @MSR_CSTAR, align 4
  %19 = call i32 @rdmsr(i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* @IDX_MSR_CSTAR, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @MSR_STAR, align 4
  %24 = call i32 @rdmsr(i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i64, i64* @IDX_MSR_STAR, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @MSR_SF_MASK, align 4
  %29 = call i32 @rdmsr(i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load i64, i64* @IDX_MSR_SF_MASK, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @MSR_KGSBASE, align 4
  %34 = call i32 @rdmsr(i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* @IDX_MSR_KGSBASE, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @MSR_LSTAR, align 4
  %39 = load i32*, i32** @host_msrs, align 8
  %40 = load i64, i64* @IDX_MSR_LSTAR, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @wrmsr(i32 %38, i32 %42)
  %44 = load i32, i32* @MSR_CSTAR, align 4
  %45 = load i32*, i32** @host_msrs, align 8
  %46 = load i64, i64* @IDX_MSR_CSTAR, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @wrmsr(i32 %44, i32 %48)
  %50 = load i32, i32* @MSR_STAR, align 4
  %51 = load i32*, i32** @host_msrs, align 8
  %52 = load i64, i64* @IDX_MSR_STAR, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @wrmsr(i32 %50, i32 %54)
  %56 = load i32, i32* @MSR_SF_MASK, align 4
  %57 = load i32*, i32** @host_msrs, align 8
  %58 = load i64, i64* @IDX_MSR_SF_MASK, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @wrmsr(i32 %56, i32 %60)
  ret void
}

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
