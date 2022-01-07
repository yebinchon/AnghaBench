; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_get_all_properties.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_get_all_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_object_desc = type { i32, i32 }

@DBUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"No readable properties in this interface\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, %struct.wpa_dbus_object_desc*)* @get_all_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_all_properties(i32* %0, i8* %1, %struct.wpa_dbus_object_desc* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpa_dbus_object_desc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.wpa_dbus_object_desc* %2, %struct.wpa_dbus_object_desc** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @dbus_message_new_method_return(i32* %12)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call i32* @wpas_dbus_error_no_memory(i32* %17)
  store i32* %18, i32** %4, align 8
  br label %59

19:                                               ; preds = %3
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @dbus_message_iter_init_append(i32* %20, i32* %9)
  %22 = call i32 @wpa_dbus_dict_open_write(i32* %9, i32* %10)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @dbus_message_unref(i32* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32* @wpas_dbus_error_no_memory(i32* %27)
  store i32* %28, i32** %4, align 8
  br label %59

29:                                               ; preds = %19
  %30 = call i32 @dbus_error_init(i32* %11)
  %31 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %7, align 8
  %32 = getelementptr inbounds %struct.wpa_dbus_object_desc, %struct.wpa_dbus_object_desc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %7, align 8
  %36 = getelementptr inbounds %struct.wpa_dbus_object_desc, %struct.wpa_dbus_object_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @fill_dict_with_properties(i32* %10, i32 %33, i8* %34, i32 %37, i32* %11)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %29
  %41 = call i32 @wpa_dbus_dict_close_write(i32* %9, i32* %10)
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @dbus_message_unref(i32* %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %46 = call i32* @wpas_dbus_reply_new_from_error(i32* %44, i32* %11, i32 %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32* %46, i32** %8, align 8
  %47 = call i32 @dbus_error_free(i32* %11)
  %48 = load i32*, i32** %8, align 8
  store i32* %48, i32** %4, align 8
  br label %59

49:                                               ; preds = %29
  %50 = call i32 @wpa_dbus_dict_close_write(i32* %9, i32* %10)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @dbus_message_unref(i32* %53)
  %55 = load i32*, i32** %5, align 8
  %56 = call i32* @wpas_dbus_error_no_memory(i32* %55)
  store i32* %56, i32** %4, align 8
  br label %59

57:                                               ; preds = %49
  %58 = load i32*, i32** %8, align 8
  store i32* %58, i32** %4, align 8
  br label %59

59:                                               ; preds = %57, %52, %40, %24, %16
  %60 = load i32*, i32** %4, align 8
  ret i32* %60
}

declare dso_local i32* @dbus_message_new_method_return(i32*) #1

declare dso_local i32* @wpas_dbus_error_no_memory(i32*) #1

declare dso_local i32 @dbus_message_iter_init_append(i32*, i32*) #1

declare dso_local i32 @wpa_dbus_dict_open_write(i32*, i32*) #1

declare dso_local i32 @dbus_message_unref(i32*) #1

declare dso_local i32 @dbus_error_init(i32*) #1

declare dso_local i32 @fill_dict_with_properties(i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @wpa_dbus_dict_close_write(i32*, i32*) #1

declare dso_local i32* @wpas_dbus_reply_new_from_error(i32*, i32*, i32, i8*) #1

declare dso_local i32 @dbus_error_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
