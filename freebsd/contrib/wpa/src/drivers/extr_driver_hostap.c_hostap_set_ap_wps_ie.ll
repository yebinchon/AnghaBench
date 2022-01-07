; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostap_set_ap_wps_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostap_set_ap_wps_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.hostap_driver_data = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.wpabuf*, %struct.wpabuf*, %struct.wpabuf*)* @hostap_set_ap_wps_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostap_set_ap_wps_ie(i8* %0, %struct.wpabuf* %1, %struct.wpabuf* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.hostap_driver_data*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %7, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.hostap_driver_data*
  store %struct.hostap_driver_data* %12, %struct.hostap_driver_data** %10, align 8
  %13 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %10, align 8
  %14 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @os_free(i32* %15)
  %17 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %10, align 8
  %18 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %10, align 8
  %20 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %22 = icmp ne %struct.wpabuf* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %4
  %24 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %25 = call i32 @wpabuf_head(%struct.wpabuf* %24)
  %26 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %27 = call i64 @wpabuf_len(%struct.wpabuf* %26)
  %28 = call i32* @os_memdup(i32 %25, i64 %27)
  %29 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %10, align 8
  %30 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %10, align 8
  %32 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  br label %44

36:                                               ; preds = %23
  %37 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %38 = call i64 @wpabuf_len(%struct.wpabuf* %37)
  %39 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %10, align 8
  %40 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %36, %4
  %42 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %10, align 8
  %43 = call i32 @hostapd_ioctl_set_generic_elem(%struct.hostap_driver_data* %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %35
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_memdup(i32, i64) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @hostapd_ioctl_set_generic_elem(%struct.hostap_driver_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
