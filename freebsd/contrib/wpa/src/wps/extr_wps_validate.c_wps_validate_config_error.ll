; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_config_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_config_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"WPS-STRICT: Configuration Error attribute missing\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"WPS-STRICT: Invalid Configuration Error attribute value 0x%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @wps_validate_config_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_validate_config_error(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* @MSG_INFO, align 4
  %14 = call i32 (i32, i8*, ...) @wpa_printf(i32 %13, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %26

15:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %26

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @WPA_GET_BE16(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 20
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @MSG_INFO, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  store i32 -1, i32* %3, align 4
  br label %26

25:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %21, %15, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @WPA_GET_BE16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
