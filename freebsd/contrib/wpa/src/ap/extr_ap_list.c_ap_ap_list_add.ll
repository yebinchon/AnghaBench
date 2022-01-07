; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_list.c_ap_ap_list_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_list.c_ap_ap_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { %struct.ap_info* }
%struct.ap_info = type { %struct.ap_info*, %struct.ap_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_iface*, %struct.ap_info*)* @ap_ap_list_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ap_ap_list_add(%struct.hostapd_iface* %0, %struct.ap_info* %1) #0 {
  %3 = alloca %struct.hostapd_iface*, align 8
  %4 = alloca %struct.ap_info*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %3, align 8
  store %struct.ap_info* %1, %struct.ap_info** %4, align 8
  %5 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %6 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %5, i32 0, i32 0
  %7 = load %struct.ap_info*, %struct.ap_info** %6, align 8
  %8 = icmp ne %struct.ap_info* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %11 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %10, i32 0, i32 0
  %12 = load %struct.ap_info*, %struct.ap_info** %11, align 8
  %13 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %12, i32 0, i32 1
  %14 = load %struct.ap_info*, %struct.ap_info** %13, align 8
  %15 = load %struct.ap_info*, %struct.ap_info** %4, align 8
  %16 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %15, i32 0, i32 1
  store %struct.ap_info* %14, %struct.ap_info** %16, align 8
  %17 = load %struct.ap_info*, %struct.ap_info** %4, align 8
  %18 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %19 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %18, i32 0, i32 0
  %20 = load %struct.ap_info*, %struct.ap_info** %19, align 8
  %21 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %20, i32 0, i32 1
  store %struct.ap_info* %17, %struct.ap_info** %21, align 8
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.ap_info*, %struct.ap_info** %4, align 8
  %24 = load %struct.ap_info*, %struct.ap_info** %4, align 8
  %25 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %24, i32 0, i32 1
  store %struct.ap_info* %23, %struct.ap_info** %25, align 8
  br label %26

26:                                               ; preds = %22, %9
  %27 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %28 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %27, i32 0, i32 0
  %29 = load %struct.ap_info*, %struct.ap_info** %28, align 8
  %30 = load %struct.ap_info*, %struct.ap_info** %4, align 8
  %31 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %30, i32 0, i32 0
  store %struct.ap_info* %29, %struct.ap_info** %31, align 8
  %32 = load %struct.ap_info*, %struct.ap_info** %4, align 8
  %33 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %34 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %33, i32 0, i32 0
  store %struct.ap_info* %32, %struct.ap_info** %34, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
