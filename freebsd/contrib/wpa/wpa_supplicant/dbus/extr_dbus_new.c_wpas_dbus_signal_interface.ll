; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new.c_wpas_dbus_signal_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new.c_wpas_dbus_signal_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpas_dbus_priv* }
%struct.wpas_dbus_priv = type { i32 }

@WPAS_DBUS_NEW_PATH = common dso_local global i32 0, align 4
@WPAS_DBUS_NEW_INTERFACE = common dso_local global i32 0, align 4
@DBUS_TYPE_OBJECT_PATH = common dso_local global i32 0, align 4
@WPAS_DBUS_NEW_IFACE_INTERFACE = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"dbus: Failed to construct signal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, i8*, i64)* @wpas_dbus_signal_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_dbus_signal_interface(%struct.wpa_supplicant* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wpas_dbus_priv*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %11 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %13, align 8
  store %struct.wpas_dbus_priv* %14, %struct.wpas_dbus_priv** %7, align 8
  %15 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %7, align 8
  %16 = icmp eq %struct.wpas_dbus_priv* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %3
  br label %62

23:                                               ; preds = %17
  %24 = load i32, i32* @WPAS_DBUS_NEW_PATH, align 4
  %25 = load i32, i32* @WPAS_DBUS_NEW_INTERFACE, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32* @dbus_message_new_signal(i32 %24, i32 %25, i8* %26)
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %62

31:                                               ; preds = %23
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @dbus_message_iter_init_append(i32* %32, i32* %9)
  %34 = load i32, i32* @DBUS_TYPE_OBJECT_PATH, align 4
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 0
  %37 = call i32 @dbus_message_iter_append_basic(i32* %9, i32 %34, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %31
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %7, align 8
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %45 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @WPAS_DBUS_NEW_IFACE_INTERFACE, align 4
  %48 = call i32 @wpa_dbus_get_object_properties(%struct.wpas_dbus_priv* %43, i32 %46, i32 %47, i32* %9)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %42, %31
  %51 = load i32, i32* @MSG_ERROR, align 4
  %52 = call i32 @wpa_printf(i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %59

53:                                               ; preds = %42, %39
  %54 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %7, align 8
  %55 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @dbus_connection_send(i32 %56, i32* %57, i32* null)
  br label %59

59:                                               ; preds = %53, %50
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @dbus_message_unref(i32* %60)
  br label %62

62:                                               ; preds = %59, %30, %22
  ret void
}

declare dso_local i32* @dbus_message_new_signal(i32, i32, i8*) #1

declare dso_local i32 @dbus_message_iter_init_append(i32*, i32*) #1

declare dso_local i32 @dbus_message_iter_append_basic(i32*, i32, i32*) #1

declare dso_local i32 @wpa_dbus_get_object_properties(%struct.wpas_dbus_priv*, i32, i32, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @dbus_connection_send(i32, i32*, i32*) #1

declare dso_local i32 @dbus_message_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
