; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new.c_wpas_dbus_signal_sta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new.c_wpas_dbus_signal_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpas_dbus_priv* }
%struct.wpas_dbus_priv = type { i32 }

@WPAS_DBUS_OBJECT_PATH_MAX = common dso_local global i32 0, align 4
@MACSTR = common dso_local global i32 0, align 4
@WPAS_DBUS_NEW_IFACE_INTERFACE = common dso_local global i32 0, align 4
@DBUS_TYPE_STRING = common dso_local global i32 0, align 4
@DBUS_TYPE_INVALID = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"dbus: Failed to construct signal\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"dbus: Station MAC address '%s' '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, i32*, i8*)* @wpas_dbus_signal_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_dbus_signal_sta(%struct.wpa_supplicant* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpas_dbus_priv*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i32, i32* @WPAS_DBUS_OBJECT_PATH_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32, i32* @WPAS_DBUS_OBJECT_PATH_MAX, align 4
  %18 = load i32, i32* @MACSTR, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @MAC2STR(i32* %19)
  %21 = call i32 @os_snprintf(i8* %16, i32 %17, i32 %18, i32 %20)
  store i8* %16, i8** %11, align 8
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %25, align 8
  store %struct.wpas_dbus_priv* %26, %struct.wpas_dbus_priv** %7, align 8
  %27 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %7, align 8
  %28 = icmp eq %struct.wpas_dbus_priv* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %3
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %3
  store i32 1, i32* %12, align 4
  br label %66

35:                                               ; preds = %29
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %37 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @WPAS_DBUS_NEW_IFACE_INTERFACE, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = call i32* @dbus_message_new_signal(i32 %38, i32 %39, i8* %40)
  store i32* %41, i32** %8, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 1, i32* %12, align 4
  br label %66

45:                                               ; preds = %35
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %48 = load i32, i32* @DBUS_TYPE_INVALID, align 4
  %49 = call i64 @dbus_message_append_args(i32* %46, i32 %47, i8** %11, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %7, align 8
  %53 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @dbus_connection_send(i32 %54, i32* %55, i32* null)
  br label %60

57:                                               ; preds = %45
  %58 = load i32, i32* @MSG_ERROR, align 4
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %51
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @dbus_message_unref(i32* %61)
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 (i32, i8*, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %16, i8* %64)
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %60, %44, %34
  %67 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %12, align 4
  switch i32 %68, label %70 [
    i32 0, label %69
    i32 1, label %69
  ]

69:                                               ; preds = %66, %66
  ret void

70:                                               ; preds = %66
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_snprintf(i8*, i32, i32, i32) #2

declare dso_local i32 @MAC2STR(i32*) #2

declare dso_local i32* @dbus_message_new_signal(i32, i32, i8*) #2

declare dso_local i64 @dbus_message_append_args(i32*, i32, i8**, i32) #2

declare dso_local i32 @dbus_connection_send(i32, i32*, i32*) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @dbus_message_unref(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
