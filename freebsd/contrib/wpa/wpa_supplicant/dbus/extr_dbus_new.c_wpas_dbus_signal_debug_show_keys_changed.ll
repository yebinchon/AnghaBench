; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new.c_wpas_dbus_signal_debug_show_keys_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new.c_wpas_dbus_signal_debug_show_keys_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { i32 }

@WPAS_DBUS_NEW_PATH = common dso_local global i32 0, align 4
@WPAS_DBUS_NEW_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"DebugShowKeys\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_dbus_signal_debug_show_keys_changed(%struct.wpa_global* %0) #0 {
  %2 = alloca %struct.wpa_global*, align 8
  store %struct.wpa_global* %0, %struct.wpa_global** %2, align 8
  %3 = load %struct.wpa_global*, %struct.wpa_global** %2, align 8
  %4 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @WPAS_DBUS_NEW_PATH, align 4
  %7 = load i32, i32* @WPAS_DBUS_NEW_INTERFACE, align 4
  %8 = call i32 @wpa_dbus_mark_property_changed(i32 %5, i32 %6, i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @wpa_dbus_mark_property_changed(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
