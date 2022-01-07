; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_host.c_vmm_host_state_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_host.c_vmm_host_state_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@MSR_EFER = common dso_local global i32 0, align 4
@vmm_host_efer = common dso_local global i8* null, align 8
@MSR_PAT = common dso_local global i32 0, align 4
@vmm_host_pat = common dso_local global i8* null, align 8
@CR0_TS = common dso_local global i32 0, align 4
@vmm_host_cr0 = common dso_local global i32 0, align 4
@CR4_PGE = common dso_local global i32 0, align 4
@vmm_host_cr4 = common dso_local global i32 0, align 4
@CR4_XSAVE = common dso_local global i32 0, align 4
@vmm_xsave_limits = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@vmm_host_xcr0 = common dso_local global i32 0, align 4
@XFEATURE_AVX = common dso_local global i32 0, align 4
@XFEATURE_MPX = common dso_local global i32 0, align 4
@XFEATURE_AVX512 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmm_host_state_init() #0 {
  %1 = alloca [4 x i32], align 16
  %2 = load i32, i32* @MSR_EFER, align 4
  %3 = call i8* @rdmsr(i32 %2)
  store i8* %3, i8** @vmm_host_efer, align 8
  %4 = load i32, i32* @MSR_PAT, align 4
  %5 = call i8* @rdmsr(i32 %4)
  store i8* %5, i8** @vmm_host_pat, align 8
  %6 = call i32 (...) @rcr0()
  %7 = load i32, i32* @CR0_TS, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* @vmm_host_cr0, align 4
  %9 = call i32 (...) @rcr4()
  %10 = load i32, i32* @CR4_PGE, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* @vmm_host_cr4, align 4
  %12 = load i32, i32* @vmm_host_cr4, align 4
  %13 = load i32, i32* @CR4_XSAVE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %0
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmm_xsave_limits, i32 0, i32 0), align 4
  %17 = call i32 @rxcr(i32 0)
  store i32 %17, i32* @vmm_host_xcr0, align 4
  %18 = load i32, i32* @vmm_host_xcr0, align 4
  %19 = load i32, i32* @XFEATURE_AVX, align 4
  %20 = load i32, i32* @XFEATURE_MPX, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @XFEATURE_AVX512, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %18, %23
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmm_xsave_limits, i32 0, i32 1), align 4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %26 = call i32 @cpuid_count(i32 13, i32 0, i32* %25)
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmm_xsave_limits, i32 0, i32 2), align 4
  br label %29

29:                                               ; preds = %16, %0
  ret void
}

declare dso_local i8* @rdmsr(i32) #1

declare dso_local i32 @rcr0(...) #1

declare dso_local i32 @rcr4(...) #1

declare dso_local i32 @rxcr(i32) #1

declare dso_local i32 @cpuid_count(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
