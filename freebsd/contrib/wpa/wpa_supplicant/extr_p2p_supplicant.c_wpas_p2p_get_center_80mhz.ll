; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_get_center_80mhz.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_get_center_80mhz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.hostapd_hw_modes = type { i64 }

@__const.wpas_p2p_get_center_80mhz.center_channels = private unnamed_addr constant [6 x i32] [i32 42, i32 58, i32 106, i32 122, i32 138, i32 155], align 16
@HOSTAPD_MODE_IEEE80211A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.hostapd_hw_modes*, i32)* @wpas_p2p_get_center_80mhz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_p2p_get_center_80mhz(%struct.wpa_supplicant* %0, %struct.hostapd_hw_modes* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.hostapd_hw_modes*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [6 x i32], align 16
  %9 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.hostapd_hw_modes* %1, %struct.hostapd_hw_modes** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = bitcast [6 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([6 x i32]* @__const.wpas_p2p_get_center_80mhz.center_channels to i8*), i64 24, i1 false)
  %11 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %12 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HOSTAPD_MODE_IEEE80211A, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %46

17:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %18

18:                                               ; preds = %42, %17
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %21 = call i64 @ARRAY_SIZE(i32* %20)
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 6
  %29 = icmp sge i32 %24, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 6
  %36 = icmp sle i32 %31, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %4, align 4
  br label %46

41:                                               ; preds = %30, %23
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %9, align 8
  br label %18

45:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %37, %16
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
