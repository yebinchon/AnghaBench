; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_..driver_i.h_wpa_drv_hapd_send_eapol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_..driver_i.h_wpa_drv_hapd_send_eapol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32*, i32*, i64, i32, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i32*, i32*, i64, i32, i32*, i32)* @wpa_drv_hapd_send_eapol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_drv_hapd_send_eapol(%struct.wpa_supplicant* %0, i32* %1, i32* %2, i64 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.wpa_supplicant*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32, i32*, i32*, i64, i32, i32*, i32)*, i32 (i32, i32*, i32*, i64, i32, i32*, i32)** %19, align 8
  %21 = icmp ne i32 (i32, i32*, i32*, i64, i32, i32*, i32)* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %7
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %24 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (i32, i32*, i32*, i64, i32, i32*, i32)*, i32 (i32, i32*, i32*, i64, i32, i32*, i32)** %26, align 8
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i32*, i32** %14, align 8
  %36 = load i32, i32* %15, align 4
  %37 = call i32 %27(i32 %30, i32* %31, i32* %32, i64 %33, i32 %34, i32* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  br label %39

38:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %22
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
