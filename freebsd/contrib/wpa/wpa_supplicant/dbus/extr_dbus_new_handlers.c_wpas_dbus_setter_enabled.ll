; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_setter_enabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_setter_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i32 }
%struct.network_handler_args = type { %struct.wpa_ssid*, %struct.wpa_supplicant* }
%struct.wpa_ssid = type { i32 }
%struct.wpa_supplicant = type { i32 }

@DBUS_TYPE_BOOLEAN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wpas_dbus_setter_enabled(%struct.wpa_dbus_property_desc* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.wpa_dbus_property_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.network_handler_args*, align 8
  %11 = alloca %struct.wpa_supplicant*, align 8
  %12 = alloca %struct.wpa_ssid*, align 8
  %13 = alloca i64, align 8
  store %struct.wpa_dbus_property_desc* %0, %struct.wpa_dbus_property_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.network_handler_args*
  store %struct.network_handler_args* %15, %struct.network_handler_args** %10, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* @DBUS_TYPE_BOOLEAN, align 4
  %19 = call i32 @wpas_dbus_simple_property_setter(i32* %16, i32* %17, i32 %18, i64* %13)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %5, align 8
  br label %42

23:                                               ; preds = %4
  %24 = load %struct.network_handler_args*, %struct.network_handler_args** %10, align 8
  %25 = getelementptr inbounds %struct.network_handler_args, %struct.network_handler_args* %24, i32 0, i32 1
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %25, align 8
  store %struct.wpa_supplicant* %26, %struct.wpa_supplicant** %11, align 8
  %27 = load %struct.network_handler_args*, %struct.network_handler_args** %10, align 8
  %28 = getelementptr inbounds %struct.network_handler_args, %struct.network_handler_args* %27, i32 0, i32 0
  %29 = load %struct.wpa_ssid*, %struct.wpa_ssid** %28, align 8
  store %struct.wpa_ssid* %29, %struct.wpa_ssid** %12, align 8
  %30 = load i64, i64* %13, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %34 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %35 = call i32 @wpa_supplicant_enable_network(%struct.wpa_supplicant* %33, %struct.wpa_ssid* %34)
  br label %40

36:                                               ; preds = %23
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  %38 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %39 = call i32 @wpa_supplicant_disable_network(%struct.wpa_supplicant* %37, %struct.wpa_ssid* %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i64, i64* @TRUE, align 8
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %40, %21
  %43 = load i64, i64* %5, align 8
  ret i64 %43
}

declare dso_local i32 @wpas_dbus_simple_property_setter(i32*, i32*, i32, i64*) #1

declare dso_local i32 @wpa_supplicant_enable_network(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i32 @wpa_supplicant_disable_network(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
