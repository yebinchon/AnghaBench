; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new.c_wpas_dbus_signal_bss.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new.c_wpas_dbus_signal_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpas_dbus_priv* }
%struct.wpas_dbus_priv = type { i32 }

@WPAS_DBUS_NEW_IFACE_INTERFACE = common dso_local global i32 0, align 4
@DBUS_TYPE_OBJECT_PATH = common dso_local global i32 0, align 4
@WPAS_DBUS_NEW_IFACE_BSS = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"dbus: Failed to construct signal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, i8*, i8*, i64)* @wpas_dbus_signal_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_dbus_signal_bss(%struct.wpa_supplicant* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wpas_dbus_priv*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %15, align 8
  store %struct.wpas_dbus_priv* %16, %struct.wpas_dbus_priv** %9, align 8
  %17 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %9, align 8
  %18 = icmp eq %struct.wpas_dbus_priv* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %4
  br label %62

25:                                               ; preds = %19
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @WPAS_DBUS_NEW_IFACE_INTERFACE, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32* @dbus_message_new_signal(i32 %28, i32 %29, i8* %30)
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %62

35:                                               ; preds = %25
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @dbus_message_iter_init_append(i32* %36, i32* %11)
  %38 = load i32, i32* @DBUS_TYPE_OBJECT_PATH, align 4
  %39 = call i32 @dbus_message_iter_append_basic(i32* %11, i32 %38, i8** %6)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %9, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* @WPAS_DBUS_NEW_IFACE_BSS, align 4
  %48 = call i32 @wpa_dbus_get_object_properties(%struct.wpas_dbus_priv* %45, i8* %46, i32 %47, i32* %11)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %44, %35
  %51 = load i32, i32* @MSG_ERROR, align 4
  %52 = call i32 @wpa_printf(i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %59

53:                                               ; preds = %44, %41
  %54 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %9, align 8
  %55 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @dbus_connection_send(i32 %56, i32* %57, i32* null)
  br label %59

59:                                               ; preds = %53, %50
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @dbus_message_unref(i32* %60)
  br label %62

62:                                               ; preds = %59, %34, %24
  ret void
}

declare dso_local i32* @dbus_message_new_signal(i32, i32, i8*) #1

declare dso_local i32 @dbus_message_iter_init_append(i32*, i32*) #1

declare dso_local i32 @dbus_message_iter_append_basic(i32*, i32, i8**) #1

declare dso_local i32 @wpa_dbus_get_object_properties(%struct.wpas_dbus_priv*, i8*, i32, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @dbus_connection_send(i32, i32*, i32*) #1

declare dso_local i32 @dbus_message_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
