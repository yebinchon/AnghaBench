; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_armv7_machdep.c_mv_a38x_platform_late_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_armv7_machdep.c_mv_a38x_platform_late_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MV_SOC_UNSUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Unsupported SoC family\0A\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"WARNING: could not re-initialise decode windows! Running with existing settings...\0A\00", align 1
@VM_MEMATTR_DEVICE = common dso_local global i32 0, align 4
@VM_MEMATTR_SO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"WARNING: could not map CPU Subsystem registers\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"WARNING: could not enable mbus optimization\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"WARNING: could not enable SCU\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mv_a38x_platform_late_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_a38x_platform_late_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i64 (...) @mv_check_soc_family()
  %4 = load i64, i64* @MV_SOC_UNSUPPORTED, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %1
  %9 = call i64 (...) @soc_decode_win()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 @printf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %8
  %14 = call i32 (...) @get_cpu_freq()
  %15 = sdiv i32 %14, 2
  %16 = call i32 @arm_tmr_change_frequency(i32 %15)
  %17 = load i32, i32* @VM_MEMATTR_DEVICE, align 4
  %18 = load i32, i32* @VM_MEMATTR_SO, align 4
  %19 = call i32 @pmap_remap_vm_attr(i32 %17, i32 %18)
  %20 = call i64 (...) @armada38x_win_set_iosync_barrier()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %13
  %25 = call i64 (...) @armada38x_mbus_optimization()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %24
  %30 = call i64 (...) @armada38x_scu_enable()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  ret void
}

declare dso_local i64 @mv_check_soc_family(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @soc_decode_win(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @arm_tmr_change_frequency(i32) #1

declare dso_local i32 @get_cpu_freq(...) #1

declare dso_local i32 @pmap_remap_vm_attr(i32, i32) #1

declare dso_local i64 @armada38x_win_set_iosync_barrier(...) #1

declare dso_local i64 @armada38x_mbus_optimization(...) #1

declare dso_local i64 @armada38x_scu_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
