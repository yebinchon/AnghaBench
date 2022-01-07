; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_ht.c_ht40_intolerant_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_ht.c_ht40_intolerant_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sta_info = type { i64 }

@HT_CAP_INFO_SUPP_CHANNEL_WIDTH_SET = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_HT_2040_COEX = common dso_local global i32 0, align 4
@OVERLAPPING_BSS_TRANS_DELAY_FACTOR = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"HT: Start 20->40 MHz transition timer (%d seconds)\00", align 1
@ap_ht2040_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ht40_intolerant_remove(%struct.hostapd_iface* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.hostapd_iface*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %6 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %7 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %56

11:                                               ; preds = %2
  %12 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %13 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %15 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %19 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %11
  %23 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %24 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HT_CAP_INFO_SUPP_CHANNEL_WIDTH_SET, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %22
  %32 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %33 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @WPA_DRIVER_FLAGS_HT_2040_COEX, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %31
  %39 = load i32, i32* @OVERLAPPING_BSS_TRANS_DELAY_FACTOR, align 4
  %40 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %41 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul i32 %39, %44
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @wpa_printf(i32 %46, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @ap_ht2040_timeout, align 4
  %50 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %51 = call i32 @eloop_cancel_timeout(i32 %49, %struct.hostapd_iface* %50, i32* null)
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @ap_ht2040_timeout, align 4
  %54 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %55 = call i32 @eloop_register_timeout(i32 %52, i32 0, i32 %53, %struct.hostapd_iface* %54, i32* null)
  br label %56

56:                                               ; preds = %10, %38, %31, %22, %11
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.hostapd_iface*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.hostapd_iface*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
