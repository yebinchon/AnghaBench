; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_add_scan_ssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_add_scan_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_scan_res = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@WLAN_EID_SSID = common dso_local global i32 0, align 4
@SSID_MAX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_scan_res* (%struct.wpa_scan_res*, %struct.TYPE_3__*)* @wpa_driver_ndis_add_scan_ssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_scan_res* @wpa_driver_ndis_add_scan_ssid(%struct.wpa_scan_res* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.wpa_scan_res*, align 8
  %4 = alloca %struct.wpa_scan_res*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.wpa_scan_res*, align 8
  %7 = alloca i32*, align 8
  store %struct.wpa_scan_res* %0, %struct.wpa_scan_res** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %4, align 8
  %9 = load i32, i32* @WLAN_EID_SSID, align 4
  %10 = call i64 @wpa_scan_get_ie(%struct.wpa_scan_res* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %4, align 8
  store %struct.wpa_scan_res* %13, %struct.wpa_scan_res** %3, align 8
  br label %80

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SSID_MAX_LEN, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19, %14
  %26 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %4, align 8
  store %struct.wpa_scan_res* %26, %struct.wpa_scan_res** %3, align 8
  br label %80

27:                                               ; preds = %19
  %28 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %4, align 8
  %29 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %4, align 8
  %30 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 4, %32
  %34 = add i64 %33, 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %34, %38
  %40 = trunc i64 %39 to i32
  %41 = call %struct.wpa_scan_res* @os_realloc(%struct.wpa_scan_res* %28, i32 %40)
  store %struct.wpa_scan_res* %41, %struct.wpa_scan_res** %6, align 8
  %42 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %6, align 8
  %43 = icmp eq %struct.wpa_scan_res* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %27
  %45 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %4, align 8
  store %struct.wpa_scan_res* %45, %struct.wpa_scan_res** %3, align 8
  br label %80

46:                                               ; preds = %27
  %47 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %6, align 8
  %48 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %47, i64 1
  %49 = bitcast %struct.wpa_scan_res* %48 to i32*
  %50 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %6, align 8
  %51 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  store i32* %54, i32** %7, align 8
  %55 = load i32, i32* @WLAN_EID_SSID, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @os_memcpy(i32* %63, i32 %66, i32 %69)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 2, %73
  %75 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %6, align 8
  %76 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %6, align 8
  store %struct.wpa_scan_res* %79, %struct.wpa_scan_res** %3, align 8
  br label %80

80:                                               ; preds = %46, %44, %25, %12
  %81 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %3, align 8
  ret %struct.wpa_scan_res* %81
}

declare dso_local i64 @wpa_scan_get_ie(%struct.wpa_scan_res*, i32) #1

declare dso_local %struct.wpa_scan_res* @os_realloc(%struct.wpa_scan_res*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
