; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_wps_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_wps_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"WPS-STRICT: Wi-Fi Protected Setup State attribute missing\00", align 1
@WPS_STATE_NOT_CONFIGURED = common dso_local global i64 0, align 8
@WPS_STATE_CONFIGURED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [69 x i8] c"WPS-STRICT: Invalid Wi-Fi Protected Setup State attribute value 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32)* @wps_validate_wps_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_validate_wps_state(i64* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i64*, i64** %4, align 8
  %7 = icmp eq i64* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* @MSG_INFO, align 4
  %13 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %31

14:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %31

15:                                               ; preds = %2
  %16 = load i64*, i64** %4, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @WPS_STATE_NOT_CONFIGURED, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i64*, i64** %4, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WPS_STATE_CONFIGURED, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* @MSG_INFO, align 4
  %27 = load i64*, i64** %4, align 8
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  store i32 -1, i32* %3, align 4
  br label %31

30:                                               ; preds = %20, %15
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %25, %14, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
