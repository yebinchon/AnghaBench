; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_get_blob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_get_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_config_blob = type { i32, i32 }

@DBUS_TYPE_STRING = common dso_local global i32 0, align 4
@DBUS_TYPE_INVALID = common dso_local global i32 0, align 4
@WPAS_DBUS_ERROR_BLOB_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Blob id not set\00", align 1
@DBUS_TYPE_ARRAY = common dso_local global i32 0, align 4
@DBUS_TYPE_BYTE_AS_STRING = common dso_local global i32 0, align 4
@DBUS_TYPE_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_get_blob(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpa_config_blob*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %5, align 8
  store i32* null, i32** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %13 = load i32, i32* @DBUS_TYPE_INVALID, align 4
  %14 = call i32 @dbus_message_get_args(i32* %11, i32* null, i32 %12, i8** %9, i32 %13)
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %16 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = call %struct.wpa_config_blob* @wpa_config_get_blob(i32 %17, i8* %18)
  store %struct.wpa_config_blob* %19, %struct.wpa_config_blob** %10, align 8
  %20 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %10, align 8
  %21 = icmp ne %struct.wpa_config_blob* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @WPAS_DBUS_ERROR_BLOB_UNKNOWN, align 4
  %25 = call i32* @dbus_message_new_error(i32* %23, i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32* %25, i32** %3, align 8
  br label %60

26:                                               ; preds = %2
  %27 = load i32*, i32** %4, align 8
  %28 = call i32* @dbus_message_new_method_return(i32* %27)
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** %4, align 8
  %33 = call i32* @wpas_dbus_error_no_memory(i32* %32)
  store i32* %33, i32** %3, align 8
  br label %60

34:                                               ; preds = %26
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @dbus_message_iter_init_append(i32* %35, i32* %7)
  %37 = load i32, i32* @DBUS_TYPE_ARRAY, align 4
  %38 = load i32, i32* @DBUS_TYPE_BYTE_AS_STRING, align 4
  %39 = call i32 @dbus_message_iter_open_container(i32* %7, i32 %37, i32 %38, i32* %8)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load i32, i32* @DBUS_TYPE_BYTE, align 4
  %43 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %10, align 8
  %44 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %43, i32 0, i32 1
  %45 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %10, align 8
  %46 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dbus_message_iter_append_fixed_array(i32* %8, i32 %42, i32* %44, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = call i32 @dbus_message_iter_close_container(i32* %7, i32* %8)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50, %41, %34
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @dbus_message_unref(i32* %54)
  %56 = load i32*, i32** %4, align 8
  %57 = call i32* @wpas_dbus_error_no_memory(i32* %56)
  store i32* %57, i32** %6, align 8
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i32*, i32** %6, align 8
  store i32* %59, i32** %3, align 8
  br label %60

60:                                               ; preds = %58, %31, %22
  %61 = load i32*, i32** %3, align 8
  ret i32* %61
}

declare dso_local i32 @dbus_message_get_args(i32*, i32*, i32, i8**, i32) #1

declare dso_local %struct.wpa_config_blob* @wpa_config_get_blob(i32, i8*) #1

declare dso_local i32* @dbus_message_new_error(i32*, i32, i8*) #1

declare dso_local i32* @dbus_message_new_method_return(i32*) #1

declare dso_local i32* @wpas_dbus_error_no_memory(i32*) #1

declare dso_local i32 @dbus_message_iter_init_append(i32*, i32*) #1

declare dso_local i32 @dbus_message_iter_open_container(i32*, i32, i32, i32*) #1

declare dso_local i32 @dbus_message_iter_append_fixed_array(i32*, i32, i32*, i32) #1

declare dso_local i32 @dbus_message_iter_close_container(i32*, i32*) #1

declare dso_local i32 @dbus_message_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
