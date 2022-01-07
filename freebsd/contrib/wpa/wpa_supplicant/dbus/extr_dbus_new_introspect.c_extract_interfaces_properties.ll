; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_introspect.c_extract_interfaces_properties.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_introspect.c_extract_interfaces_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dl_list = type { i32 }
%struct.wpa_dbus_property_desc = type { i32, i64 }
%struct.interfaces = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dl_list*, %struct.wpa_dbus_property_desc*)* @extract_interfaces_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_interfaces_properties(%struct.dl_list* %0, %struct.wpa_dbus_property_desc* %1) #0 {
  %3 = alloca %struct.dl_list*, align 8
  %4 = alloca %struct.wpa_dbus_property_desc*, align 8
  %5 = alloca %struct.wpa_dbus_property_desc*, align 8
  %6 = alloca %struct.interfaces*, align 8
  store %struct.dl_list* %0, %struct.dl_list** %3, align 8
  store %struct.wpa_dbus_property_desc* %1, %struct.wpa_dbus_property_desc** %4, align 8
  %7 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %4, align 8
  store %struct.wpa_dbus_property_desc* %7, %struct.wpa_dbus_property_desc** %5, align 8
  br label %8

8:                                                ; preds = %33, %2
  %9 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %5, align 8
  %10 = icmp ne %struct.wpa_dbus_property_desc* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %5, align 8
  %13 = getelementptr inbounds %struct.wpa_dbus_property_desc, %struct.wpa_dbus_property_desc* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %11, %8
  %17 = phi i1 [ false, %8 ], [ %15, %11 ]
  br i1 %17, label %18, label %36

18:                                               ; preds = %16
  %19 = load %struct.dl_list*, %struct.dl_list** %3, align 8
  %20 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %5, align 8
  %21 = getelementptr inbounds %struct.wpa_dbus_property_desc, %struct.wpa_dbus_property_desc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.interfaces* @add_interface(%struct.dl_list* %19, i32 %22)
  store %struct.interfaces* %23, %struct.interfaces** %6, align 8
  %24 = load %struct.interfaces*, %struct.interfaces** %6, align 8
  %25 = icmp ne %struct.interfaces* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.interfaces*, %struct.interfaces** %6, align 8
  %28 = getelementptr inbounds %struct.interfaces, %struct.interfaces* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %5, align 8
  %31 = call i32 @add_property(i32 %29, %struct.wpa_dbus_property_desc* %30)
  br label %32

32:                                               ; preds = %26, %18
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.wpa_dbus_property_desc*, %struct.wpa_dbus_property_desc** %5, align 8
  %35 = getelementptr inbounds %struct.wpa_dbus_property_desc, %struct.wpa_dbus_property_desc* %34, i32 1
  store %struct.wpa_dbus_property_desc* %35, %struct.wpa_dbus_property_desc** %5, align 8
  br label %8

36:                                               ; preds = %16
  ret void
}

declare dso_local %struct.interfaces* @add_interface(%struct.dl_list*, i32) #1

declare dso_local i32 @add_property(i32, %struct.wpa_dbus_property_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
