; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_initcpu.c_initializecpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_initcpu.c_initializecpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_feature = common dso_local global i32 0, align 4
@CPUID_XMM = common dso_local global i32 0, align 4
@CPUID_FXSR = common dso_local global i32 0, align 4
@CR4_FXSR = common dso_local global i32 0, align 4
@CR4_XMM = common dso_local global i32 0, align 4
@hw_instruction_sse = common dso_local global i32 0, align 4
@cpu_fxsr = common dso_local global i32 0, align 4
@cpu_stdext_feature = common dso_local global i32 0, align 4
@CPUID_STDEXT_FSGSBASE = common dso_local global i32 0, align 4
@CR4_FSGSBASE = common dso_local global i32 0, align 4
@cpu_stdext_feature2 = common dso_local global i32 0, align 4
@CPUID_STDEXT2_PKU = common dso_local global i32 0, align 4
@CR4_PKE = common dso_local global i32 0, align 4
@CPUID_STDEXT_SMEP = common dso_local global i32 0, align 4
@CR4_SMEP = common dso_local global i32 0, align 4
@CPUID_STDEXT_SMAP = common dso_local global i32 0, align 4
@CR4_SMAP = common dso_local global i32 0, align 4
@amd_feature = common dso_local global i32 0, align 4
@AMDID_NX = common dso_local global i32 0, align 4
@MSR_EFER = common dso_local global i32 0, align 4
@EFER_NXE = common dso_local global i32 0, align 4
@PG_NX = common dso_local global i32 0, align 4
@pg_nx = common dso_local global i32 0, align 4
@cpu_vendor_id = common dso_local global i32 0, align 4
@AMDID_RDTSCP = common dso_local global i32 0, align 4
@CPUID_STDEXT2_RDPID = common dso_local global i32 0, align 4
@MSR_TSC_AUX = common dso_local global i32 0, align 4
@cpuid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initializecpu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @rcr4()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* @cpu_feature, align 4
  %5 = load i32, i32* @CPUID_XMM, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %0
  %9 = load i32, i32* @cpu_feature, align 4
  %10 = load i32, i32* @CPUID_FXSR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load i32, i32* @CR4_FXSR, align 4
  %15 = load i32, i32* @CR4_XMM, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %2, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %2, align 4
  store i32 1, i32* @hw_instruction_sse, align 4
  store i32 1, i32* @cpu_fxsr, align 4
  br label %19

19:                                               ; preds = %13, %8, %0
  %20 = load i32, i32* @cpu_stdext_feature, align 4
  %21 = load i32, i32* @CPUID_STDEXT_FSGSBASE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @CR4_FSGSBASE, align 4
  %26 = load i32, i32* %2, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* @cpu_stdext_feature2, align 4
  %30 = load i32, i32* @CPUID_STDEXT2_PKU, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @CR4_PKE, align 4
  %35 = load i32, i32* %2, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = call i64 (...) @IS_BSP()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @cpu_stdext_feature, align 4
  %42 = load i32, i32* @CPUID_STDEXT_SMEP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @CR4_SMEP, align 4
  %47 = load i32, i32* %2, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* @cpu_stdext_feature, align 4
  %51 = load i32, i32* @CPUID_STDEXT_SMAP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @CR4_SMAP, align 4
  %56 = load i32, i32* %2, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %49
  br label %59

59:                                               ; preds = %58, %37
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @load_cr4(i32 %60)
  %62 = call i64 (...) @IS_BSP()
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %59
  %65 = load i32, i32* @amd_feature, align 4
  %66 = load i32, i32* @AMDID_NX, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load i32, i32* @MSR_EFER, align 4
  %71 = call i32 @rdmsr(i32 %70)
  %72 = load i32, i32* @EFER_NXE, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %1, align 4
  %74 = load i32, i32* @MSR_EFER, align 4
  %75 = load i32, i32* %1, align 4
  %76 = call i32 @wrmsr(i32 %74, i32 %75)
  %77 = load i32, i32* @PG_NX, align 4
  store i32 %77, i32* @pg_nx, align 4
  br label %78

78:                                               ; preds = %69, %64, %59
  %79 = call i32 (...) @hw_ibrs_recalculate()
  %80 = call i32 @hw_ssb_recalculate(i32 0)
  %81 = call i32 (...) @amd64_syscall_ret_flush_l1d_recalc()
  %82 = load i32, i32* @cpu_vendor_id, align 4
  switch i32 %82, label %87 [
    i32 129, label %83
    i32 128, label %85
  ]

83:                                               ; preds = %78
  %84 = call i32 (...) @init_amd()
  br label %87

85:                                               ; preds = %78
  %86 = call i32 (...) @init_via()
  br label %87

87:                                               ; preds = %78, %85, %83
  %88 = load i32, i32* @amd_feature, align 4
  %89 = load i32, i32* @AMDID_RDTSCP, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* @cpu_stdext_feature2, align 4
  %94 = load i32, i32* @CPUID_STDEXT2_RDPID, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92, %87
  %98 = load i32, i32* @MSR_TSC_AUX, align 4
  %99 = load i32, i32* @cpuid, align 4
  %100 = call i32 @PCPU_GET(i32 %99)
  %101 = call i32 @wrmsr(i32 %98, i32 %100)
  br label %102

102:                                              ; preds = %97, %92
  ret void
}

declare dso_local i32 @rcr4(...) #1

declare dso_local i64 @IS_BSP(...) #1

declare dso_local i32 @load_cr4(i32) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i32 @hw_ibrs_recalculate(...) #1

declare dso_local i32 @hw_ssb_recalculate(i32) #1

declare dso_local i32 @amd64_syscall_ret_flush_l1d_recalc(...) #1

declare dso_local i32 @init_amd(...) #1

declare dso_local i32 @init_via(...) #1

declare dso_local i32 @PCPU_GET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
