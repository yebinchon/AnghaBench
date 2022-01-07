; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_wps.c_wpas_dbus_handler_wps_pin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_wps.c_wpas_dbus_handler_wps_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_start_params = type { i32 }

@DBUS_TYPE_STRING = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"dbus: WPS.Start - Wrong Pin type, string required\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Pin must be a string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.wps_start_params*, i32**)* @wpas_dbus_handler_wps_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_dbus_handler_wps_pin(i32* %0, i32* %1, %struct.wps_start_params* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wps_start_params*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.wps_start_params* %2, %struct.wps_start_params** %8, align 8
  store i32** %3, i32*** %9, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @dbus_message_iter_recurse(i32* %11, i32* %10)
  %13 = call i64 @dbus_message_iter_get_arg_type(i32* %10)
  %14 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %6, align 8
  %20 = call i32* @wpas_dbus_error_invalid_args(i32* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32**, i32*** %9, align 8
  store i32* %20, i32** %21, align 8
  store i32 -1, i32* %5, align 4
  br label %26

22:                                               ; preds = %4
  %23 = load %struct.wps_start_params*, %struct.wps_start_params** %8, align 8
  %24 = getelementptr inbounds %struct.wps_start_params, %struct.wps_start_params* %23, i32 0, i32 0
  %25 = call i32 @dbus_message_iter_get_basic(i32* %10, i32* %24)
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %16
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @dbus_message_iter_recurse(i32*, i32*) #1

declare dso_local i64 @dbus_message_iter_get_arg_type(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @wpas_dbus_error_invalid_args(i32*, i8*) #1

declare dso_local i32 @dbus_message_iter_get_basic(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
