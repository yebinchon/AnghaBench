; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_drv_callbacks.c_hostapd_get_mode_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_drv_callbacks.c_hostapd_get_mode_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_channel_data = type { i64 }
%struct.hostapd_iface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.hostapd_channel_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hostapd_channel_data* (%struct.hostapd_iface*, i32)* @hostapd_get_mode_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hostapd_channel_data* @hostapd_get_mode_channel(%struct.hostapd_iface* %0, i32 %1) #0 {
  %3 = alloca %struct.hostapd_channel_data*, align 8
  %4 = alloca %struct.hostapd_iface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostapd_channel_data*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %34, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %11 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %8
  %17 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %18 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %21, i64 %23
  store %struct.hostapd_channel_data* %24, %struct.hostapd_channel_data** %7, align 8
  %25 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %7, align 8
  %26 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %7, align 8
  store %struct.hostapd_channel_data* %32, %struct.hostapd_channel_data** %3, align 8
  br label %38

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %8

37:                                               ; preds = %8
  store %struct.hostapd_channel_data* null, %struct.hostapd_channel_data** %3, align 8
  br label %38

38:                                               ; preds = %37, %31
  %39 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %3, align 8
  ret %struct.hostapd_channel_data* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
