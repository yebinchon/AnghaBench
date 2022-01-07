; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpas_reenabled_network_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpas_reenabled_network_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_ssid*, i64, i64, i64 }
%struct.wpa_ssid = type { i64, %struct.wpa_ssid* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*)* @wpas_reenabled_network_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_reenabled_network_time(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %8 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  store %struct.wpa_ssid* %11, %struct.wpa_ssid** %4, align 8
  br label %12

12:                                               ; preds = %38, %1
  %13 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %14 = icmp ne %struct.wpa_ssid* %13, null
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  %16 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %17 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %38

21:                                               ; preds = %15
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %23 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %24 = call i32 @wpas_temp_disabled(%struct.wpa_supplicant* %22, %struct.wpa_ssid* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %44

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %31
  br label %38

38:                                               ; preds = %37, %20
  %39 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %40 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %39, i32 0, i32 1
  %41 = load %struct.wpa_ssid*, %struct.wpa_ssid** %40, align 8
  store %struct.wpa_ssid* %41, %struct.wpa_ssid** %4, align 8
  br label %12

42:                                               ; preds = %12
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %27
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @wpas_temp_disabled(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
