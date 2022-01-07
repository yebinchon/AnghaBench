; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_properties_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_properties_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_object_desc = type { i32 }

@WPA_DBUS_PROPERTIES_GET = common dso_local global i32 0, align 4
@WPAS_DBUS_METHOD_SIGNAL_PROP_MAX = common dso_local global i32 0, align 4
@WPA_DBUS_PROPERTIES_SET = common dso_local global i32 0, align 4
@WPA_DBUS_PROPERTIES_GETALL = common dso_local global i32 0, align 4
@DBUS_TYPE_STRING = common dso_local global i64 0, align 8
@DBUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@DBUS_ERROR_UNKNOWN_METHOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.wpa_dbus_object_desc*)* @properties_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @properties_handler(i32* %0, %struct.wpa_dbus_object_desc* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_dbus_object_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.wpa_dbus_object_desc* %1, %struct.wpa_dbus_object_desc** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i8* @dbus_message_get_member(i32* %9)
  store i8* %10, i8** %8, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @dbus_message_iter_init(i32* %11, i32* %6)
  %13 = load i32, i32* @WPA_DBUS_PROPERTIES_GET, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* @WPAS_DBUS_METHOD_SIGNAL_PROP_MAX, align 4
  %16 = call i32 @os_strncmp(i32 %13, i8* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load i32, i32* @WPA_DBUS_PROPERTIES_SET, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* @WPAS_DBUS_METHOD_SIGNAL_PROP_MAX, align 4
  %22 = call i32 @os_strncmp(i32 %19, i8* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32, i32* @WPA_DBUS_PROPERTIES_GETALL, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* @WPAS_DBUS_METHOD_SIGNAL_PROP_MAX, align 4
  %28 = call i32 @os_strncmp(i32 %25, i8* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %55, label %30

30:                                               ; preds = %24, %18, %2
  %31 = call i64 @dbus_message_iter_get_arg_type(i32* %6)
  %32 = load i64, i64* @DBUS_TYPE_STRING, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %37 = call i32* @dbus_message_new_error(i32* %35, i32 %36, i32* null)
  store i32* %37, i32** %3, align 8
  br label %59

38:                                               ; preds = %30
  %39 = call i32 @dbus_message_iter_get_basic(i32* %6, i8** %7)
  %40 = load i32, i32* @WPA_DBUS_PROPERTIES_GETALL, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* @WPAS_DBUS_METHOD_SIGNAL_PROP_MAX, align 4
  %43 = call i32 @os_strncmp(i32 %40, i8* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %38
  %46 = load i32*, i32** %4, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %5, align 8
  %49 = call i32* @properties_get_all(i32* %46, i8* %47, %struct.wpa_dbus_object_desc* %48)
  store i32* %49, i32** %3, align 8
  br label %59

50:                                               ; preds = %38
  %51 = load i32*, i32** %4, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %5, align 8
  %54 = call i32* @properties_get_or_set(i32* %51, i32* %6, i8* %52, %struct.wpa_dbus_object_desc* %53)
  store i32* %54, i32** %3, align 8
  br label %59

55:                                               ; preds = %24
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* @DBUS_ERROR_UNKNOWN_METHOD, align 4
  %58 = call i32* @dbus_message_new_error(i32* %56, i32 %57, i32* null)
  store i32* %58, i32** %3, align 8
  br label %59

59:                                               ; preds = %55, %50, %45, %34
  %60 = load i32*, i32** %3, align 8
  ret i32* %60
}

declare dso_local i8* @dbus_message_get_member(i32*) #1

declare dso_local i32 @dbus_message_iter_init(i32*, i32*) #1

declare dso_local i32 @os_strncmp(i32, i8*, i32) #1

declare dso_local i64 @dbus_message_iter_get_arg_type(i32*) #1

declare dso_local i32* @dbus_message_new_error(i32*, i32, i32*) #1

declare dso_local i32 @dbus_message_iter_get_basic(i32*, i8**) #1

declare dso_local i32* @properties_get_all(i32*, i8*, %struct.wpa_dbus_object_desc*) #1

declare dso_local i32* @properties_get_or_set(i32*, i32*, i8*, %struct.wpa_dbus_object_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
