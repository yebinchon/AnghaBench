; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_cpufunc.c_set_cpufuncs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_cpufunc.c_set_cpufuncs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cputype = common dso_local global i32 0, align 4
@CPU_ID_CPU_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"No support for this CPU type (%08x) in kernel\00", align 1
@ARCHITECTURE_NOT_PRESENT = common dso_local global i32 0, align 4
@arm_dcache_align_mask = common dso_local global i32 0, align 4
@CPU_ID_ARM1176JZS = common dso_local global i32 0, align 4
@CPU_ID_ARM926EJS = common dso_local global i32 0, align 4
@CPU_ID_ARM_88SV581X_V7 = common dso_local global i32 0, align 4
@CPU_ID_MV88FR131 = common dso_local global i32 0, align 4
@CPU_ID_MV88FR571_41 = common dso_local global i32 0, align 4
@CPU_ID_MV88FR571_VD = common dso_local global i32 0, align 4
@CPU_ID_MV88SV581X_V7 = common dso_local global i32 0, align 4
@CPU_ID_MV88SV584X_V7 = common dso_local global i32 0, align 4
@CPU_ID_SCHEME_MASK = common dso_local global i32 0, align 4
@MV_BTB_DISABLE = common dso_local global i32 0, align 4
@MV_DC_STREAM_ENABLE = common dso_local global i32 0, align 4
@MV_L2_ENABLE = common dso_local global i32 0, align 4
@MV_L2_PREFETCH_DISABLE = common dso_local global i32 0, align 4
@MV_WA_ENABLE = common dso_local global i32 0, align 4
@arm1176_cpufuncs = common dso_local global i32 0, align 4
@armv5_ec_cpufuncs = common dso_local global i32 0, align 4
@cortexa_cpufuncs = common dso_local global i32 0, align 4
@cpufuncs = common dso_local global i32 0, align 4
@pj4bv7_cpufuncs = common dso_local global i32 0, align 4
@sheeva_cpufuncs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_cpufuncs() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @cp15_midr_get()
  store i32 %2, i32* @cputype, align 4
  %3 = load i32, i32* @CPU_ID_CPU_MASK, align 4
  %4 = load i32, i32* @cputype, align 4
  %5 = and i32 %4, %3
  store i32 %5, i32* @cputype, align 4
  %6 = load i32, i32* @cputype, align 4
  %7 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* @ARCHITECTURE_NOT_PRESENT, align 4
  store i32 %8, i32* %1, align 4
  br label %12

9:                                                ; No predecessors!
  %10 = load i32, i32* @arm_dcache_align_mask, align 4
  %11 = call i32 @uma_set_align(i32 %10)
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %9, %0
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i32 @cp15_midr_get(...) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @uma_set_align(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
