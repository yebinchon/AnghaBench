; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_driver_set_noa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_driver_set_noa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_driver_set_noa(%struct.hostapd_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %11 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %4
  %15 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %16 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %18, align 8
  %20 = icmp ne i32 (i32, i32, i32, i32)* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %23 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %25, align 8
  %27 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %28 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 %26(i32 %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %35

34:                                               ; preds = %14, %4
  store i32 -1, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %21
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
