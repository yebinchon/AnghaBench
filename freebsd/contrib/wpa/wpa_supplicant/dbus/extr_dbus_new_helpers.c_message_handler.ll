; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_message_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_message_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_object_desc = type { i32 }

@DBUS_HANDLER_RESULT_NOT_YET_HANDLED = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"dbus: %s.%s (%s) [%s]\00", align 1
@WPA_DBUS_INTROSPECTION_METHOD = common dso_local global i32 0, align 4
@WPAS_DBUS_METHOD_SIGNAL_PROP_MAX = common dso_local global i32 0, align 4
@WPA_DBUS_INTROSPECTION_INTERFACE = common dso_local global i32 0, align 4
@WPAS_DBUS_INTERFACE_MAX = common dso_local global i32 0, align 4
@DBUS_ERROR_UNKNOWN_METHOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"wpa_supplicant was compiled without introspection support.\00", align 1
@WPA_DBUS_PROPERTIES_INTERFACE = common dso_local global i32 0, align 4
@DBUS_HANDLER_RESULT_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @message_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @message_handler(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wpa_dbus_object_desc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.wpa_dbus_object_desc*
  store %struct.wpa_dbus_object_desc* %14, %struct.wpa_dbus_object_desc** %8, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i8* @dbus_message_get_member(i32* %15)
  store i8* %16, i8** %9, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i8* @dbus_message_get_path(i32* %17)
  store i8* %18, i8** %10, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i8* @dbus_message_get_interface(i32* %19)
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i8*, i8** %11, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26, %23, %3
  %30 = load i32, i32* @DBUS_HANDLER_RESULT_NOT_YET_HANDLED, align 4
  store i32 %30, i32* %4, align 4
  br label %93

31:                                               ; preds = %26
  %32 = load i32, i32* @MSG_MSGDUMP, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @dbus_message_get_signature(i32* %36)
  %38 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %34, i8* %35, i32 %37)
  %39 = load i32, i32* @WPA_DBUS_INTROSPECTION_METHOD, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* @WPAS_DBUS_METHOD_SIGNAL_PROP_MAX, align 4
  %42 = call i32 @os_strncmp(i32 %39, i8* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %31
  %45 = load i32, i32* @WPA_DBUS_INTROSPECTION_INTERFACE, align 4
  %46 = load i8*, i8** %11, align 8
  %47 = load i32, i32* @WPAS_DBUS_INTERFACE_MAX, align 4
  %48 = call i32 @os_strncmp(i32 %45, i8* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* @DBUS_ERROR_UNKNOWN_METHOD, align 4
  %53 = call i32* @dbus_message_new_error(i32* %51, i32 %52, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  store i32* %53, i32** %12, align 8
  br label %69

54:                                               ; preds = %44, %31
  %55 = load i32, i32* @WPA_DBUS_PROPERTIES_INTERFACE, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* @WPAS_DBUS_INTERFACE_MAX, align 4
  %58 = call i32 @os_strncmp(i32 %55, i8* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %8, align 8
  %63 = call i32* @properties_handler(i32* %61, %struct.wpa_dbus_object_desc* %62)
  store i32* %63, i32** %12, align 8
  br label %68

64:                                               ; preds = %54
  %65 = load i32*, i32** %6, align 8
  %66 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %8, align 8
  %67 = call i32* @msg_method_handler(i32* %65, %struct.wpa_dbus_object_desc* %66)
  store i32* %67, i32** %12, align 8
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %68, %50
  %70 = load i32*, i32** %12, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32*, i32** %6, align 8
  %74 = call i32* @dbus_message_new_method_return(i32* %73)
  store i32* %74, i32** %12, align 8
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32*, i32** %12, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @dbus_message_get_no_reply(i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32*, i32** %5, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @dbus_connection_send(i32* %83, i32* %84, i32* null)
  br label %86

86:                                               ; preds = %82, %78
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @dbus_message_unref(i32* %87)
  br label %89

89:                                               ; preds = %86, %75
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @wpa_dbus_flush_all_changed_properties(i32* %90)
  %92 = load i32, i32* @DBUS_HANDLER_RESULT_HANDLED, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %89, %29
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i8* @dbus_message_get_member(i32*) #1

declare dso_local i8* @dbus_message_get_path(i32*) #1

declare dso_local i8* @dbus_message_get_interface(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @dbus_message_get_signature(i32*) #1

declare dso_local i32 @os_strncmp(i32, i8*, i32) #1

declare dso_local i32* @dbus_message_new_error(i32*, i32, i8*) #1

declare dso_local i32* @properties_handler(i32*, %struct.wpa_dbus_object_desc*) #1

declare dso_local i32* @msg_method_handler(i32*, %struct.wpa_dbus_object_desc*) #1

declare dso_local i32* @dbus_message_new_method_return(i32*) #1

declare dso_local i32 @dbus_message_get_no_reply(i32*) #1

declare dso_local i32 @dbus_connection_send(i32*, i32*, i32*) #1

declare dso_local i32 @dbus_message_unref(i32*) #1

declare dso_local i32 @wpa_dbus_flush_all_changed_properties(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
