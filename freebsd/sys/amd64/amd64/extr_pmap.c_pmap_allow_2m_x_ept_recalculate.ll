; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_allow_2m_x_ept_recalculate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_allow_2m_x_ept_recalculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_vendor_id = common dso_local global i64 0, align 8
@CPU_VENDOR_INTEL = common dso_local global i64 0, align 8
@cpu_ia32_arch_caps = common dso_local global i32 0, align 4
@IA32_ARCH_CAP_IF_PSCHANGE_MC_NO = common dso_local global i32 0, align 4
@cpu_id = common dso_local global i32 0, align 4
@pmap_allow_2m_x_ept = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"hw.allow_2m_x_ept\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_allow_2m_x_ept_recalculate() #0 {
  %1 = load i64, i64* @cpu_vendor_id, align 8
  %2 = load i64, i64* @CPU_VENDOR_INTEL, align 8
  %3 = icmp ne i64 %1, %2
  br i1 %3, label %86, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @cpu_ia32_arch_caps, align 4
  %6 = load i32, i32* @IA32_ARCH_CAP_IF_PSCHANGE_MC_NO, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %86, label %9

9:                                                ; preds = %4
  %10 = load i32, i32* @cpu_id, align 4
  %11 = call i32 @CPUID_TO_FAMILY(i32 %10)
  %12 = icmp eq i32 %11, 6
  br i1 %12, label %13, label %85

13:                                               ; preds = %9
  %14 = load i32, i32* @cpu_id, align 4
  %15 = call i32 @CPUID_TO_MODEL(i32 %14)
  %16 = icmp eq i32 %15, 38
  br i1 %16, label %86, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @cpu_id, align 4
  %19 = call i32 @CPUID_TO_MODEL(i32 %18)
  %20 = icmp eq i32 %19, 39
  br i1 %20, label %86, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @cpu_id, align 4
  %23 = call i32 @CPUID_TO_MODEL(i32 %22)
  %24 = icmp eq i32 %23, 53
  br i1 %24, label %86, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @cpu_id, align 4
  %27 = call i32 @CPUID_TO_MODEL(i32 %26)
  %28 = icmp eq i32 %27, 54
  br i1 %28, label %86, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @cpu_id, align 4
  %31 = call i32 @CPUID_TO_MODEL(i32 %30)
  %32 = icmp eq i32 %31, 55
  br i1 %32, label %86, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @cpu_id, align 4
  %35 = call i32 @CPUID_TO_MODEL(i32 %34)
  %36 = icmp eq i32 %35, 134
  br i1 %36, label %86, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @cpu_id, align 4
  %39 = call i32 @CPUID_TO_MODEL(i32 %38)
  %40 = icmp eq i32 %39, 28
  br i1 %40, label %86, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @cpu_id, align 4
  %43 = call i32 @CPUID_TO_MODEL(i32 %42)
  %44 = icmp eq i32 %43, 74
  br i1 %44, label %86, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @cpu_id, align 4
  %47 = call i32 @CPUID_TO_MODEL(i32 %46)
  %48 = icmp eq i32 %47, 76
  br i1 %48, label %86, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @cpu_id, align 4
  %51 = call i32 @CPUID_TO_MODEL(i32 %50)
  %52 = icmp eq i32 %51, 77
  br i1 %52, label %86, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @cpu_id, align 4
  %55 = call i32 @CPUID_TO_MODEL(i32 %54)
  %56 = icmp eq i32 %55, 90
  br i1 %56, label %86, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @cpu_id, align 4
  %59 = call i32 @CPUID_TO_MODEL(i32 %58)
  %60 = icmp eq i32 %59, 92
  br i1 %60, label %86, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @cpu_id, align 4
  %63 = call i32 @CPUID_TO_MODEL(i32 %62)
  %64 = icmp eq i32 %63, 93
  br i1 %64, label %86, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @cpu_id, align 4
  %67 = call i32 @CPUID_TO_MODEL(i32 %66)
  %68 = icmp eq i32 %67, 95
  br i1 %68, label %86, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @cpu_id, align 4
  %71 = call i32 @CPUID_TO_MODEL(i32 %70)
  %72 = icmp eq i32 %71, 110
  br i1 %72, label %86, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* @cpu_id, align 4
  %75 = call i32 @CPUID_TO_MODEL(i32 %74)
  %76 = icmp eq i32 %75, 122
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* @cpu_id, align 4
  %79 = call i32 @CPUID_TO_MODEL(i32 %78)
  %80 = icmp eq i32 %79, 87
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @cpu_id, align 4
  %83 = call i32 @CPUID_TO_MODEL(i32 %82)
  %84 = icmp eq i32 %83, 133
  br i1 %84, label %86, label %85

85:                                               ; preds = %81, %9
  store i32 1, i32* @pmap_allow_2m_x_ept, align 4
  br label %86

86:                                               ; preds = %85, %81, %77, %73, %69, %65, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25, %21, %17, %13, %4, %0
  %87 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* @pmap_allow_2m_x_ept)
  ret void
}

declare dso_local i32 @CPUID_TO_FAMILY(i32) #1

declare dso_local i32 @CPUID_TO_MODEL(i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
