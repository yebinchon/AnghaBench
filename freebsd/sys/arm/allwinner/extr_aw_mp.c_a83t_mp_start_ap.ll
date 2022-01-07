; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mp.c_a83t_mp_start_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mp.c_a83t_mp_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdtbus_bs_tag = common dso_local global i32 0, align 4
@CPUCFG_BASE = common dso_local global i32 0, align 4
@CPUCFG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Couldn't map the CPUCFG\0A\00", align 1
@CPUXCFG_BASE = common dso_local global i32 0, align 4
@CPUXCFG_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Couldn't map the CPUXCFG\0A\00", align 1
@PRCM_BASE = common dso_local global i32 0, align 4
@PRCM_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Couldn't map the PRCM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @a83t_mp_start_ap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @fdtbus_bs_tag, align 4
  %7 = load i32, i32* @CPUCFG_BASE, align 4
  %8 = load i32, i32* @CPUCFG_SIZE, align 4
  %9 = call i64 @bus_space_map(i32 %6, i32 %7, i32 %8, i32 0, i32* %3)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = load i32, i32* @fdtbus_bs_tag, align 4
  %15 = load i32, i32* @CPUXCFG_BASE, align 4
  %16 = load i32, i32* @CPUXCFG_SIZE, align 4
  %17 = call i64 @bus_space_map(i32 %14, i32 %15, i32 %16, i32 0, i32* %4)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13
  %22 = load i32, i32* @fdtbus_bs_tag, align 4
  %23 = load i32, i32* @PRCM_BASE, align 4
  %24 = load i32, i32* @PRCM_SIZE, align 4
  %25 = call i64 @bus_space_map(i32 %22, i32 %23, i32 %24, i32 0, i32* %5)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %21
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @aw_mc_mp_start_ap(i32 %30, i32 %31, i32 %32)
  %34 = call i32 (...) @dsb()
  %35 = call i32 (...) @sev()
  %36 = load i32, i32* @fdtbus_bs_tag, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @CPUXCFG_SIZE, align 4
  %39 = call i32 @bus_space_unmap(i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* @fdtbus_bs_tag, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @CPUCFG_SIZE, align 4
  %43 = call i32 @bus_space_unmap(i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* @fdtbus_bs_tag, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @PRCM_SIZE, align 4
  %47 = call i32 @bus_space_unmap(i32 %44, i32 %45, i32 %46)
  ret void
}

declare dso_local i64 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @aw_mc_mp_start_ap(i32, i32, i32) #1

declare dso_local i32 @dsb(...) #1

declare dso_local i32 @sev(...) #1

declare dso_local i32 @bus_space_unmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
