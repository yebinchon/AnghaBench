; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_wps.c_wpas_dbus_handler_wps_bssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_wps.c_wpas_dbus_handler_wps_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_start_params = type { i32 }

@DBUS_TYPE_ARRAY = common dso_local global i64 0, align 8
@DBUS_TYPE_BYTE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"dbus: WPS.Start - Wrong Bssid type, byte array required\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Bssid must be a byte array\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"dbus: WPS.Start - Wrong Bssid length %d\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Bssid is wrong length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.wps_start_params*, i32**)* @wpas_dbus_handler_wps_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_dbus_handler_wps_bssid(i32* %0, i32* %1, %struct.wps_start_params* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wps_start_params*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.wps_start_params* %2, %struct.wps_start_params** %8, align 8
  store i32** %3, i32*** %9, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @dbus_message_iter_recurse(i32* %13, i32* %10)
  %15 = call i64 @dbus_message_iter_get_arg_type(i32* %10)
  %16 = load i64, i64* @DBUS_TYPE_ARRAY, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = call i64 @dbus_message_iter_get_element_type(i32* %10)
  %20 = load i64, i64* @DBUS_TYPE_BYTE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18, %4
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %6, align 8
  %26 = call i32* @wpas_dbus_error_invalid_args(i32* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32**, i32*** %9, align 8
  store i32* %26, i32** %27, align 8
  store i32 -1, i32* %5, align 4
  br label %44

28:                                               ; preds = %18
  %29 = call i32 @dbus_message_iter_recurse(i32* %10, i32* %11)
  %30 = load %struct.wps_start_params*, %struct.wps_start_params** %8, align 8
  %31 = getelementptr inbounds %struct.wps_start_params, %struct.wps_start_params* %30, i32 0, i32 0
  %32 = call i32 @dbus_message_iter_get_fixed_array(i32* %11, i32* %31, i32* %12)
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @ETH_ALEN, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** %6, align 8
  %41 = call i32* @wpas_dbus_error_invalid_args(i32* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32**, i32*** %9, align 8
  store i32* %41, i32** %42, align 8
  store i32 -1, i32* %5, align 4
  br label %44

43:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %36, %22
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @dbus_message_iter_recurse(i32*, i32*) #1

declare dso_local i64 @dbus_message_iter_get_arg_type(i32*) #1

declare dso_local i64 @dbus_message_iter_get_element_type(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @wpas_dbus_error_invalid_args(i32*, i8*) #1

declare dso_local i32 @dbus_message_iter_get_fixed_array(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
