; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_vht.c_copy_sta_vht_oper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_vht.c_copy_sta_vht_oper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { i32* }

@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_sta_vht_oper(%struct.hostapd_data* %0, %struct.sta_info* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %12 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @os_free(i32* %13)
  %15 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %16 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %17, i32* %4, align 4
  br label %41

18:                                               ; preds = %3
  %19 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %20 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %18
  %24 = call i32* @os_zalloc(i32 4)
  %25 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %26 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %28 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %32, i32* %4, align 4
  br label %41

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %18
  %35 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %36 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @os_memcpy(i32* %37, i32* %38, i32 4)
  %40 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %34, %31, %10
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
