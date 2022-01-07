; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_shared.c_hostapd_eid_time_zone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_shared.c_hostapd_eid_time_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@WLAN_EID_TIME_ZONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hostapd_eid_time_zone(%struct.hostapd_data* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %8 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %15 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %13, %2
  %21 = load i32*, i32** %5, align 8
  store i32* %21, i32** %3, align 8
  br label %48

22:                                               ; preds = %13
  %23 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %24 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @os_strlen(i32 %27)
  store i64 %28, i64* %6, align 8
  %29 = load i32, i32* @WLAN_EID_TIME_ZONE, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  %32 = load i64, i64* %6, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %38 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @os_memcpy(i32* %36, i32 %41, i64 %42)
  %44 = load i64, i64* %6, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 %44
  store i32* %46, i32** %5, align 8
  %47 = load i32*, i32** %5, align 8
  store i32* %47, i32** %3, align 8
  br label %48

48:                                               ; preds = %22, %20
  %49 = load i32*, i32** %3, align 8
  ret i32* %49
}

declare dso_local i64 @os_strlen(i32) #1

declare dso_local i32 @os_memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
