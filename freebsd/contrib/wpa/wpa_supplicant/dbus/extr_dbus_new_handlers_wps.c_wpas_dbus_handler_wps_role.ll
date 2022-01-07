; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_wps.c_wpas_dbus_handler_wps_role.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_wps.c_wpas_dbus_handler_wps_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_start_params = type { i32 }

@DBUS_TYPE_STRING = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"dbus: WPS.Start - Wrong Role type, string required\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Role must be a string\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"enrollee\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"registrar\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"dbus: WPS.Start - Unknown role %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.wps_start_params*, i32**)* @wpas_dbus_handler_wps_role to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_dbus_handler_wps_role(i32* %0, i32* %1, %struct.wps_start_params* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wps_start_params*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.wps_start_params* %2, %struct.wps_start_params** %8, align 8
  store i32** %3, i32*** %9, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @dbus_message_iter_recurse(i32* %12, i32* %10)
  %14 = call i64 @dbus_message_iter_get_arg_type(i32* %10)
  %15 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %6, align 8
  %21 = call i32* @wpas_dbus_error_invalid_args(i32* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32**, i32*** %9, align 8
  store i32* %21, i32** %22, align 8
  store i32 -1, i32* %5, align 4
  br label %48

23:                                               ; preds = %4
  %24 = call i32 @dbus_message_iter_get_basic(i32* %10, i8** %11)
  %25 = load i8*, i8** %11, align 8
  %26 = call i64 @os_strcmp(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.wps_start_params*, %struct.wps_start_params** %8, align 8
  %30 = getelementptr inbounds %struct.wps_start_params, %struct.wps_start_params* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %47

31:                                               ; preds = %23
  %32 = load i8*, i8** %11, align 8
  %33 = call i64 @os_strcmp(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.wps_start_params*, %struct.wps_start_params** %8, align 8
  %37 = getelementptr inbounds %struct.wps_start_params, %struct.wps_start_params* %36, i32 0, i32 0
  store i32 2, i32* %37, align 4
  br label %46

38:                                               ; preds = %31
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  %42 = load i32*, i32** %6, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i32* @wpas_dbus_error_invalid_args(i32* %42, i8* %43)
  %45 = load i32**, i32*** %9, align 8
  store i32* %44, i32** %45, align 8
  store i32 -1, i32* %5, align 4
  br label %48

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %28
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %38, %17
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @dbus_message_iter_recurse(i32*, i32*) #1

declare dso_local i64 @dbus_message_iter_get_arg_type(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @wpas_dbus_error_invalid_args(i32*, i8*) #1

declare dso_local i32 @dbus_message_iter_get_basic(i32*, i8**) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
