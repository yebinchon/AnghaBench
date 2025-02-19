; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_remove_blob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_remove_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }

@DBUS_TYPE_STRING = common dso_local global i32 0, align 4
@DBUS_TYPE_INVALID = common dso_local global i32 0, align 4
@WPAS_DBUS_ERROR_BLOB_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Blob id not set\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_remove_blob(i32* %0, %struct.wpa_supplicant* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %5, align 8
  store i32* null, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %10 = load i32, i32* @DBUS_TYPE_INVALID, align 4
  %11 = call i32 @dbus_message_get_args(i32* %8, i32* null, i32 %9, i8** %7, i32 %10)
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @wpa_config_remove_blob(i32 %14, i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @WPAS_DBUS_ERROR_BLOB_UNKNOWN, align 4
  %21 = call i32* @dbus_message_new_error(i32* %19, i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %3, align 8
  br label %27

22:                                               ; preds = %2
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @wpas_notify_blob_removed(%struct.wpa_supplicant* %23, i8* %24)
  %26 = load i32*, i32** %6, align 8
  store i32* %26, i32** %3, align 8
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i32*, i32** %3, align 8
  ret i32* %28
}

declare dso_local i32 @dbus_message_get_args(i32*, i32*, i32, i8**, i32) #1

declare dso_local i64 @wpa_config_remove_blob(i32, i8*) #1

declare dso_local i32* @dbus_message_new_error(i32*, i32, i8*) #1

declare dso_local i32 @wpas_notify_blob_removed(%struct.wpa_supplicant*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
