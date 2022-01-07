; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_wps.c_wpas_dbus_setter_wps_device_device_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_wps.c_wpas_dbus_setter_wps_device_device_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i32 }
%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@DBUS_TYPE_VARIANT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@DBUS_TYPE_ARRAY = common dso_local global i64 0, align 8
@WPS_DEV_TYPE_LEN = common dso_local global i32 0, align 4
@CFG_CHANGED_DEVICE_TYPE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_dbus_setter_wps_device_device_type(%struct.wpa_dbus_property_desc* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_dbus_property_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpa_supplicant*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wpa_dbus_property_desc* %0, %struct.wpa_dbus_property_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %16, %struct.wpa_supplicant** %10, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @dbus_message_iter_get_arg_type(i32* %17)
  %19 = load i64, i64* @DBUS_TYPE_VARIANT, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %5, align 4
  br label %58

23:                                               ; preds = %4
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @dbus_message_iter_recurse(i32* %24, i32* %13)
  %26 = call i64 @dbus_message_iter_get_arg_type(i32* %13)
  %27 = load i64, i64* @DBUS_TYPE_ARRAY, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %5, align 4
  br label %58

31:                                               ; preds = %23
  %32 = call i32 @dbus_message_iter_recurse(i32* %13, i32* %14)
  %33 = call i32 @dbus_message_iter_get_fixed_array(i32* %14, i32** %11, i32* %12)
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %5, align 4
  br label %58

39:                                               ; preds = %31
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %41 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %47 = call i32 @os_memcpy(i32 %44, i32* %45, i32 %46)
  %48 = load i32, i32* @CFG_CHANGED_DEVICE_TYPE, align 4
  %49 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %50 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %48
  store i32 %54, i32* %52, align 4
  %55 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %56 = call i32 @wpa_supplicant_update_config(%struct.wpa_supplicant* %55)
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %39, %37, %29, %21
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @dbus_message_iter_get_arg_type(i32*) #1

declare dso_local i32 @dbus_message_iter_recurse(i32*, i32*) #1

declare dso_local i32 @dbus_message_iter_get_fixed_array(i32*, i32**, i32*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @wpa_supplicant_update_config(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
