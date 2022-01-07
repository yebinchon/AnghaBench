; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_wps.c_wpas_dbus_setter_wps_device_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_wps.c_wpas_dbus_setter_wps_device_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i32 }
%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

@DBUS_TYPE_STRING = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WPS_DEV_NAME_MAX_LEN = common dso_local global i64 0, align 8
@CFG_CHANGED_DEVICE_NAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_dbus_setter_wps_device_name(%struct.wpa_dbus_property_desc* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_dbus_property_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpa_supplicant*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.wpa_dbus_property_desc* %0, %struct.wpa_dbus_property_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %14, %struct.wpa_supplicant** %10, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %18 = call i32 @wpas_dbus_simple_property_setter(i32* %15, i32* %16, i32 %17, i8** %11)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %5, align 4
  br label %58

22:                                               ; preds = %4
  %23 = load i8*, i8** %11, align 8
  %24 = call i64 @os_strlen(i8* %23)
  %25 = load i64, i64* @WPS_DEV_NAME_MAX_LEN, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %5, align 4
  br label %58

29:                                               ; preds = %22
  %30 = load i8*, i8** %11, align 8
  %31 = call i8* @os_strdup(i8* %30)
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %5, align 4
  br label %58

36:                                               ; preds = %29
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %38 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @os_free(i8* %41)
  %43 = load i8*, i8** %12, align 8
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %45 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8* %43, i8** %47, align 8
  %48 = load i32, i32* @CFG_CHANGED_DEVICE_NAME, align 4
  %49 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %50 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %48
  store i32 %54, i32* %52, align 8
  %55 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %56 = call i32 @wpa_supplicant_update_config(%struct.wpa_supplicant* %55)
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %36, %34, %27, %20
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @wpas_dbus_simple_property_setter(i32*, i32*, i32, i8**) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @wpa_supplicant_update_config(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
