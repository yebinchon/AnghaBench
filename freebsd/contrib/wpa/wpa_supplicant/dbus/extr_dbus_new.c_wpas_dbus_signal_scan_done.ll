; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new.c_wpas_dbus_signal_scan_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new.c_wpas_dbus_signal_scan_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpas_dbus_priv* }
%struct.wpas_dbus_priv = type { i32 }

@WPAS_DBUS_NEW_IFACE_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ScanDone\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DBUS_TYPE_BOOLEAN = common dso_local global i32 0, align 4
@DBUS_TYPE_INVALID = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"dbus: Failed to construct signal\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_dbus_signal_scan_done(%struct.wpa_supplicant* %0, i32 %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpas_dbus_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %9 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %11, align 8
  store %struct.wpas_dbus_priv* %12, %struct.wpas_dbus_priv** %5, align 8
  %13 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %5, align 8
  %14 = icmp eq %struct.wpas_dbus_priv* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %2
  br label %56

21:                                               ; preds = %15
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @WPAS_DBUS_NEW_IFACE_INTERFACE, align 4
  %26 = call i32* @dbus_message_new_signal(i32 %24, i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %56

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @TRUE, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @FALSE, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %7, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @DBUS_TYPE_BOOLEAN, align 4
  %41 = load i32, i32* @DBUS_TYPE_INVALID, align 4
  %42 = call i64 @dbus_message_append_args(i32* %39, i32 %40, i32* %7, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %5, align 8
  %46 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @dbus_connection_send(i32 %47, i32* %48, i32* null)
  br label %53

50:                                               ; preds = %37
  %51 = load i32, i32* @MSG_ERROR, align 4
  %52 = call i32 @wpa_printf(i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %44
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @dbus_message_unref(i32* %54)
  br label %56

56:                                               ; preds = %53, %29, %20
  ret void
}

declare dso_local i32* @dbus_message_new_signal(i32, i32, i8*) #1

declare dso_local i64 @dbus_message_append_args(i32*, i32, i32*, i32) #1

declare dso_local i32 @dbus_connection_send(i32, i32*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @dbus_message_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
