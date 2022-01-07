; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_setter_debug_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_setter_debug_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i32 }
%struct.wpa_global = type { i32 }

@DBUS_TYPE_STRING = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@debug_strings = common dso_local global i64* null, align 8
@wpa_debug_timestamp = common dso_local global i32 0, align 4
@wpa_debug_show_keys = common dso_local global i32 0, align 4
@DBUS_ERROR_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"wrong debug level value\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_dbus_setter_debug_level(%struct.wpa_dbus_property_desc* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_dbus_property_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpa_global*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wpa_dbus_property_desc* %0, %struct.wpa_dbus_property_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.wpa_global*
  store %struct.wpa_global* %15, %struct.wpa_global** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 -1, i32* %13, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %19 = call i32 @wpas_dbus_simple_property_setter(i32* %16, i32* %17, i32 %18, i8** %11)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %5, align 4
  br label %63

23:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %43, %23
  %25 = load i64*, i64** @debug_strings, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %24
  %32 = load i64*, i64** @debug_strings, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = call i64 @os_strcmp(i64 %36, i8* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %13, align 4
  br label %46

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %24

46:                                               ; preds = %40, %24
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = load %struct.wpa_global*, %struct.wpa_global** %10, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @wpa_debug_timestamp, align 4
  %53 = load i32, i32* @wpa_debug_show_keys, align 4
  %54 = call i64 @wpa_supplicant_set_debug_params(%struct.wpa_global* %50, i32 %51, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49, %46
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* @DBUS_ERROR_FAILED, align 4
  %59 = call i32 @dbus_set_error_const(i32* %57, i32 %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %5, align 4
  br label %63

61:                                               ; preds = %49
  %62 = load i32, i32* @TRUE, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %56, %21
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @wpas_dbus_simple_property_setter(i32*, i32*, i32, i8**) #1

declare dso_local i64 @os_strcmp(i64, i8*) #1

declare dso_local i64 @wpa_supplicant_set_debug_params(%struct.wpa_global*, i32, i32, i32) #1

declare dso_local i32 @dbus_set_error_const(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
