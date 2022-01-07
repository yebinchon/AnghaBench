; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_list.c_ap_ap_list_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_list.c_ap_ap_list_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { %struct.ap_info* }
%struct.ap_info = type { %struct.TYPE_2__*, %struct.ap_info* }
%struct.TYPE_2__ = type { %struct.ap_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_iface*, %struct.ap_info*)* @ap_ap_list_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ap_ap_list_del(%struct.hostapd_iface* %0, %struct.ap_info* %1) #0 {
  %3 = alloca %struct.hostapd_iface*, align 8
  %4 = alloca %struct.ap_info*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %3, align 8
  store %struct.ap_info* %1, %struct.ap_info** %4, align 8
  %5 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %6 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %5, i32 0, i32 0
  %7 = load %struct.ap_info*, %struct.ap_info** %6, align 8
  %8 = load %struct.ap_info*, %struct.ap_info** %4, align 8
  %9 = icmp eq %struct.ap_info* %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.ap_info*, %struct.ap_info** %4, align 8
  %12 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %11, i32 0, i32 1
  %13 = load %struct.ap_info*, %struct.ap_info** %12, align 8
  %14 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %15 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %14, i32 0, i32 0
  store %struct.ap_info* %13, %struct.ap_info** %15, align 8
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.ap_info*, %struct.ap_info** %4, align 8
  %18 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %17, i32 0, i32 1
  %19 = load %struct.ap_info*, %struct.ap_info** %18, align 8
  %20 = load %struct.ap_info*, %struct.ap_info** %4, align 8
  %21 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.ap_info* %19, %struct.ap_info** %23, align 8
  br label %24

24:                                               ; preds = %16, %10
  %25 = load %struct.ap_info*, %struct.ap_info** %4, align 8
  %26 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %25, i32 0, i32 1
  %27 = load %struct.ap_info*, %struct.ap_info** %26, align 8
  %28 = icmp ne %struct.ap_info* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.ap_info*, %struct.ap_info** %4, align 8
  %31 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.ap_info*, %struct.ap_info** %4, align 8
  %34 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %33, i32 0, i32 1
  %35 = load %struct.ap_info*, %struct.ap_info** %34, align 8
  %36 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %35, i32 0, i32 0
  store %struct.TYPE_2__* %32, %struct.TYPE_2__** %36, align 8
  br label %51

37:                                               ; preds = %24
  %38 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %39 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %38, i32 0, i32 0
  %40 = load %struct.ap_info*, %struct.ap_info** %39, align 8
  %41 = icmp ne %struct.ap_info* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.ap_info*, %struct.ap_info** %4, align 8
  %44 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %47 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %46, i32 0, i32 0
  %48 = load %struct.ap_info*, %struct.ap_info** %47, align 8
  %49 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %48, i32 0, i32 0
  store %struct.TYPE_2__* %45, %struct.TYPE_2__** %49, align 8
  br label %50

50:                                               ; preds = %42, %37
  br label %51

51:                                               ; preds = %50, %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
