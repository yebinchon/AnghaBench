; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_getter_blobs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_getter_blobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i32 }
%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_config_blob* }
%struct.wpa_config_blob = type { %struct.wpa_config_blob*, i32, i32, i32 }

@DBUS_TYPE_VARIANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"a{say}\00", align 1
@DBUS_TYPE_ARRAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"{say}\00", align 1
@DBUS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DBUS_TYPE_DICT_ENTRY = common dso_local global i32 0, align 4
@DBUS_TYPE_STRING = common dso_local global i32 0, align 4
@DBUS_TYPE_BYTE_AS_STRING = common dso_local global i8* null, align 8
@DBUS_TYPE_BYTE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_dbus_getter_blobs(%struct.wpa_dbus_property_desc* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_dbus_property_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpa_supplicant*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.wpa_config_blob*, align 8
  store %struct.wpa_dbus_property_desc* %0, %struct.wpa_dbus_property_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %17, %struct.wpa_supplicant** %10, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* @DBUS_TYPE_VARIANT, align 4
  %20 = call i32 @dbus_message_iter_open_container(i32* %18, i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %11)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @DBUS_TYPE_ARRAY, align 4
  %24 = call i32 @dbus_message_iter_open_container(i32* %11, i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %12)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22, %4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @DBUS_ERROR_NO_MEMORY, align 4
  %29 = call i32 @dbus_set_error_const(i32* %27, i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %5, align 4
  br label %93

31:                                               ; preds = %22
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %33 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %35, align 8
  store %struct.wpa_config_blob* %36, %struct.wpa_config_blob** %15, align 8
  br label %37

37:                                               ; preds = %75, %31
  %38 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %15, align 8
  %39 = icmp ne %struct.wpa_config_blob* %38, null
  br i1 %39, label %40, label %79

40:                                               ; preds = %37
  %41 = load i32, i32* @DBUS_TYPE_DICT_ENTRY, align 4
  %42 = call i32 @dbus_message_iter_open_container(i32* %12, i32 %41, i8* null, i32* %13)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %46 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %15, align 8
  %47 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %46, i32 0, i32 3
  %48 = call i32 @dbus_message_iter_append_basic(i32* %13, i32 %45, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  %51 = load i32, i32* @DBUS_TYPE_ARRAY, align 4
  %52 = load i8*, i8** @DBUS_TYPE_BYTE_AS_STRING, align 8
  %53 = call i32 @dbus_message_iter_open_container(i32* %13, i32 %51, i8* %52, i32* %14)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %50
  %56 = load i32, i32* @DBUS_TYPE_BYTE, align 4
  %57 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %15, align 8
  %58 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %57, i32 0, i32 2
  %59 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %15, align 8
  %60 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dbus_message_iter_append_fixed_array(i32* %14, i32 %56, i32* %58, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = call i32 @dbus_message_iter_close_container(i32* %13, i32* %14)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = call i32 @dbus_message_iter_close_container(i32* %12, i32* %13)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %67, %64, %55, %50, %44, %40
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* @DBUS_ERROR_NO_MEMORY, align 4
  %73 = call i32 @dbus_set_error_const(i32* %71, i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %5, align 4
  br label %93

75:                                               ; preds = %67
  %76 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %15, align 8
  %77 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %76, i32 0, i32 0
  %78 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %77, align 8
  store %struct.wpa_config_blob* %78, %struct.wpa_config_blob** %15, align 8
  br label %37

79:                                               ; preds = %37
  %80 = call i32 @dbus_message_iter_close_container(i32* %11, i32* %12)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @dbus_message_iter_close_container(i32* %83, i32* %11)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %82, %79
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* @DBUS_ERROR_NO_MEMORY, align 4
  %89 = call i32 @dbus_set_error_const(i32* %87, i32 %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %5, align 4
  br label %93

91:                                               ; preds = %82
  %92 = load i32, i32* @TRUE, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %86, %70, %26
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @dbus_message_iter_open_container(i32*, i32, i8*, i32*) #1

declare dso_local i32 @dbus_set_error_const(i32*, i32, i8*) #1

declare dso_local i32 @dbus_message_iter_append_basic(i32*, i32, i32*) #1

declare dso_local i32 @dbus_message_iter_append_fixed_array(i32*, i32, i32*, i32) #1

declare dso_local i32 @dbus_message_iter_close_container(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
