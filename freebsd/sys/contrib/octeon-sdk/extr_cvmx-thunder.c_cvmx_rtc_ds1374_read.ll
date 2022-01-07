; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-thunder.c_cvmx_rtc_ds1374_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-thunder.c_cvmx_rtc_ds1374_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_RTC_DS1374_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_rtc_ds1374_read() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %36, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 2
  br i1 %6, label %7, label %39

7:                                                ; preds = %4
  %8 = load i32, i32* @CVMX_RTC_DS1374_ADDR, align 4
  %9 = call i32 @cvmx_twsi_read8(i32 %8, i32 0)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @CVMX_RTC_DS1374_ADDR, align 4
  %11 = call i32 @cvmx_twsi_read8_cur_addr(i32 %10)
  %12 = and i32 %11, 255
  %13 = shl i32 %12, 8
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @CVMX_RTC_DS1374_ADDR, align 4
  %17 = call i32 @cvmx_twsi_read8_cur_addr(i32 %16)
  %18 = and i32 %17, 255
  %19 = shl i32 %18, 16
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @CVMX_RTC_DS1374_ADDR, align 4
  %23 = call i32 @cvmx_twsi_read8_cur_addr(i32 %22)
  %24 = and i32 %23, 255
  %25 = shl i32 %24, 24
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @CVMX_RTC_DS1374_ADDR, align 4
  %29 = call i32 @cvmx_twsi_read8(i32 %28, i32 0)
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %7
  br label %39

35:                                               ; preds = %7
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  br label %4

39:                                               ; preds = %34, %4
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @cvmx_twsi_read8(i32, i32) #1

declare dso_local i32 @cvmx_twsi_read8_cur_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
