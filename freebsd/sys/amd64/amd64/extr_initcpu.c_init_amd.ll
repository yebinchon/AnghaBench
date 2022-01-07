; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_initcpu.c_init_amd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_initcpu.c_init_amd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_id = common dso_local global i32 0, align 4
@cpu_feature2 = common dso_local global i32 0, align 4
@CPUID2_HV = common dso_local global i32 0, align 4
@MSR_NB_CFG1 = common dso_local global i32 0, align 4
@MSR_LS_CFG = common dso_local global i32 0, align 4
@lower_sharedpage_init = common dso_local global i32 0, align 4
@hw_lower_amd64_sharedpage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_amd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_amd() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @cpu_id, align 4
  %3 = call i32 @CPUID_TO_FAMILY(i32 %2)
  switch i32 %3, label %14 [
    i32 16, label %4
    i32 18, label %4
  ]

4:                                                ; preds = %0, %0
  %5 = load i32, i32* @cpu_feature2, align 4
  %6 = load i32, i32* @CPUID2_HV, align 4
  %7 = and i32 %5, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = call i32 @rdmsr(i32 -1073672151)
  %11 = or i32 %10, 1
  %12 = call i32 @wrmsr(i32 -1073672151, i32 %11)
  br label %13

13:                                               ; preds = %9, %4
  br label %14

14:                                               ; preds = %0, %13
  %15 = load i32, i32* @cpu_id, align 4
  %16 = call i32 @CPUID_TO_FAMILY(i32 %15)
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load i32, i32* @cpu_feature2, align 4
  %20 = load i32, i32* @CPUID2_HV, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i32, i32* @MSR_NB_CFG1, align 4
  %25 = call i32 @rdmsr(i32 %24)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = or i32 %26, undef
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* @MSR_NB_CFG1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @wrmsr(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %23, %18
  br label %32

32:                                               ; preds = %31, %14
  %33 = load i32, i32* @cpu_id, align 4
  %34 = call i32 @CPUID_TO_FAMILY(i32 %33)
  %35 = icmp eq i32 %34, 16
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load i32, i32* @cpu_feature2, align 4
  %38 = load i32, i32* @CPUID2_HV, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = call i32 @rdmsr(i32 -1073672150)
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* %1, align 4
  %44 = and i32 %43, -16777217
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @wrmsr(i32 -1073672150, i32 %45)
  br label %47

47:                                               ; preds = %41, %36
  br label %48

48:                                               ; preds = %47, %32
  %49 = load i32, i32* @cpu_id, align 4
  %50 = call i32 @CPUID_TO_FAMILY(i32 %49)
  %51 = icmp eq i32 %50, 22
  br i1 %51, label %52, label %70

52:                                               ; preds = %48
  %53 = load i32, i32* @cpu_id, align 4
  %54 = call i32 @CPUID_TO_MODEL(i32 %53)
  %55 = icmp sle i32 %54, 15
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load i32, i32* @cpu_feature2, align 4
  %58 = load i32, i32* @CPUID2_HV, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i32, i32* @MSR_LS_CFG, align 4
  %63 = call i32 @rdmsr(i32 %62)
  store i32 %63, i32* %1, align 4
  %64 = load i32, i32* %1, align 4
  %65 = or i32 %64, 32768
  store i32 %65, i32* %1, align 4
  %66 = load i32, i32* @MSR_LS_CFG, align 4
  %67 = load i32, i32* %1, align 4
  %68 = call i32 @wrmsr(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %61, %56
  br label %70

70:                                               ; preds = %69, %52, %48
  %71 = load i32, i32* @cpu_id, align 4
  %72 = call i32 @CPUID_TO_FAMILY(i32 %71)
  %73 = icmp eq i32 %72, 23
  br i1 %73, label %74, label %110

74:                                               ; preds = %70
  %75 = load i32, i32* @cpu_id, align 4
  %76 = call i32 @CPUID_TO_MODEL(i32 %75)
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %110

78:                                               ; preds = %74
  %79 = load i32, i32* @cpu_feature2, align 4
  %80 = load i32, i32* @CPUID2_HV, align 4
  %81 = and i32 %79, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %110

83:                                               ; preds = %78
  %84 = call i32 @rdmsr(i32 -1073672151)
  store i32 %84, i32* %1, align 4
  %85 = load i32, i32* %1, align 4
  %86 = or i32 %85, 8192
  store i32 %86, i32* %1, align 4
  %87 = load i32, i32* %1, align 4
  %88 = call i32 @wrmsr(i32 -1073672151, i32 %87)
  %89 = load i32, i32* @MSR_LS_CFG, align 4
  %90 = call i32 @rdmsr(i32 %89)
  store i32 %90, i32* %1, align 4
  %91 = load i32, i32* %1, align 4
  %92 = or i32 %91, 16
  store i32 %92, i32* %1, align 4
  %93 = load i32, i32* @MSR_LS_CFG, align 4
  %94 = load i32, i32* %1, align 4
  %95 = call i32 @wrmsr(i32 %93, i32 %94)
  %96 = call i32 @rdmsr(i32 -1073672152)
  store i32 %96, i32* %1, align 4
  %97 = load i32, i32* %1, align 4
  %98 = or i32 %97, 16
  store i32 %98, i32* %1, align 4
  %99 = load i32, i32* %1, align 4
  %100 = call i32 @wrmsr(i32 -1073672152, i32 %99)
  %101 = load i32, i32* @MSR_LS_CFG, align 4
  %102 = call i32 @rdmsr(i32 %101)
  store i32 %102, i32* %1, align 4
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = or i64 %104, 144115188075855872
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %1, align 4
  %107 = load i32, i32* @MSR_LS_CFG, align 4
  %108 = load i32, i32* %1, align 4
  %109 = call i32 @wrmsr(i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %83, %78, %74, %70
  %111 = load i32, i32* @lower_sharedpage_init, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  store i32 1, i32* @lower_sharedpage_init, align 4
  %114 = load i32, i32* @cpu_id, align 4
  %115 = call i32 @CPUID_TO_FAMILY(i32 %114)
  %116 = icmp eq i32 %115, 23
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 1, i32* @hw_lower_amd64_sharedpage, align 4
  br label %118

118:                                              ; preds = %117, %113
  br label %119

119:                                              ; preds = %118, %110
  ret void
}

declare dso_local i32 @CPUID_TO_FAMILY(i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @CPUID_TO_MODEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
