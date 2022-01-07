; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_introspect.c_add_wpas_interfaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_introspect.c_add_wpas_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wpa_dbus_object_desc = type { i32 }
%struct.dl_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpabuf*, %struct.wpa_dbus_object_desc*)* @add_wpas_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_wpas_interfaces(%struct.wpabuf* %0, %struct.wpa_dbus_object_desc* %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.wpa_dbus_object_desc*, align 8
  %5 = alloca %struct.dl_list, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  store %struct.wpa_dbus_object_desc* %1, %struct.wpa_dbus_object_desc** %4, align 8
  %6 = call i32 @dl_list_init(%struct.dl_list* %5)
  %7 = load %struct.wpa_dbus_object_desc*, %struct.wpa_dbus_object_desc** %4, align 8
  %8 = call i32 @extract_interfaces(%struct.dl_list* %5, %struct.wpa_dbus_object_desc* %7)
  %9 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %10 = call i32 @add_interfaces(%struct.dl_list* %5, %struct.wpabuf* %9)
  ret void
}

declare dso_local i32 @dl_list_init(%struct.dl_list*) #1

declare dso_local i32 @extract_interfaces(%struct.dl_list*, %struct.wpa_dbus_object_desc*) #1

declare dso_local i32 @add_interfaces(%struct.dl_list*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
