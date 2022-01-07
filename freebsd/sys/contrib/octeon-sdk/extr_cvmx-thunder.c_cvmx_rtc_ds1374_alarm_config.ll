; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-thunder.c_cvmx_rtc_ds1374_alarm_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-thunder.c_cvmx_rtc_ds1374_alarm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_RTC_DS1374_ADDR = common dso_local global i32 0, align 4
@RTC_CTL_ADDR = common dso_local global i32 0, align 4
@RTC_CTL_BIT_EOSC = common dso_local global i32 0, align 4
@RTC_CTL_BIT_WD_ALM = common dso_local global i32 0, align 4
@RTC_CTL_BIT_WDSTR = common dso_local global i32 0, align 4
@RTC_CTL_BIT_AIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @cvmx_rtc_ds1374_alarm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_rtc_ds1374_alarm_config(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @CVMX_RTC_DS1374_ADDR, align 4
  %9 = load i32, i32* @RTC_CTL_ADDR, align 4
  %10 = call i32 @cvmx_twsi_read8(i32 %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @RTC_CTL_BIT_EOSC, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @RTC_CTL_BIT_WD_ALM, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %7, align 4
  br label %26

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @RTC_CTL_BIT_WD_ALM, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi i32 [ %20, %17 ], [ %25, %21 ]
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @RTC_CTL_BIT_WDSTR, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %7, align 4
  br label %39

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @RTC_CTL_BIT_WDSTR, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %34, %30
  %40 = phi i32 [ %33, %30 ], [ %38, %34 ]
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @RTC_CTL_BIT_AIE, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %7, align 4
  br label %52

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @RTC_CTL_BIT_AIE, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %47, %43
  %53 = phi i32 [ %46, %43 ], [ %51, %47 ]
  %54 = load i32, i32* @CVMX_RTC_DS1374_ADDR, align 4
  %55 = load i32, i32* @RTC_CTL_ADDR, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @cvmx_twsi_write8(i32 %54, i32 %55, i32 %56)
  ret i32 0
}

declare dso_local i32 @cvmx_twsi_read8(i32, i32) #1

declare dso_local i32 @cvmx_twsi_write8(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
