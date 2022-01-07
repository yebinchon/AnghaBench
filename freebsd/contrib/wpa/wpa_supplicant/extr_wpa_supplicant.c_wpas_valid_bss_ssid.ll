; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_valid_bss_ssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_valid_bss_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_bss = type { i32 }
%struct.wpa_ssid = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_valid_bss_ssid(%struct.wpa_supplicant* %0, %struct.wpa_bss* %1, %struct.wpa_ssid* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_bss*, align 8
  %7 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.wpa_bss* %1, %struct.wpa_bss** %6, align 8
  store %struct.wpa_ssid* %2, %struct.wpa_ssid** %7, align 8
  %8 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %9 = icmp ne %struct.wpa_bss* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %12 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %13 = call i32 @wpas_valid_bss(%struct.wpa_supplicant* %11, %struct.wpa_bss* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %27

16:                                               ; preds = %10, %3
  %17 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %18 = icmp eq %struct.wpa_ssid* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %21 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %22 = call i64 @wpas_valid_ssid(%struct.wpa_supplicant* %20, %struct.wpa_ssid* %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i1 [ true, %16 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %15
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @wpas_valid_bss(%struct.wpa_supplicant*, %struct.wpa_bss*) #1

declare dso_local i64 @wpas_valid_ssid(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
