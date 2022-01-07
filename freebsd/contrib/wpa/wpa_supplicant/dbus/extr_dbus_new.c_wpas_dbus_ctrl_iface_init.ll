; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new.c_wpas_dbus_ctrl_iface_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new.c_wpas_dbus_ctrl_iface_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpas_dbus_priv = type { i32, i32 }
%struct.wpa_dbus_object_desc = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"dbus: Not enough memory to init interface properties\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Not enough memory to create object description\00", align 1
@wpas_dbus_global_methods = common dso_local global i32 0, align 4
@wpas_dbus_global_properties = common dso_local global i32 0, align 4
@wpas_dbus_global_signals = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"dbus: Register D-Bus object '%s'\00", align 1
@WPAS_DBUS_NEW_PATH = common dso_local global i32 0, align 4
@WPAS_DBUS_NEW_SERVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_dbus_ctrl_iface_init(%struct.wpas_dbus_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpas_dbus_priv*, align 8
  %4 = alloca %struct.wpa_dbus_object_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.wpas_dbus_priv* %0, %struct.wpas_dbus_priv** %3, align 8
  %6 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %3, align 8
  %7 = call i32 @wpa_dbus_ctrl_iface_props_init(%struct.wpas_dbus_priv* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @MSG_ERROR, align 4
  %12 = call i32 (i32, i8*, ...) @wpa_printf(i32 %11, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %48

13:                                               ; preds = %1
  %14 = call %struct.wpa_dbus_object_desc* @os_zalloc(i32 4)
  store %struct.wpa_dbus_object_desc* %14, %struct.wpa_dbus_object_desc** %4, align 8
  %15 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %4, align 8
  %16 = icmp ne %struct.wpa_dbus_object_desc* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @MSG_ERROR, align 4
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %45

20:                                               ; preds = %13
  %21 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %4, align 8
  %22 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %3, align 8
  %23 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @wpas_dbus_global_methods, align 4
  %26 = load i32, i32* @wpas_dbus_global_properties, align 4
  %27 = load i32, i32* @wpas_dbus_global_signals, align 4
  %28 = call i32 @wpas_dbus_register(%struct.wpa_dbus_object_desc* %21, i32 %24, i32* null, i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = load i32, i32* @WPAS_DBUS_NEW_PATH, align 4
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %3, align 8
  %33 = load i32, i32* @WPAS_DBUS_NEW_PATH, align 4
  %34 = load i32, i32* @WPAS_DBUS_NEW_SERVICE, align 4
  %35 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %4, align 8
  %36 = call i32 @wpa_dbus_ctrl_iface_init(%struct.wpas_dbus_priv* %32, i32 %33, i32 %34, %struct.wpa_dbus_object_desc* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %20
  %40 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %4, align 8
  %41 = call i32 @free_dbus_object_desc(%struct.wpa_dbus_object_desc* %40)
  br label %45

42:                                               ; preds = %20
  %43 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %3, align 8
  %44 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  store i32 0, i32* %2, align 4
  br label %48

45:                                               ; preds = %39, %17
  %46 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %3, align 8
  %47 = call i32 @wpa_dbus_ctrl_iface_props_deinit(%struct.wpas_dbus_priv* %46)
  store i32 -1, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %42, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @wpa_dbus_ctrl_iface_props_init(%struct.wpas_dbus_priv*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.wpa_dbus_object_desc* @os_zalloc(i32) #1

declare dso_local i32 @wpas_dbus_register(%struct.wpa_dbus_object_desc*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @wpa_dbus_ctrl_iface_init(%struct.wpas_dbus_priv*, i32, i32, %struct.wpa_dbus_object_desc*) #1

declare dso_local i32 @free_dbus_object_desc(%struct.wpa_dbus_object_desc*) #1

declare dso_local i32 @wpa_dbus_ctrl_iface_props_deinit(%struct.wpas_dbus_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
