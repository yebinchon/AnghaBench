; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_getter_iface_global.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_getter_iface_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i32, i32 }
%struct.wpa_supplicant = type { i32 }

@DBUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unhandled interface property %s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DBUS_TYPE_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_dbus_getter_iface_global(%struct.wpa_dbus_property_desc* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_dbus_property_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpa_supplicant*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [250 x i8], align 16
  %13 = alloca i8*, align 8
  store %struct.wpa_dbus_property_desc* %0, %struct.wpa_dbus_property_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %15, %struct.wpa_supplicant** %10, align 8
  %16 = getelementptr inbounds [250 x i8], [250 x i8]* %12, i64 0, i64 0
  store i8* %16, i8** %13, align 8
  %17 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %6, align 8
  %18 = getelementptr inbounds %struct.wpa_dbus_property_desc, %struct.wpa_dbus_property_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %24 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %6, align 8
  %25 = getelementptr inbounds %struct.wpa_dbus_property_desc, %struct.wpa_dbus_property_desc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dbus_set_error(i32* %22, i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %5, align 4
  br label %47

29:                                               ; preds = %4
  %30 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %6, align 8
  %31 = getelementptr inbounds %struct.wpa_dbus_property_desc, %struct.wpa_dbus_property_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [250 x i8], [250 x i8]* %12, i64 0, i64 0
  %37 = call i32 @wpa_config_get_value(i32 %32, i32 %35, i8* %36, i32 250)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i8*, i8** %13, align 8
  store i8 0, i8* %41, align 1
  br label %42

42:                                               ; preds = %40, %29
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @wpas_dbus_simple_property_getter(i32* %43, i32 %44, i8** %13, i32* %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %42, %21
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @dbus_set_error(i32*, i32, i8*, i32) #1

declare dso_local i32 @wpa_config_get_value(i32, i32, i8*, i32) #1

declare dso_local i32 @wpas_dbus_simple_property_getter(i32*, i32, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
