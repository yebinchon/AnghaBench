; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_create_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_create_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i64, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@WPA_DRIVER_FLAGS_P2P_DEDICATED_INTERFACE = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_P2P_MGMT_AND_NON_P2P = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_P2P_CONCURRENT = common dso_local global i32 0, align 4
@WPA_AUTHENTICATING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*)* @wpas_p2p_create_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_p2p_create_iface(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %4 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %5 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %4, i32 0, i32 3
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

11:                                               ; preds = %1
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @WPA_DRIVER_FLAGS_P2P_DEDICATED_INTERFACE, align 4
  %16 = load i32, i32* @WPA_DRIVER_FLAGS_P2P_MGMT_AND_NON_P2P, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %47

21:                                               ; preds = %11
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @WPA_DRIVER_FLAGS_P2P_CONCURRENT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %47

29:                                               ; preds = %21
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %47

39:                                               ; preds = %29
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %41 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @WPA_AUTHENTICATING, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %47

46:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %45, %38, %28, %20, %10
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
