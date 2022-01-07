; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-thunder.c_cvmx_rtc_ds1374_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-thunder.c_cvmx_rtc_ds1374_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_RTC_DS1374_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_rtc_ds1374_write(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %43, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %46

9:                                                ; preds = %6
  %10 = load i32, i32* @CVMX_RTC_DS1374_ADDR, align 4
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, 255
  %13 = call i32 @cvmx_twsi_write8(i32 %10, i32 0, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @CVMX_RTC_DS1374_ADDR, align 4
  %15 = load i32, i32* %2, align 4
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = call i32 @cvmx_twsi_write8(i32 %14, i32 1, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @CVMX_RTC_DS1374_ADDR, align 4
  %22 = load i32, i32* %2, align 4
  %23 = ashr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = call i32 @cvmx_twsi_write8(i32 %21, i32 2, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @CVMX_RTC_DS1374_ADDR, align 4
  %29 = load i32, i32* %2, align 4
  %30 = ashr i32 %29, 24
  %31 = and i32 %30, 255
  %32 = call i32 @cvmx_twsi_write8(i32 %28, i32 3, i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* @CVMX_RTC_DS1374_ADDR, align 4
  %36 = call i32 @cvmx_twsi_read8(i32 %35, i32 0)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %2, align 4
  %39 = and i32 %38, 255
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %9
  br label %46

42:                                               ; preds = %9
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %6

46:                                               ; preds = %41, %6
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 -1, i32 0
  ret i32 %50
}

declare dso_local i32 @cvmx_twsi_write8(i32, i32, i32) #1

declare dso_local i32 @cvmx_twsi_read8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
