; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.h_hostapd_drv_vendor_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.h_hostapd_drv_vendor_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32*, i64, %struct.wpabuf*)* }
%struct.wpabuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i32, i32, i32*, i64, %struct.wpabuf*)* @hostapd_drv_vendor_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_drv_vendor_cmd(%struct.hostapd_data* %0, i32 %1, i32 %2, i32* %3, i64 %4, %struct.wpabuf* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hostapd_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.wpabuf*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.wpabuf* %5, %struct.wpabuf** %13, align 8
  %14 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %15 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp eq %struct.TYPE_2__* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %6
  %19 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %20 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32, i32, i32, i32*, i64, %struct.wpabuf*)*, i32 (i32, i32, i32, i32*, i64, %struct.wpabuf*)** %22, align 8
  %24 = icmp eq i32 (i32, i32, i32, i32*, i64, %struct.wpabuf*)* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %6
  store i32 -1, i32* %7, align 4
  br label %41

26:                                               ; preds = %18
  %27 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %28 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (i32, i32, i32, i32*, i64, %struct.wpabuf*)*, i32 (i32, i32, i32, i32*, i64, %struct.wpabuf*)** %30, align 8
  %32 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %33 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %40 = call i32 %31(i32 %34, i32 %35, i32 %36, i32* %37, i64 %38, %struct.wpabuf* %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %26, %25
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
