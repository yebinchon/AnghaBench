; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_tx_queue_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_tx_queue_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { %struct.TYPE_3__*, i32*, %struct.hostapd_data** }
%struct.TYPE_3__ = type { %struct.hostapd_tx_queue_params* }
%struct.hostapd_tx_queue_params = type { i32, i32, i32, i32 }
%struct.hostapd_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@NUM_TX_QUEUES = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to set TX queue parameters for queue %d.\00", align 1
@MESH_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_iface*)* @hostapd_tx_queue_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_tx_queue_params(%struct.hostapd_iface* %0) #0 {
  %2 = alloca %struct.hostapd_iface*, align 8
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_tx_queue_params*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %2, align 8
  %6 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %7 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %6, i32 0, i32 2
  %8 = load %struct.hostapd_data**, %struct.hostapd_data*** %7, align 8
  %9 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %8, i64 0
  %10 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  store %struct.hostapd_data* %10, %struct.hostapd_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %45, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @NUM_TX_QUEUES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %17 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.hostapd_tx_queue_params*, %struct.hostapd_tx_queue_params** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.hostapd_tx_queue_params, %struct.hostapd_tx_queue_params* %20, i64 %22
  store %struct.hostapd_tx_queue_params* %23, %struct.hostapd_tx_queue_params** %5, align 8
  %24 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.hostapd_tx_queue_params*, %struct.hostapd_tx_queue_params** %5, align 8
  %27 = getelementptr inbounds %struct.hostapd_tx_queue_params, %struct.hostapd_tx_queue_params* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hostapd_tx_queue_params*, %struct.hostapd_tx_queue_params** %5, align 8
  %30 = getelementptr inbounds %struct.hostapd_tx_queue_params, %struct.hostapd_tx_queue_params* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hostapd_tx_queue_params*, %struct.hostapd_tx_queue_params** %5, align 8
  %33 = getelementptr inbounds %struct.hostapd_tx_queue_params, %struct.hostapd_tx_queue_params* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hostapd_tx_queue_params*, %struct.hostapd_tx_queue_params** %5, align 8
  %36 = getelementptr inbounds %struct.hostapd_tx_queue_params, %struct.hostapd_tx_queue_params* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @hostapd_set_tx_queue_params(%struct.hostapd_data* %24, i32 %25, i32 %28, i32 %31, i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %15
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @wpa_printf(i32 %41, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %15
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %11

48:                                               ; preds = %11
  ret void
}

declare dso_local i64 @hostapd_set_tx_queue_params(%struct.hostapd_data*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
