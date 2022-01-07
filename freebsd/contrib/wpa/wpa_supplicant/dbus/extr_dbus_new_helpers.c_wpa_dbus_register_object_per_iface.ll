; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_wpa_dbus_register_object_per_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_helpers.c_wpa_dbus_register_object_per_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, i32*, i32*, i32*, i32* }
%struct.wpas_dbus_priv = type { i32* }
%struct.wpa_dbus_object_desc = type { i32, i32* }
%struct.TYPE_8__ = type { i32, i32 }

@free_dbus_object_desc_cb = common dso_local global i32 0, align 4
@message_handler = common dso_local global i32 0, align 4
@__const.wpa_dbus_register_object_per_iface.vtable = private unnamed_addr constant %struct.TYPE_7__ { i32* @free_dbus_object_desc_cb, i32* @message_handler, i32* null, i32* null, i32* null, i32* null }, align 8
@DBUS_ERROR_OBJECT_PATH_IN_USE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"dbus: %s\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"dbus: Could not set up message handler for interface %s object %s (error: %s message: %s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_dbus_register_object_per_iface(%struct.wpas_dbus_priv* %0, i8* %1, i8* %2, %struct.wpa_dbus_object_desc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpas_dbus_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wpa_dbus_object_desc*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__, align 4
  %12 = alloca %struct.TYPE_7__, align 8
  store %struct.wpas_dbus_priv* %0, %struct.wpas_dbus_priv** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.wpa_dbus_object_desc* %3, %struct.wpa_dbus_object_desc** %9, align 8
  %13 = bitcast %struct.TYPE_7__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.TYPE_7__* @__const.wpa_dbus_register_object_per_iface.vtable to i8*), i64 48, i1 false)
  %14 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %6, align 8
  %15 = icmp eq %struct.wpas_dbus_priv* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %60

17:                                               ; preds = %4
  %18 = load %struct.wpas_dbus_priv*, %struct.wpas_dbus_priv** %6, align 8
  %19 = getelementptr inbounds %struct.wpas_dbus_priv, %struct.wpas_dbus_priv* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %9, align 8
  %23 = getelementptr inbounds %struct.wpa_dbus_object_desc, %struct.wpa_dbus_object_desc* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @os_strdup(i8* %24)
  %26 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %9, align 8
  %27 = getelementptr inbounds %struct.wpa_dbus_object_desc, %struct.wpa_dbus_object_desc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = call i32 @dbus_error_init(%struct.TYPE_8__* %11)
  %29 = load i32*, i32** %10, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %9, align 8
  %32 = call i32 @dbus_connection_try_register_object_path(i32* %29, i8* %30, %struct.TYPE_7__* %12, %struct.wpa_dbus_object_desc* %31, %struct.TYPE_8__* %11)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %58, label %34

34:                                               ; preds = %17
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DBUS_ERROR_OBJECT_PATH_IN_USE, align 4
  %38 = call i64 @os_strcmp(i32 %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %45)
  br label %56

47:                                               ; preds = %34
  %48 = load i32, i32* @MSG_ERROR, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i8* %49, i8* %50, i32 %52, i32 %54)
  br label %56

56:                                               ; preds = %47, %40
  %57 = call i32 @dbus_error_free(%struct.TYPE_8__* %11)
  store i32 -1, i32* %5, align 4
  br label %60

58:                                               ; preds = %17
  %59 = call i32 @dbus_error_free(%struct.TYPE_8__* %11)
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %58, %56, %16
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @os_strdup(i8*) #2

declare dso_local i32 @dbus_error_init(%struct.TYPE_8__*) #2

declare dso_local i32 @dbus_connection_try_register_object_path(i32*, i8*, %struct.TYPE_7__*, %struct.wpa_dbus_object_desc*, %struct.TYPE_8__*) #2

declare dso_local i64 @os_strcmp(i32, i32) #2

declare dso_local i32 @wpa_printf(i32, i8*, i8*, ...) #2

declare dso_local i32 @dbus_error_free(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
