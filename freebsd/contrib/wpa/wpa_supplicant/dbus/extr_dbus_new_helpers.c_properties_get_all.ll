; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_properties_get_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_properties_get_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_object_desc = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@DBUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, %struct.wpa_dbus_object_desc*)* @properties_get_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @properties_get_all(i32* %0, i8* %1, %struct.wpa_dbus_object_desc* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpa_dbus_object_desc*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.wpa_dbus_object_desc* %2, %struct.wpa_dbus_object_desc** %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @dbus_message_get_signature(i32* %8)
  %10 = call i64 @os_strcmp(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @DBUS_ERROR_INVALID_ARGS, align 4
  %15 = call i32* @dbus_message_new_error(i32* %13, i32 %14, i32* null)
  store i32* %15, i32** %4, align 8
  br label %21

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %7, align 8
  %20 = call i32* @get_all_properties(i32* %17, i8* %18, %struct.wpa_dbus_object_desc* %19)
  store i32* %20, i32** %4, align 8
  br label %21

21:                                               ; preds = %16, %12
  %22 = load i32*, i32** %4, align 8
  ret i32* %22
}

declare dso_local i64 @os_strcmp(i32, i8*) #1

declare dso_local i32 @dbus_message_get_signature(i32*) #1

declare dso_local i32* @dbus_message_new_error(i32*, i32, i32*) #1

declare dso_local i32* @get_all_properties(i32*, i8*, %struct.wpa_dbus_object_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
