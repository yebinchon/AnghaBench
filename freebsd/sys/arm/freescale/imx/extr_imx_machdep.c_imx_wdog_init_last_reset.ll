; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_machdep.c_imx_wdog_init_last_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_machdep.c_imx_wdog_init_last_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@last_reset_status = common dso_local global i32 0, align 4
@WDOG_RSR_SFTW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"SoftwareReset\00", align 1
@sysctl___hw_imx_last_reset_reason = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@WDOG_RSR_TOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"WatchdogTimeout\00", align 1
@WDOG_RSR_POR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"PowerOnReset\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imx_wdog_init_last_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32* @devmap_ptov(i32 %4, i32 4)
  store i32* %5, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %30

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = load volatile i32, i32* %9, align 4
  store i32 %10, i32* @last_reset_status, align 4
  %11 = load i32, i32* @last_reset_status, align 4
  %12 = load i32, i32* @WDOG_RSR_SFTW, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sysctl___hw_imx_last_reset_reason, i32 0, i32 0), align 8
  br label %30

16:                                               ; preds = %8
  %17 = load i32, i32* @last_reset_status, align 4
  %18 = load i32, i32* @WDOG_RSR_TOUT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sysctl___hw_imx_last_reset_reason, i32 0, i32 0), align 8
  br label %29

22:                                               ; preds = %16
  %23 = load i32, i32* @last_reset_status, align 4
  %24 = load i32, i32* @WDOG_RSR_POR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sysctl___hw_imx_last_reset_reason, i32 0, i32 0), align 8
  br label %28

28:                                               ; preds = %27, %22
  br label %29

29:                                               ; preds = %28, %21
  br label %30

30:                                               ; preds = %7, %29, %15
  ret void
}

declare dso_local i32* @devmap_ptov(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
