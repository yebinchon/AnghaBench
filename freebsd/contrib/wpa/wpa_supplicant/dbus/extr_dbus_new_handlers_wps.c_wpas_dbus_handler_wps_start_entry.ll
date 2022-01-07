; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_wps.c_wpas_dbus_handler_wps_start_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_wps.c_wpas_dbus_handler_wps_start_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_start_params = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"Role\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Bssid\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Pin\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"dbus: WPS.Start - unknown key %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, %struct.wps_start_params*, i32**)* @wpas_dbus_handler_wps_start_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_dbus_handler_wps_start_entry(i32* %0, i8* %1, i32* %2, %struct.wps_start_params* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.wps_start_params*, align 8
  %11 = alloca i32**, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.wps_start_params* %3, %struct.wps_start_params** %10, align 8
  store i32** %4, i32*** %11, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i64 @os_strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load %struct.wps_start_params*, %struct.wps_start_params** %10, align 8
  %19 = load i32**, i32*** %11, align 8
  %20 = call i32 @wpas_dbus_handler_wps_role(i32* %16, i32* %17, %struct.wps_start_params* %18, i32** %19)
  store i32 %20, i32* %6, align 4
  br label %62

21:                                               ; preds = %5
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @os_strcmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load %struct.wps_start_params*, %struct.wps_start_params** %10, align 8
  %29 = load i32**, i32*** %11, align 8
  %30 = call i32 @wpas_dbus_handler_wps_type(i32* %26, i32* %27, %struct.wps_start_params* %28, i32** %29)
  store i32 %30, i32* %6, align 4
  br label %62

31:                                               ; preds = %21
  %32 = load i8*, i8** %8, align 8
  %33 = call i64 @os_strcmp(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.wps_start_params*, %struct.wps_start_params** %10, align 8
  %39 = load i32**, i32*** %11, align 8
  %40 = call i32 @wpas_dbus_handler_wps_bssid(i32* %36, i32* %37, %struct.wps_start_params* %38, i32** %39)
  store i32 %40, i32* %6, align 4
  br label %62

41:                                               ; preds = %31
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @os_strcmp(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load %struct.wps_start_params*, %struct.wps_start_params** %10, align 8
  %49 = load i32**, i32*** %11, align 8
  %50 = call i32 @wpas_dbus_handler_wps_pin(i32* %46, i32* %47, %struct.wps_start_params* %48, i32** %49)
  store i32 %50, i32* %6, align 4
  br label %62

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @wpa_printf(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i32* @wpas_dbus_error_invalid_args(i32* %58, i8* %59)
  %61 = load i32**, i32*** %11, align 8
  store i32* %60, i32** %61, align 8
  store i32 -1, i32* %6, align 4
  br label %62

62:                                               ; preds = %54, %45, %35, %25, %15
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @wpas_dbus_handler_wps_role(i32*, i32*, %struct.wps_start_params*, i32**) #1

declare dso_local i32 @wpas_dbus_handler_wps_type(i32*, i32*, %struct.wps_start_params*, i32**) #1

declare dso_local i32 @wpas_dbus_handler_wps_bssid(i32*, i32*, %struct.wps_start_params*, i32**) #1

declare dso_local i32 @wpas_dbus_handler_wps_pin(i32*, i32*, %struct.wps_start_params*, i32**) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i32* @wpas_dbus_error_invalid_args(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
