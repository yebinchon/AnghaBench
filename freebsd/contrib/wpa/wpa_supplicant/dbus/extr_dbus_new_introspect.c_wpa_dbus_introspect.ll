; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_introspect.c_wpa_dbus_introspect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_introspect.c_wpa_dbus_introspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_object_desc = type { i32 }
%struct.wpabuf = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"<?xml version=\221.0\22?>\0A\00", align 1
@DBUS_INTROSPECT_1_0_XML_DOCTYPE_DECL_NODE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"<node>\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"</node>\0A\00", align 1
@DBUS_TYPE_STRING = common dso_local global i32 0, align 4
@DBUS_TYPE_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpa_dbus_introspect(i32* %0, %struct.wpa_dbus_object_desc* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_dbus_object_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.wpa_dbus_object_desc* %1, %struct.wpa_dbus_object_desc** %5, align 8
  %9 = call %struct.wpabuf* @wpabuf_alloc(i32 20000)
  store %struct.wpabuf* %9, %struct.wpabuf** %7, align 8
  %10 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %11 = icmp eq %struct.wpabuf* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %52

13:                                               ; preds = %2
  %14 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %15 = call i32 @wpabuf_put_str(%struct.wpabuf* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %17 = load i8*, i8** @DBUS_INTROSPECT_1_0_XML_DOCTYPE_DECL_NODE, align 8
  %18 = call i32 @wpabuf_put_str(%struct.wpabuf* %16, i8* %17)
  %19 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %20 = call i32 @wpabuf_put_str(%struct.wpabuf* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %22 = call i32 @add_introspectable_interface(%struct.wpabuf* %21)
  %23 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %24 = call i32 @add_properties_interface(%struct.wpabuf* %23)
  %25 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %26 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %5, align 8
  %27 = call i32 @add_wpas_interfaces(%struct.wpabuf* %25, %struct.wpa_dbus_object_desc* %26)
  %28 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %29 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %5, align 8
  %30 = getelementptr inbounds %struct.wpa_dbus_object_desc, %struct.wpa_dbus_object_desc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @dbus_message_get_path(i32* %32)
  %34 = call i32 @add_child_nodes(%struct.wpabuf* %28, i32 %31, i32 %33)
  %35 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %36 = call i32 @wpabuf_put_str(%struct.wpabuf* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32*, i32** %4, align 8
  %38 = call i32* @dbus_message_new_method_return(i32* %37)
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %13
  %42 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %43 = call i8* @wpabuf_head(%struct.wpabuf* %42)
  store i8* %43, i8** %8, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @DBUS_TYPE_STRING, align 4
  %46 = load i32, i32* @DBUS_TYPE_INVALID, align 4
  %47 = call i32 @dbus_message_append_args(i32* %44, i32 %45, i8** %8, i32 %46)
  br label %48

48:                                               ; preds = %41, %13
  %49 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %50 = call i32 @wpabuf_free(%struct.wpabuf* %49)
  %51 = load i32*, i32** %6, align 8
  store i32* %51, i32** %3, align 8
  br label %52

52:                                               ; preds = %48, %12
  %53 = load i32*, i32** %3, align 8
  ret i32* %53
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i8*) #1

declare dso_local i32 @add_introspectable_interface(%struct.wpabuf*) #1

declare dso_local i32 @add_properties_interface(%struct.wpabuf*) #1

declare dso_local i32 @add_wpas_interfaces(%struct.wpabuf*, %struct.wpa_dbus_object_desc*) #1

declare dso_local i32 @add_child_nodes(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @dbus_message_get_path(i32*) #1

declare dso_local i32* @dbus_message_new_method_return(i32*) #1

declare dso_local i8* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @dbus_message_append_args(i32*, i32, i8**, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
