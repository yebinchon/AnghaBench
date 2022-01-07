; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_set_ap_wps_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_set_ap_wps_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.wpabuf*, %struct.wpabuf*, %struct.wpabuf*)* }
%struct.wpabuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_set_ap_wps_ie(%struct.hostapd_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %9 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp eq %struct.TYPE_2__* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %14 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i32, %struct.wpabuf*, %struct.wpabuf*, %struct.wpabuf*)*, i32 (i32, %struct.wpabuf*, %struct.wpabuf*, %struct.wpabuf*)** %16, align 8
  %18 = icmp eq i32 (i32, %struct.wpabuf*, %struct.wpabuf*, %struct.wpabuf*)* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %44

20:                                               ; preds = %12
  %21 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %22 = call i64 @hostapd_build_ap_extra_ies(%struct.hostapd_data* %21, %struct.wpabuf** %4, %struct.wpabuf** %5, %struct.wpabuf** %6)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %44

25:                                               ; preds = %20
  %26 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %27 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (i32, %struct.wpabuf*, %struct.wpabuf*, %struct.wpabuf*)*, i32 (i32, %struct.wpabuf*, %struct.wpabuf*, %struct.wpabuf*)** %29, align 8
  %31 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %32 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %35 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %36 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %37 = call i32 %30(i32 %33, %struct.wpabuf* %34, %struct.wpabuf* %35, %struct.wpabuf* %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %39 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %40 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %41 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %42 = call i32 @hostapd_free_ap_extra_ies(%struct.hostapd_data* %38, %struct.wpabuf* %39, %struct.wpabuf* %40, %struct.wpabuf* %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %25, %24, %19
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @hostapd_build_ap_extra_ies(%struct.hostapd_data*, %struct.wpabuf**, %struct.wpabuf**, %struct.wpabuf**) #1

declare dso_local i32 @hostapd_free_ap_extra_ies(%struct.hostapd_data*, %struct.wpabuf*, %struct.wpabuf*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
