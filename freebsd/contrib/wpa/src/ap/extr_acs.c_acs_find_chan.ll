; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_acs.c_acs_find_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_acs.c_acs_find_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_channel_data = type { i32, i32 }
%struct.hostapd_iface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.hostapd_channel_data* }

@HOSTAPD_CHAN_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hostapd_channel_data* (%struct.hostapd_iface*, i32)* @acs_find_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hostapd_channel_data* @acs_find_chan(%struct.hostapd_iface* %0, i32 %1) #0 {
  %3 = alloca %struct.hostapd_channel_data*, align 8
  %4 = alloca %struct.hostapd_iface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_channel_data*, align 8
  %7 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %41, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %11 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %8
  %17 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %18 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %21, i64 %23
  store %struct.hostapd_channel_data* %24, %struct.hostapd_channel_data** %6, align 8
  %25 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %6, align 8
  %26 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HOSTAPD_CHAN_DISABLED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %41

32:                                               ; preds = %16
  %33 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %6, align 8
  %34 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %6, align 8
  store %struct.hostapd_channel_data* %39, %struct.hostapd_channel_data** %3, align 8
  br label %45

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %8

44:                                               ; preds = %8
  store %struct.hostapd_channel_data* null, %struct.hostapd_channel_data** %3, align 8
  br label %45

45:                                               ; preds = %44, %38
  %46 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %3, align 8
  ret %struct.hostapd_channel_data* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
