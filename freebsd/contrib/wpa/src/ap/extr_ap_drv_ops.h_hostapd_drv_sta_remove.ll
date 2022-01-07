; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.h_hostapd_drv_sta_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.h_hostapd_drv_sta_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i32*)* @hostapd_drv_sta_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_drv_sta_remove(%struct.hostapd_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %7 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %12 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32, i32*)*, i32 (i32, i32*)** %14, align 8
  %16 = icmp ne i32 (i32, i32*)* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %19 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %10, %2
  store i32 0, i32* %3, align 4
  br label %34

23:                                               ; preds = %17
  %24 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %25 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (i32, i32*)*, i32 (i32, i32*)** %27, align 8
  %29 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %30 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 %28(i32 %31, i32* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %23, %22
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
