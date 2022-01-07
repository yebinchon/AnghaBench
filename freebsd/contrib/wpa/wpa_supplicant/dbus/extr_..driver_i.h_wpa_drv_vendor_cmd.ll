; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_..driver_i.h_wpa_drv_vendor_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_..driver_i.h_wpa_drv_vendor_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32*, i64, %struct.wpabuf*)* }
%struct.wpabuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i32, i32, i32*, i64, %struct.wpabuf*)* @wpa_drv_vendor_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_drv_vendor_cmd(%struct.wpa_supplicant* %0, i32 %1, i32 %2, i32* %3, i64 %4, %struct.wpabuf* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_supplicant*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.wpabuf*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.wpabuf* %5, %struct.wpabuf** %13, align 8
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %15 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32, i32, i32, i32*, i64, %struct.wpabuf*)*, i32 (i32, i32, i32, i32*, i64, %struct.wpabuf*)** %17, align 8
  %19 = icmp ne i32 (i32, i32, i32, i32*, i64, %struct.wpabuf*)* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %36

21:                                               ; preds = %6
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (i32, i32, i32, i32*, i64, %struct.wpabuf*)*, i32 (i32, i32, i32, i32*, i64, %struct.wpabuf*)** %25, align 8
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %28 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %35 = call i32 %26(i32 %29, i32 %30, i32 %31, i32* %32, i64 %33, %struct.wpabuf* %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %21, %20
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
