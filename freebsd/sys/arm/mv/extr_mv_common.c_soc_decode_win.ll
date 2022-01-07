; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_common.c_soc_decode_win.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_common.c_soc_decode_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"hw.pm-disable-mask\00", align 1
@soc_family = common dso_local global i64 0, align 8
@MV_SOC_ARMADA_XP = common dso_local global i64 0, align 8
@MV_DUMP_WIN = common dso_local global i64 0, align 8
@eth_port = common dso_local global i64 0, align 8
@usb_port = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soc_decode_win() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %6 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %4)
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @pm_disable_device(i32 %10)
  br label %12

12:                                               ; preds = %9, %0
  %13 = call i32 (...) @win_cpu_from_dt()
  store i32 %13, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %1, align 4
  br label %40

17:                                               ; preds = %12
  %18 = call i32 @soc_id(i32* %2, i32* %3)
  %19 = load i64, i64* @soc_family, align 8
  %20 = load i64, i64* @MV_SOC_ARMADA_XP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = call i32 (...) @decode_win_sdram_fixup()
  store i32 %23, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %1, align 4
  br label %40

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %17
  %29 = call i32 (...) @decode_win_cpu_setup()
  %30 = load i64, i64* @MV_DUMP_WIN, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 (...) @soc_dump_decode_win()
  br label %34

34:                                               ; preds = %32, %28
  store i64 0, i64* @eth_port, align 8
  store i64 0, i64* @usb_port, align 8
  %35 = call i32 (...) @fdt_win_setup()
  store i32 %35, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %1, align 4
  br label %40

39:                                               ; preds = %34
  store i32 0, i32* %1, align 4
  br label %40

40:                                               ; preds = %39, %37, %25, %15
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @pm_disable_device(i32) #1

declare dso_local i32 @win_cpu_from_dt(...) #1

declare dso_local i32 @soc_id(i32*, i32*) #1

declare dso_local i32 @decode_win_sdram_fixup(...) #1

declare dso_local i32 @decode_win_cpu_setup(...) #1

declare dso_local i32 @soc_dump_decode_win(...) #1

declare dso_local i32 @fdt_win_setup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
