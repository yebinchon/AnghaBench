; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps.c_is_selected_pin_registrar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps.c_is_selected_pin_registrar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_parse_attr = type { i64*, i32*, i32* }

@DEV_PW_PUSHBUTTON = common dso_local global i32 0, align 4
@WPS_CONFIG_DISPLAY = common dso_local global i32 0, align 4
@WPS_CONFIG_KEYPAD = common dso_local global i32 0, align 4
@WPS_CONFIG_LABEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_parse_attr*)* @is_selected_pin_registrar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_selected_pin_registrar(%struct.wps_parse_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wps_parse_attr*, align 8
  store %struct.wps_parse_attr* %0, %struct.wps_parse_attr** %3, align 8
  %4 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %5 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %4, i32 0, i32 0
  %6 = load i64*, i64** %5, align 8
  %7 = icmp ne i64* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %10 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %29

15:                                               ; preds = %8
  %16 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %17 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %22 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @WPA_GET_BE16(i32* %23)
  %25 = load i32, i32* @DEV_PW_PUSHBUTTON, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %29

28:                                               ; preds = %20, %15
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %27, %14
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @WPA_GET_BE16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
