; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_..driver_i.h_wpa_drv_send_mlme.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_..driver_i.h_wpa_drv_send_mlme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32*, i64, i32, i32, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i32*, i64, i32, i32)* @wpa_drv_send_mlme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_drv_send_mlme(%struct.wpa_supplicant* %0, i32* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_supplicant*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i32, i32*, i64, i32, i32, i32*, i32)*, i32 (i32, i32*, i64, i32, i32, i32*, i32)** %15, align 8
  %17 = icmp ne i32 (i32, i32*, i64, i32, i32, i32*, i32)* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %5
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %20 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32, i32*, i64, i32, i32, i32*, i32)*, i32 (i32, i32*, i64, i32, i32, i32*, i32)** %22, align 8
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %25 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 %23(i32 %26, i32* %27, i64 %28, i32 %29, i32 %30, i32* null, i32 0)
  store i32 %31, i32* %6, align 4
  br label %33

32:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %18
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
