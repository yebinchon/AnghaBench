; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpas_temp_disabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpas_temp_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_ssid = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.os_reltime = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_temp_disabled(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca %struct.os_reltime, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %5, align 8
  %7 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %8 = icmp eq %struct.wpa_ssid* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %11 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %38

16:                                               ; preds = %9
  %17 = call i32 @os_get_reltime(%struct.os_reltime* %6)
  %18 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %19 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %6, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %21, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %16
  %26 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %27 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %6, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %29, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %38

34:                                               ; preds = %16
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %36 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %37 = call i32 @wpas_clear_temp_disabled(%struct.wpa_supplicant* %35, %struct.wpa_ssid* %36, i32 0)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %25, %15
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @os_get_reltime(%struct.os_reltime*) #1

declare dso_local i32 @wpas_clear_temp_disabled(%struct.wpa_supplicant*, %struct.wpa_ssid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
