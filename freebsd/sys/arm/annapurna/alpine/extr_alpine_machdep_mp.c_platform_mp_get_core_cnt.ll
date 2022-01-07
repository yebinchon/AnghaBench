; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_machdep_mp.c_platform_mp_get_core_cnt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_machdep_mp.c_platform_mp_get_core_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@platform_mp_get_core_cnt.ncores = internal global i32 0, align 4
@alpine_validate_cpu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"SMP: limiting number of active CPUs to %d out of %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @platform_mp_get_core_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platform_mp_get_core_cnt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @platform_mp_get_core_cnt.ncores, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @platform_mp_get_core_cnt.ncores, align 4
  store i32 %7, i32* %1, align 4
  br label %27

8:                                                ; preds = %0
  %9 = call i32 (...) @cp15_l2ctlr_get()
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @CPUV7_L2CTLR_NPROC(i32 %10)
  store i32 %11, i32* @platform_mp_get_core_cnt.ncores, align 4
  %12 = load i32, i32* @alpine_validate_cpu, align 4
  %13 = call i32 @ofw_cpu_early_foreach(i32 %12, i32 0)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %8
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @platform_mp_get_core_cnt.ncores, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @platform_mp_get_core_cnt.ncores, align 4
  %23 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* %2, align 4
  store i32 %24, i32* @platform_mp_get_core_cnt.ncores, align 4
  br label %25

25:                                               ; preds = %20, %16, %8
  %26 = load i32, i32* @platform_mp_get_core_cnt.ncores, align 4
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %25, %6
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @cp15_l2ctlr_get(...) #1

declare dso_local i32 @CPUV7_L2CTLR_NPROC(i32) #1

declare dso_local i32 @ofw_cpu_early_foreach(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
