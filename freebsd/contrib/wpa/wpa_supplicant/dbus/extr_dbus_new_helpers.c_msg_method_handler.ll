; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_msg_method_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_msg_method_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_object_desc = type { i32, %struct.wpa_dbus_method_desc* }
%struct.wpa_dbus_method_desc = type { i32* (i32*, i32)*, i32*, i32* }

@WPAS_DBUS_METHOD_SIGNAL_PROP_MAX = common dso_local global i32 0, align 4
@WPAS_DBUS_INTERFACE_MAX = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"no method handler for %s.%s on %s\00", align 1
@DBUS_ERROR_UNKNOWN_METHOD = common dso_local global i32 0, align 4
@DBUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.wpa_dbus_object_desc*)* @msg_method_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @msg_method_handler(i32* %0, %struct.wpa_dbus_object_desc* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_dbus_object_desc*, align 8
  %6 = alloca %struct.wpa_dbus_method_desc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.wpa_dbus_object_desc* %1, %struct.wpa_dbus_object_desc** %5, align 8
  %9 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %5, align 8
  %10 = getelementptr inbounds %struct.wpa_dbus_object_desc, %struct.wpa_dbus_object_desc* %9, i32 0, i32 1
  %11 = load %struct.wpa_dbus_method_desc*, %struct.wpa_dbus_method_desc** %10, align 8
  store %struct.wpa_dbus_method_desc* %11, %struct.wpa_dbus_method_desc** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i8* @dbus_message_get_member(i32* %12)
  store i8* %13, i8** %7, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i8* @dbus_message_get_interface(i32* %14)
  store i8* %15, i8** %8, align 8
  br label %16

16:                                               ; preds = %43, %2
  %17 = load %struct.wpa_dbus_method_desc*, %struct.wpa_dbus_method_desc** %6, align 8
  %18 = icmp ne %struct.wpa_dbus_method_desc* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.wpa_dbus_method_desc*, %struct.wpa_dbus_method_desc** %6, align 8
  %21 = getelementptr inbounds %struct.wpa_dbus_method_desc, %struct.wpa_dbus_method_desc* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i1 [ false, %16 ], [ %23, %19 ]
  br i1 %25, label %26, label %46

26:                                               ; preds = %24
  %27 = load %struct.wpa_dbus_method_desc*, %struct.wpa_dbus_method_desc** %6, align 8
  %28 = getelementptr inbounds %struct.wpa_dbus_method_desc, %struct.wpa_dbus_method_desc* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @WPAS_DBUS_METHOD_SIGNAL_PROP_MAX, align 4
  %32 = call i32 @os_strncmp(i32* %29, i8* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %26
  %35 = load %struct.wpa_dbus_method_desc*, %struct.wpa_dbus_method_desc** %6, align 8
  %36 = getelementptr inbounds %struct.wpa_dbus_method_desc, %struct.wpa_dbus_method_desc* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @WPAS_DBUS_INTERFACE_MAX, align 4
  %40 = call i32 @os_strncmp(i32* %37, i8* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %46

43:                                               ; preds = %34, %26
  %44 = load %struct.wpa_dbus_method_desc*, %struct.wpa_dbus_method_desc** %6, align 8
  %45 = getelementptr inbounds %struct.wpa_dbus_method_desc, %struct.wpa_dbus_method_desc* %44, i32 1
  store %struct.wpa_dbus_method_desc* %45, %struct.wpa_dbus_method_desc** %6, align 8
  br label %16

46:                                               ; preds = %42, %24
  %47 = load %struct.wpa_dbus_method_desc*, %struct.wpa_dbus_method_desc** %6, align 8
  %48 = icmp eq %struct.wpa_dbus_method_desc* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load %struct.wpa_dbus_method_desc*, %struct.wpa_dbus_method_desc** %6, align 8
  %51 = getelementptr inbounds %struct.wpa_dbus_method_desc, %struct.wpa_dbus_method_desc* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %49, %46
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @dbus_message_get_path(i32* %58)
  %60 = call i32 @wpa_printf(i32 %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %56, i8* %57, i32 %59)
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* @DBUS_ERROR_UNKNOWN_METHOD, align 4
  %63 = call i32* @dbus_message_new_error(i32* %61, i32 %62, i32* null)
  store i32* %63, i32** %3, align 8
  br label %82

64:                                               ; preds = %49
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.wpa_dbus_method_desc*, %struct.wpa_dbus_method_desc** %6, align 8
  %67 = call i32 @is_signature_correct(i32* %65, %struct.wpa_dbus_method_desc* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %72 = call i32* @dbus_message_new_error(i32* %70, i32 %71, i32* null)
  store i32* %72, i32** %3, align 8
  br label %82

73:                                               ; preds = %64
  %74 = load %struct.wpa_dbus_method_desc*, %struct.wpa_dbus_method_desc** %6, align 8
  %75 = getelementptr inbounds %struct.wpa_dbus_method_desc, %struct.wpa_dbus_method_desc* %74, i32 0, i32 0
  %76 = load i32* (i32*, i32)*, i32* (i32*, i32)** %75, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %5, align 8
  %79 = getelementptr inbounds %struct.wpa_dbus_object_desc, %struct.wpa_dbus_object_desc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32* %76(i32* %77, i32 %80)
  store i32* %81, i32** %3, align 8
  br label %82

82:                                               ; preds = %73, %69, %54
  %83 = load i32*, i32** %3, align 8
  ret i32* %83
}

declare dso_local i8* @dbus_message_get_member(i32*) #1

declare dso_local i8* @dbus_message_get_interface(i32*) #1

declare dso_local i32 @os_strncmp(i32*, i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @dbus_message_get_path(i32*) #1

declare dso_local i32* @dbus_message_new_error(i32*, i32, i32*) #1

declare dso_local i32 @is_signature_correct(i32*, %struct.wpa_dbus_method_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
