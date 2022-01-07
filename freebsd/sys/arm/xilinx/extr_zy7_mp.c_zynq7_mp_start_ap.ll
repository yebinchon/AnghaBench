; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_mp.c_zynq7_mp_start_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_mp.c_zynq7_mp_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdtbus_bs_tag = common dso_local global i32 0, align 4
@SCU_CONTROL_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"platform_mp_start_ap: Couldn't map SCU config reg\0A\00", align 1
@SCU_CONTROL_ENABLE = common dso_local global i32 0, align 4
@ZYNQ7_CPU1_ENTRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"platform_mp_start_ap: Couldn't map OCM\0A\00", align 1
@mpentry = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zynq7_mp_start_ap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @fdtbus_bs_tag, align 4
  %7 = load i32, i32* @SCU_CONTROL_REG, align 4
  %8 = call i64 @bus_space_map(i32 %6, i32 %7, i32 4, i32 0, i32* %3)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @panic(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, i32* @fdtbus_bs_tag, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @bus_space_read_4(i32 %13, i32 %14, i32 0)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @SCU_CONTROL_ENABLE, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @fdtbus_bs_tag, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @bus_space_write_4(i32 %19, i32 %20, i32 0, i32 %21)
  %23 = load i32, i32* @fdtbus_bs_tag, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @bus_space_unmap(i32 %23, i32 %24, i32 4)
  %26 = load i32, i32* @fdtbus_bs_tag, align 4
  %27 = load i32, i32* @ZYNQ7_CPU1_ENTRY, align 4
  %28 = call i64 @bus_space_map(i32 %26, i32 %27, i32 4, i32 0, i32* %4)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %12
  %31 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %12
  %33 = load i32, i32* @fdtbus_bs_tag, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i64, i64* @mpentry, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @pmap_kextract(i32 %36)
  %38 = call i32 @bus_space_write_4(i32 %33, i32 %34, i32 0, i32 %37)
  %39 = load i32, i32* @fdtbus_bs_tag, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @bus_space_unmap(i32 %39, i32 %40, i32 4)
  %42 = call i32 (...) @dcache_wbinv_poc_all()
  %43 = call i32 (...) @dsb()
  %44 = call i32 (...) @sev()
  ret void
}

declare dso_local i64 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @bus_space_unmap(i32, i32, i32) #1

declare dso_local i32 @pmap_kextract(i32) #1

declare dso_local i32 @dcache_wbinv_poc_all(...) #1

declare dso_local i32 @dsb(...) #1

declare dso_local i32 @sev(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
