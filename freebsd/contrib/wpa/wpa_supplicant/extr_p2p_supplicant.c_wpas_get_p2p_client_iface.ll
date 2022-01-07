; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_get_p2p_client_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_get_p2p_client_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.wpa_ssid*, %struct.wpa_supplicant*, %struct.TYPE_2__* }
%struct.wpa_ssid = type { i64, i32 }
%struct.TYPE_2__ = type { %struct.wpa_supplicant* }

@WPAS_MODE_INFRA = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpa_supplicant* @wpas_get_p2p_client_iface(%struct.wpa_supplicant* %0, i32* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %8 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  store %struct.wpa_supplicant* %11, %struct.wpa_supplicant** %4, align 8
  br label %12

12:                                               ; preds = %44, %2
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %14 = icmp ne %struct.wpa_supplicant* %13, null
  br i1 %14, label %15, label %48

15:                                               ; preds = %12
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 1
  %18 = load %struct.wpa_ssid*, %struct.wpa_ssid** %17, align 8
  store %struct.wpa_ssid* %18, %struct.wpa_ssid** %6, align 8
  %19 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %20 = icmp ne %struct.wpa_ssid* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %23 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WPAS_MODE_INFRA, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %29 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %21
  br label %44

33:                                               ; preds = %27, %15
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %35 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @ETH_ALEN, align 4
  %39 = call i64 @os_memcmp(i32 %36, i32* %37, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_supplicant* %42, %struct.wpa_supplicant** %3, align 8
  br label %49

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %32
  %45 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %46 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %45, i32 0, i32 2
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %46, align 8
  store %struct.wpa_supplicant* %47, %struct.wpa_supplicant** %4, align 8
  br label %12

48:                                               ; preds = %12
  store %struct.wpa_supplicant* null, %struct.wpa_supplicant** %3, align 8
  br label %49

49:                                               ; preds = %48, %41
  %50 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  ret %struct.wpa_supplicant* %50
}

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
