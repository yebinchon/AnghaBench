; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_wps_for_each.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_wps_for_each.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i64, %struct.hostapd_data** }
%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.wps_for_each_data = type { i32 (%struct.hostapd_data.0*, i32)*, i32, %struct.hostapd_data* }
%struct.hostapd_data.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_iface*, i8*)* @wps_for_each to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_for_each(%struct.hostapd_iface* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_iface*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wps_for_each_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hostapd_data*, align 8
  %9 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.wps_for_each_data*
  store %struct.wps_for_each_data* %11, %struct.wps_for_each_data** %6, align 8
  %12 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %13 = icmp eq %struct.hostapd_iface* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

15:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %66, %15
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %19 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %69

22:                                               ; preds = %16
  %23 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %24 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %23, i32 0, i32 1
  %25 = load %struct.hostapd_data**, %struct.hostapd_data*** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %25, i64 %26
  %28 = load %struct.hostapd_data*, %struct.hostapd_data** %27, align 8
  store %struct.hostapd_data* %28, %struct.hostapd_data** %8, align 8
  %29 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %30 = load %struct.wps_for_each_data*, %struct.wps_for_each_data** %6, align 8
  %31 = getelementptr inbounds %struct.wps_for_each_data, %struct.wps_for_each_data* %30, i32 0, i32 2
  %32 = load %struct.hostapd_data*, %struct.hostapd_data** %31, align 8
  %33 = icmp ne %struct.hostapd_data* %29, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %22
  %35 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %36 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %34
  %42 = load %struct.wps_for_each_data*, %struct.wps_for_each_data** %6, align 8
  %43 = getelementptr inbounds %struct.wps_for_each_data, %struct.wps_for_each_data* %42, i32 0, i32 2
  %44 = load %struct.hostapd_data*, %struct.hostapd_data** %43, align 8
  %45 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41, %34
  br label %66

51:                                               ; preds = %41, %22
  %52 = load %struct.wps_for_each_data*, %struct.wps_for_each_data** %6, align 8
  %53 = getelementptr inbounds %struct.wps_for_each_data, %struct.wps_for_each_data* %52, i32 0, i32 0
  %54 = load i32 (%struct.hostapd_data.0*, i32)*, i32 (%struct.hostapd_data.0*, i32)** %53, align 8
  %55 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %56 = bitcast %struct.hostapd_data* %55 to %struct.hostapd_data.0*
  %57 = load %struct.wps_for_each_data*, %struct.wps_for_each_data** %6, align 8
  %58 = getelementptr inbounds %struct.wps_for_each_data, %struct.wps_for_each_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 %54(%struct.hostapd_data.0* %56, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %70

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %50
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %7, align 8
  br label %16

69:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %63, %14
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
