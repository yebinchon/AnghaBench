; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_wpa_dbus_ctrl_iface_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_wpa_dbus_ctrl_iface_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, i32*, i32*, i32*, i32* }
%struct.wpas_dbus_priv = type { i32 }
%struct.wpa_dbus_object_desc = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@free_dbus_object_desc_cb = common dso_local global i32 0, align 4
@message_handler = common dso_local global i32 0, align 4
@__const.wpa_dbus_ctrl_iface_init.wpa_vtable = private unnamed_addr constant %struct.TYPE_7__ { i32* @free_dbus_object_desc_cb, i32* @message_handler, i32* null, i32* null, i32* null, i32* null }, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"dbus: Could not set up message handler\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"dbus: Could not request service name: already registered\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"dbus: Could not request service name: %s %s\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Providing DBus service '%s'.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_dbus_ctrl_iface_init(%struct.wpas_dbus_priv* %0, i8* %1, i8* %2, %struct.wpa_dbus_object_desc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpas_dbus_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wpa_dbus_object_desc*, align 8
  %10 = alloca %struct.TYPE_8__, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 8
  store %struct.wpas_dbus_priv* %0, %struct.wpas_dbus_priv** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.wpa_dbus_object_desc* %3, %struct.wpa_dbus_object_desc** %9, align 8
  store i32 -1, i32* %11, align 4
  %13 = bitcast %struct.TYPE_7__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.TYPE_7__* @__const.wpa_dbus_ctrl_iface_init.wpa_vtable to i8*), i64 48, i1 false)
  %14 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %6, align 8
  %15 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %9, align 8
  %18 = getelementptr inbounds %struct.wpa_dbus_object_desc, %struct.wpa_dbus_object_desc* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @os_strdup(i8* %19)
  %21 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %9, align 8
  %22 = getelementptr inbounds %struct.wpa_dbus_object_desc, %struct.wpa_dbus_object_desc* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %6, align 8
  %24 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %9, align 8
  %28 = call i32 @dbus_connection_register_object_path(i32 %25, i8* %26, %struct.TYPE_7__* %12, %struct.wpa_dbus_object_desc* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @MSG_ERROR, align 4
  %32 = call i32 (i32, i8*, ...) @wpa_printf(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %60

33:                                               ; preds = %4
  %34 = call i32 @dbus_error_init(%struct.TYPE_8__* %10)
  %35 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %6, align 8
  %36 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @dbus_bus_request_name(i32 %37, i8* %38, i32 0, %struct.TYPE_8__* %10)
  switch i32 %39, label %44 [
    i32 128, label %40
    i32 130, label %41
    i32 129, label %41
    i32 131, label %41
  ]

40:                                               ; preds = %33
  store i32 0, i32* %11, align 4
  br label %51

41:                                               ; preds = %33, %33, %33
  %42 = load i32, i32* @MSG_ERROR, align 4
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %51

44:                                               ; preds = %33
  %45 = load i32, i32* @MSG_ERROR, align 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %49)
  br label %51

51:                                               ; preds = %44, %41, %40
  %52 = call i32 @dbus_error_free(%struct.TYPE_8__* %10)
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 -1, i32* %5, align 4
  br label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %55, %30
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @os_strdup(i8*) #2

declare dso_local i32 @dbus_connection_register_object_path(i32, i8*, %struct.TYPE_7__*, %struct.wpa_dbus_object_desc*) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @dbus_error_init(%struct.TYPE_8__*) #2

declare dso_local i32 @dbus_bus_request_name(i32, i8*, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @dbus_error_free(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
