; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.h_hostapd_drv_br_port_set_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.h_hostapd_drv_br_port_set_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i32, i32)* @hostapd_drv_br_port_set_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_drv_br_port_set_attr(%struct.hostapd_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %9 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp eq %struct.TYPE_2__* %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %3
  %13 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %14 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %19 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %21, align 8
  %23 = icmp eq i32 (i32*, i32, i32)* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %12, %3
  store i32 -1, i32* %4, align 4
  br label %37

25:                                               ; preds = %17
  %26 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %27 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %29, align 8
  %31 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %32 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 %30(i32* %33, i32 %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %25, %24
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
