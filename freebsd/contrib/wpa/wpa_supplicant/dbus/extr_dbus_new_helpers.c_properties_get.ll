; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_properties_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_properties_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i64 (%struct.wpa_dbus_property_desc*, i32*, i32*, i8*)* }

@.str = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@DBUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Property is write-only\00", align 1
@FALSE = common dso_local global i64 0, align 8
@DBUS_ERROR_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to read property\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.wpa_dbus_property_desc*, i8*)* @properties_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @properties_get(i32* %0, %struct.wpa_dbus_property_desc* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wpa_dbus_property_desc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.wpa_dbus_property_desc* %1, %struct.wpa_dbus_property_desc** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @dbus_message_get_signature(i32* %11)
  %13 = call i64 @os_strcmp(i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %18 = call i32* @dbus_message_new_error(i32* %16, i32 %17, i8* null)
  store i32* %18, i32** %4, align 8
  br label %51

19:                                               ; preds = %3
  %20 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %6, align 8
  %21 = getelementptr inbounds %struct.wpa_dbus_property_desc, %struct.wpa_dbus_property_desc* %20, i32 0, i32 0
  %22 = load i64 (%struct.wpa_dbus_property_desc*, i32*, i32*, i8*)*, i64 (%struct.wpa_dbus_property_desc*, i32*, i32*, i8*)** %21, align 8
  %23 = icmp eq i64 (%struct.wpa_dbus_property_desc*, i32*, i32*, i8*)* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %27 = call i32* @dbus_message_new_error(i32* %25, i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32* %27, i32** %4, align 8
  br label %51

28:                                               ; preds = %19
  %29 = load i32*, i32** %5, align 8
  %30 = call i32* @dbus_message_new_method_return(i32* %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @dbus_message_iter_init_append(i32* %31, i32* %9)
  %33 = call i32 @dbus_error_init(i32* %10)
  %34 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %6, align 8
  %35 = getelementptr inbounds %struct.wpa_dbus_property_desc, %struct.wpa_dbus_property_desc* %34, i32 0, i32 0
  %36 = load i64 (%struct.wpa_dbus_property_desc*, i32*, i32*, i8*)*, i64 (%struct.wpa_dbus_property_desc*, i32*, i32*, i8*)** %35, align 8
  %37 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 %36(%struct.wpa_dbus_property_desc* %37, i32* %9, i32* %10, i8* %38)
  %40 = load i64, i64* @FALSE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %28
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @dbus_message_unref(i32* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @DBUS_ERROR_FAILED, align 4
  %47 = call i32* @wpas_dbus_reply_new_from_error(i32* %45, i32* %10, i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32* %47, i32** %8, align 8
  %48 = call i32 @dbus_error_free(i32* %10)
  br label %49

49:                                               ; preds = %42, %28
  %50 = load i32*, i32** %8, align 8
  store i32* %50, i32** %4, align 8
  br label %51

51:                                               ; preds = %49, %24, %15
  %52 = load i32*, i32** %4, align 8
  ret i32* %52
}

declare dso_local i64 @os_strcmp(i32, i8*) #1

declare dso_local i32 @dbus_message_get_signature(i32*) #1

declare dso_local i32* @dbus_message_new_error(i32*, i32, i8*) #1

declare dso_local i32* @dbus_message_new_method_return(i32*) #1

declare dso_local i32 @dbus_message_iter_init_append(i32*, i32*) #1

declare dso_local i32 @dbus_error_init(i32*) #1

declare dso_local i32 @dbus_message_unref(i32*) #1

declare dso_local i32* @wpas_dbus_reply_new_from_error(i32*, i32*, i32, i8*) #1

declare dso_local i32 @dbus_error_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
