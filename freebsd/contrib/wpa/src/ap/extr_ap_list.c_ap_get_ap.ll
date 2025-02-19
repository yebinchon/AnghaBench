; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_list.c_ap_get_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_list.c_ap_get_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_info = type { %struct.ap_info*, i32 }
%struct.hostapd_iface = type { %struct.ap_info** }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ap_info* (%struct.hostapd_iface*, i32*)* @ap_get_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ap_info* @ap_get_ap(%struct.hostapd_iface* %0, i32* %1) #0 {
  %3 = alloca %struct.hostapd_iface*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ap_info*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %7 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %6, i32 0, i32 0
  %8 = load %struct.ap_info**, %struct.ap_info*** %7, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @STA_HASH(i32* %9)
  %11 = getelementptr inbounds %struct.ap_info*, %struct.ap_info** %8, i64 %10
  %12 = load %struct.ap_info*, %struct.ap_info** %11, align 8
  store %struct.ap_info* %12, %struct.ap_info** %5, align 8
  br label %13

13:                                               ; preds = %26, %2
  %14 = load %struct.ap_info*, %struct.ap_info** %5, align 8
  %15 = icmp ne %struct.ap_info* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load %struct.ap_info*, %struct.ap_info** %5, align 8
  %18 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @ETH_ALEN, align 4
  %22 = call i64 @os_memcmp(i32 %19, i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %16, %13
  %25 = phi i1 [ false, %13 ], [ %23, %16 ]
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = load %struct.ap_info*, %struct.ap_info** %5, align 8
  %28 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %27, i32 0, i32 0
  %29 = load %struct.ap_info*, %struct.ap_info** %28, align 8
  store %struct.ap_info* %29, %struct.ap_info** %5, align 8
  br label %13

30:                                               ; preds = %24
  %31 = load %struct.ap_info*, %struct.ap_info** %5, align 8
  ret %struct.ap_info* %31
}

declare dso_local i64 @STA_HASH(i32*) #1

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
