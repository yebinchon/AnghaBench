; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_expect_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_handler_expect_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { %struct.wpa_supplicant* }
%struct.wpa_supplicant = type { i64, i32, %struct.wpa_supplicant* }

@WPA_ASSOCIATED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpas_dbus_handler_expect_disconnect(i32* %0, %struct.wpa_global* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.wpa_global*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.wpa_global* %1, %struct.wpa_global** %4, align 8
  %6 = load %struct.wpa_global*, %struct.wpa_global** %4, align 8
  %7 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %6, i32 0, i32 0
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  store %struct.wpa_supplicant* %8, %struct.wpa_supplicant** %5, align 8
  br label %9

9:                                                ; preds = %22, %2
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %11 = icmp ne %struct.wpa_supplicant* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WPA_ASSOCIATED, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %20 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %19, i32 0, i32 1
  store i32 1, i32* %20, align 8
  br label %21

21:                                               ; preds = %18, %12
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %24 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %23, i32 0, i32 2
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %24, align 8
  store %struct.wpa_supplicant* %25, %struct.wpa_supplicant** %5, align 8
  br label %9

26:                                               ; preds = %9
  ret i32* null
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
