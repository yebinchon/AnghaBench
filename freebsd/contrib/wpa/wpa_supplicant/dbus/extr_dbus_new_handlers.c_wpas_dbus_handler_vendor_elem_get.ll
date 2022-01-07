; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_vendor_elem_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_vendor_elem_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32* }

@NUM_VENDOR_ELEM_FRAMES = common dso_local global i64 0, align 8
@DBUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Invalid ID\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"ID value does not exist\00", align 1
@DBUS_TYPE_ARRAY = common dso_local global i32 0, align 4
@DBUS_TYPE_BYTE_AS_STRING = common dso_local global i32 0, align 4
@DBUS_TYPE_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_vendor_elem_get(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @dbus_message_iter_init(i32* %12, i32* %7)
  %14 = call i32 @dbus_message_iter_get_basic(i32* %7, i64* %9)
  %15 = load i64, i64* %9, align 8
  %16 = icmp ult i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @NUM_VENDOR_ELEM_FRAMES, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17, %2
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %24 = call i32* @dbus_message_new_error(i32* %22, i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %3, align 8
  br label %84

25:                                               ; preds = %17
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call %struct.wpa_supplicant* @wpas_vendor_elem(%struct.wpa_supplicant* %26, i64 %27)
  store %struct.wpa_supplicant* %28, %struct.wpa_supplicant** %5, align 8
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %30 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %25
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %39 = call i32* @dbus_message_new_error(i32* %37, i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32* %39, i32** %3, align 8
  br label %84

40:                                               ; preds = %25
  %41 = load i32*, i32** %4, align 8
  %42 = call i32* @dbus_message_new_method_return(i32* %41)
  store i32* %42, i32** %6, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32*, i32** %4, align 8
  %47 = call i32* @wpas_dbus_error_no_memory(i32* %46)
  store i32* %47, i32** %3, align 8
  br label %84

48:                                               ; preds = %40
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @dbus_message_iter_init_append(i32* %49, i32* %7)
  %51 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %52 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32* @wpabuf_head_u8(i32 %56)
  store i32* %57, i32** %10, align 8
  %58 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %59 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @wpabuf_len(i32 %63)
  store i64 %64, i64* %11, align 8
  %65 = load i32, i32* @DBUS_TYPE_ARRAY, align 4
  %66 = load i32, i32* @DBUS_TYPE_BYTE_AS_STRING, align 4
  %67 = call i32 @dbus_message_iter_open_container(i32* %7, i32 %65, i32 %66, i32* %8)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %48
  %70 = load i32, i32* @DBUS_TYPE_BYTE, align 4
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @dbus_message_iter_append_fixed_array(i32* %8, i32 %70, i32** %10, i64 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = call i32 @dbus_message_iter_close_container(i32* %7, i32* %8)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %74, %69, %48
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @dbus_message_unref(i32* %78)
  %80 = load i32*, i32** %4, align 8
  %81 = call i32* @wpas_dbus_error_no_memory(i32* %80)
  store i32* %81, i32** %6, align 8
  br label %82

82:                                               ; preds = %77, %74
  %83 = load i32*, i32** %6, align 8
  store i32* %83, i32** %3, align 8
  br label %84

84:                                               ; preds = %82, %45, %36, %21
  %85 = load i32*, i32** %3, align 8
  ret i32* %85
}

declare dso_local i32 @dbus_message_iter_init(i32*, i32*) #1

declare dso_local i32 @dbus_message_iter_get_basic(i32*, i64*) #1

declare dso_local i32* @dbus_message_new_error(i32*, i32, i8*) #1

declare dso_local %struct.wpa_supplicant* @wpas_vendor_elem(%struct.wpa_supplicant*, i64) #1

declare dso_local i32* @dbus_message_new_method_return(i32*) #1

declare dso_local i32* @wpas_dbus_error_no_memory(i32*) #1

declare dso_local i32 @dbus_message_iter_init_append(i32*, i32*) #1

declare dso_local i32* @wpabuf_head_u8(i32) #1

declare dso_local i64 @wpabuf_len(i32) #1

declare dso_local i32 @dbus_message_iter_open_container(i32*, i32, i32, i32*) #1

declare dso_local i32 @dbus_message_iter_append_fixed_array(i32*, i32, i32**, i64) #1

declare dso_local i32 @dbus_message_iter_close_container(i32*, i32*) #1

declare dso_local i32 @dbus_message_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
