; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_poll_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_poll_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_ndis_data = type { i64, i32, i32, i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@EVENT_DISASSOC = common dso_local global i32 0, align 4
@EVENT_ASSOC = common dso_local global i32 0, align 4
@IEEE80211_MODE_IBSS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @wpa_driver_ndis_poll_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_driver_ndis_poll_timeout(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpa_driver_ndis_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.wpa_driver_ndis_data*
  store %struct.wpa_driver_ndis_data* %11, %struct.wpa_driver_ndis_data** %5, align 8
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %5, align 8
  %17 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %77

21:                                               ; preds = %2
  %22 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %5, align 8
  %23 = call i64 @wpa_driver_ndis_get_bssid(%struct.wpa_driver_ndis_data* %22, i32* %15)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %5, align 8
  %27 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @is_zero_ether_addr(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %25
  %32 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %5, align 8
  %33 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ETH_ALEN, align 4
  %36 = call i32 @os_memset(i32 %34, i32 0, i32 %35)
  %37 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %5, align 8
  %38 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @EVENT_DISASSOC, align 4
  %41 = call i32 @wpa_supplicant_event(i32 %39, i32 %40, i32* null)
  br label %42

42:                                               ; preds = %31, %25
  br label %64

43:                                               ; preds = %21
  %44 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %5, align 8
  %45 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i64 @os_memcmp(i32 %46, i32* %15, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %43
  %51 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %5, align 8
  %52 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @os_memcpy(i32 %53, i32* %15, i32 %54)
  %56 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %5, align 8
  %57 = call i32 @wpa_driver_ndis_get_associnfo(%struct.wpa_driver_ndis_data* %56)
  %58 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %5, align 8
  %59 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @EVENT_ASSOC, align 4
  %62 = call i32 @wpa_supplicant_event(i32 %60, i32 %61, i32* null)
  br label %63

63:                                               ; preds = %50, %43
  br label %64

64:                                               ; preds = %63, %42
  %65 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %5, align 8
  %66 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IEEE80211_MODE_IBSS, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %8, align 4
  store i32 1, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %5, align 8
  %75 = call i32 @eloop_register_timeout(i32 1, i32 0, void (i8*, i8*)* @wpa_driver_ndis_poll_timeout, %struct.wpa_driver_ndis_data* %74, i32* null)
  br label %76

76:                                               ; preds = %73, %64
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %76, %20
  %78 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %9, align 4
  switch i32 %79, label %81 [
    i32 0, label %80
    i32 1, label %80
  ]

80:                                               ; preds = %77, %77
  ret void

81:                                               ; preds = %77
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @wpa_driver_ndis_get_bssid(%struct.wpa_driver_ndis_data*, i32*) #2

declare dso_local i32 @is_zero_ether_addr(i32) #2

declare dso_local i32 @os_memset(i32, i32, i32) #2

declare dso_local i32 @wpa_supplicant_event(i32, i32, i32*) #2

declare dso_local i64 @os_memcmp(i32, i32*, i32) #2

declare dso_local i32 @os_memcpy(i32, i32*, i32) #2

declare dso_local i32 @wpa_driver_ndis_get_associnfo(%struct.wpa_driver_ndis_data*) #2

declare dso_local i32 @eloop_register_timeout(i32, i32, void (i8*, i8*)*, %struct.wpa_driver_ndis_data*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
