; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_introspect.c_add_properties_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_introspect.c_add_properties_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"<interface name=\22%s\22>\00", align 1
@WPA_DBUS_PROPERTIES_INTERFACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"<method name=\22%s\22>\00", align 1
@WPA_DBUS_PROPERTIES_GET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"propname\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"</method>\00", align 1
@WPA_DBUS_PROPERTIES_GETALL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"props\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"a{sv}\00", align 1
@WPA_DBUS_PROPERTIES_SET = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"</interface>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpabuf*)* @add_properties_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_properties_interface(%struct.wpabuf* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %2, align 8
  %3 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %4 = load i32, i32* @WPA_DBUS_PROPERTIES_INTERFACE, align 4
  %5 = call i32 @wpabuf_printf(%struct.wpabuf* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %7 = load i32, i32* @WPA_DBUS_PROPERTIES_GET, align 4
  %8 = call i32 @wpabuf_printf(%struct.wpabuf* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %10 = call i32 @add_arg(%struct.wpabuf* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %11 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %12 = call i32 @add_arg(%struct.wpabuf* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %13 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %14 = call i32 @add_arg(%struct.wpabuf* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %15 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %16 = call i32 @wpabuf_put_str(%struct.wpabuf* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %17 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %18 = load i32, i32* @WPA_DBUS_PROPERTIES_GETALL, align 4
  %19 = call i32 @wpabuf_printf(%struct.wpabuf* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %21 = call i32 @add_arg(%struct.wpabuf* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %22 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %23 = call i32 @add_arg(%struct.wpabuf* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %24 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %25 = call i32 @wpabuf_put_str(%struct.wpabuf* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %26 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %27 = load i32, i32* @WPA_DBUS_PROPERTIES_SET, align 4
  %28 = call i32 @wpabuf_printf(%struct.wpabuf* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %30 = call i32 @add_arg(%struct.wpabuf* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %31 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %32 = call i32 @add_arg(%struct.wpabuf* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %33 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %34 = call i32 @add_arg(%struct.wpabuf* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %35 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %36 = call i32 @wpabuf_put_str(%struct.wpabuf* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %37 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %38 = call i32 @wpabuf_put_str(%struct.wpabuf* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i32 @wpabuf_printf(%struct.wpabuf*, i8*, i32) #1

declare dso_local i32 @add_arg(%struct.wpabuf*, i8*, i8*, i8*) #1

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
