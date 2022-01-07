; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_shared.c_hostapd_update_time_adv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_shared.c_hostapd_update_time_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.os_time = type { i32 }
%struct.os_tm = type { i32, i32, i32, i32, i32, i32 }

@WLAN_EID_TIME_ADVERTISEMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_update_time_adv(%struct.hostapd_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.os_time, align 4
  %6 = alloca %struct.os_tm, align 4
  %7 = alloca i32*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store i32 19, i32* %4, align 4
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %9 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %104

15:                                               ; preds = %1
  %16 = call i64 @os_get_time(%struct.os_time* %5)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.os_time, %struct.os_time* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @os_gmtime(i32 %20, %struct.os_tm* %6)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %15
  store i32 -1, i32* %2, align 4
  br label %104

24:                                               ; preds = %18
  %25 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %26 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %24
  %30 = call i32* @wpabuf_alloc(i32 19)
  %31 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %32 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %34 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 -1, i32* %2, align 4
  br label %104

38:                                               ; preds = %29
  %39 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %40 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32* @wpabuf_put(i32* %41, i32 19)
  store i32* %42, i32** %7, align 8
  br label %48

43:                                               ; preds = %24
  %44 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %45 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32* @wpabuf_mhead_u8(i32* %46)
  store i32* %47, i32** %7, align 8
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* @WLAN_EID_TIME_ADVERTISEMENT, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %7, align 8
  store i32 17, i32* %52, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %7, align 8
  store i32 2, i32* %54, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds %struct.os_tm, %struct.os_tm* %6, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @WPA_PUT_LE16(i32* %56, i32 %58)
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  store i32* %61, i32** %7, align 8
  %62 = getelementptr inbounds %struct.os_tm, %struct.os_tm* %6, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  %66 = getelementptr inbounds %struct.os_tm, %struct.os_tm* %6, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  %70 = getelementptr inbounds %struct.os_tm, %struct.os_tm* %6, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  %74 = getelementptr inbounds %struct.os_tm, %struct.os_tm* %6, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %7, align 8
  store i32 %75, i32* %76, align 4
  %78 = getelementptr inbounds %struct.os_tm, %struct.os_tm* %6, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @WPA_PUT_LE16(i32* %82, i32 0)
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  store i32* %85, i32** %7, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %7, align 8
  store i32 0, i32* %86, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %7, align 8
  store i32 0, i32* %88, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %7, align 8
  store i32 0, i32* %90, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %7, align 8
  store i32 0, i32* %92, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %7, align 8
  store i32 0, i32* %94, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %7, align 8
  store i32 0, i32* %96, align 4
  %98 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %99 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %7, align 8
  store i32 %100, i32* %102, align 4
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %48, %37, %23, %14
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i64 @os_get_time(%struct.os_time*) #1

declare dso_local i64 @os_gmtime(i32, %struct.os_tm*) #1

declare dso_local i32* @wpabuf_alloc(i32) #1

declare dso_local i32* @wpabuf_put(i32*, i32) #1

declare dso_local i32* @wpabuf_mhead_u8(i32*) #1

declare dso_local i32 @WPA_PUT_LE16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
