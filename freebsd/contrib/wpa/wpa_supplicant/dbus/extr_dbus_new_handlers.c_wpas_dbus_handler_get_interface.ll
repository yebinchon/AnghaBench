; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_get_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_get_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { i32 }
%struct.wpa_supplicant = type { i8* }

@DBUS_TYPE_STRING = common dso_local global i32 0, align 4
@DBUS_TYPE_INVALID = common dso_local global i32 0, align 4
@DBUS_TYPE_OBJECT_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_get_interface(i32* %0, %struct.wpa_global* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_global*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wpa_supplicant*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.wpa_global* %1, %struct.wpa_global** %5, align 8
  store i32* null, i32** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %12 = load i32, i32* @DBUS_TYPE_INVALID, align 4
  %13 = call i32 @dbus_message_get_args(i32* %10, i32* null, i32 %11, i8** %7, i32 %12)
  %14 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call %struct.wpa_supplicant* @wpa_supplicant_get_iface(%struct.wpa_global* %14, i8* %15)
  store %struct.wpa_supplicant* %16, %struct.wpa_supplicant** %9, align 8
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %18 = icmp eq %struct.wpa_supplicant* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %2
  %25 = load i32*, i32** %4, align 8
  %26 = call i32* @wpas_dbus_error_iface_unknown(i32* %25)
  store i32* %26, i32** %3, align 8
  br label %51

27:                                               ; preds = %19
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %8, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32* @dbus_message_new_method_return(i32* %31)
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32*, i32** %4, align 8
  %37 = call i32* @wpas_dbus_error_no_memory(i32* %36)
  store i32* %37, i32** %3, align 8
  br label %51

38:                                               ; preds = %27
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @DBUS_TYPE_OBJECT_PATH, align 4
  %41 = load i32, i32* @DBUS_TYPE_INVALID, align 4
  %42 = call i32 @dbus_message_append_args(i32* %39, i32 %40, i8** %8, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @dbus_message_unref(i32* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32* @wpas_dbus_error_no_memory(i32* %47)
  store i32* %48, i32** %3, align 8
  br label %51

49:                                               ; preds = %38
  %50 = load i32*, i32** %6, align 8
  store i32* %50, i32** %3, align 8
  br label %51

51:                                               ; preds = %49, %44, %35, %24
  %52 = load i32*, i32** %3, align 8
  ret i32* %52
}

declare dso_local i32 @dbus_message_get_args(i32*, i32*, i32, i8**, i32) #1

declare dso_local %struct.wpa_supplicant* @wpa_supplicant_get_iface(%struct.wpa_global*, i8*) #1

declare dso_local i32* @wpas_dbus_error_iface_unknown(i32*) #1

declare dso_local i32* @dbus_message_new_method_return(i32*) #1

declare dso_local i32* @wpas_dbus_error_no_memory(i32*) #1

declare dso_local i32 @dbus_message_append_args(i32*, i32, i8**, i32) #1

declare dso_local i32 @dbus_message_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
