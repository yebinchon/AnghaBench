; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_remove_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { i32 }
%struct.wpa_supplicant = type { i32 }

@DBUS_TYPE_OBJECT_PATH = common dso_local global i32 0, align 4
@DBUS_TYPE_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"wpa_supplicant couldn't remove this interface.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_remove_interface(i32* %0, %struct.wpa_global* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.wpa_global*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.wpa_global* %1, %struct.wpa_global** %4, align 8
  store i32* null, i32** %7, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @DBUS_TYPE_OBJECT_PATH, align 4
  %10 = load i32, i32* @DBUS_TYPE_INVALID, align 4
  %11 = call i32 @dbus_message_get_args(i32* %8, i32* null, i32 %9, i8** %6, i32 %10)
  %12 = load %struct.wpa_global*, %struct.wpa_global** %4, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.wpa_supplicant* @get_iface_by_dbus_path(%struct.wpa_global* %12, i8* %13)
  store %struct.wpa_supplicant* %14, %struct.wpa_supplicant** %5, align 8
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %16 = icmp eq %struct.wpa_supplicant* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = call i32* @wpas_dbus_error_iface_unknown(i32* %18)
  store i32* %19, i32** %7, align 8
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.wpa_global*, %struct.wpa_global** %4, align 8
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %23 = call i64 @wpa_supplicant_remove_iface(%struct.wpa_global* %21, %struct.wpa_supplicant* %22, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32*, i32** %3, align 8
  %27 = call i32* @wpas_dbus_error_unknown_error(i32* %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32* %27, i32** %7, align 8
  br label %28

28:                                               ; preds = %25, %20
  br label %29

29:                                               ; preds = %28, %17
  %30 = load i32*, i32** %7, align 8
  ret i32* %30
}

declare dso_local i32 @dbus_message_get_args(i32*, i32*, i32, i8**, i32) #1

declare dso_local %struct.wpa_supplicant* @get_iface_by_dbus_path(%struct.wpa_global*, i8*) #1

declare dso_local i32* @wpas_dbus_error_iface_unknown(i32*) #1

declare dso_local i64 @wpa_supplicant_remove_iface(%struct.wpa_global*, %struct.wpa_supplicant*, i32) #1

declare dso_local i32* @wpas_dbus_error_unknown_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
