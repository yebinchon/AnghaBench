; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_select_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_select_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32 }
%struct.wpa_ssid = type { i32 }

@DBUS_TYPE_OBJECT_PATH = common dso_local global i32 0, align 4
@DBUS_TYPE_INVALID = common dso_local global i32 0, align 4
@WPAS_DBUS_NEW_NETWORKS_PART = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_select_network(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpa_ssid*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %4, align 8
  store i32* null, i32** %5, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @DBUS_TYPE_OBJECT_PATH, align 4
  %13 = load i32, i32* @DBUS_TYPE_INVALID, align 4
  %14 = call i32 @dbus_message_get_args(i32* %11, i32* null, i32 %12, i8** %6, i32 %13)
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @WPAS_DBUS_NEW_NETWORKS_PART, align 4
  %17 = call i8* @wpas_dbus_new_decompose_object_path(i8* %15, i32 %16, i8** %8)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %2
  %21 = load i8*, i8** %8, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %20
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %25 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @os_strcmp(i8* %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28, %23, %20, %2
  %36 = load i32*, i32** %3, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32* @wpas_dbus_error_invalid_args(i32* %36, i8* %37)
  store i32* %38, i32** %5, align 8
  br label %63

39:                                               ; preds = %28
  store i64 0, i64* @errno, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @strtoul(i8* %40, i32* null, i32 10)
  store i32 %41, i32* %9, align 4
  %42 = load i64, i64* @errno, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32*, i32** %3, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32* @wpas_dbus_error_invalid_args(i32* %45, i8* %46)
  store i32* %47, i32** %5, align 8
  br label %63

48:                                               ; preds = %39
  %49 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %50 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call %struct.wpa_ssid* @wpa_config_get_network(i32 %51, i32 %52)
  store %struct.wpa_ssid* %53, %struct.wpa_ssid** %10, align 8
  %54 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %55 = icmp eq %struct.wpa_ssid* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32*, i32** %3, align 8
  %58 = call i32* @wpas_dbus_error_network_unknown(i32* %57)
  store i32* %58, i32** %5, align 8
  br label %63

59:                                               ; preds = %48
  %60 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %61 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %62 = call i32 @wpa_supplicant_select_network(%struct.wpa_supplicant* %60, %struct.wpa_ssid* %61)
  br label %63

63:                                               ; preds = %59, %56, %44, %35
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @os_free(i8* %64)
  %66 = load i32*, i32** %5, align 8
  ret i32* %66
}

declare dso_local i32 @dbus_message_get_args(i32*, i32*, i32, i8**, i32) #1

declare dso_local i8* @wpas_dbus_new_decompose_object_path(i8*, i32, i8**) #1

declare dso_local i64 @os_strcmp(i8*, i32) #1

declare dso_local i32* @wpas_dbus_error_invalid_args(i32*, i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local %struct.wpa_ssid* @wpa_config_get_network(i32, i32) #1

declare dso_local i32* @wpas_dbus_error_network_unknown(i32*) #1

declare dso_local i32 @wpa_supplicant_select_network(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
