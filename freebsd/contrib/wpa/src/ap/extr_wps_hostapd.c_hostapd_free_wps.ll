; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_hostapd_free_wps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_hostapd_free_wps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_context = type { i32, i32, %struct.wps_context*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@MAX_WPS_VENDOR_EXTENSIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_context*)* @hostapd_free_wps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_free_wps(%struct.wps_context* %0) #0 {
  %2 = alloca %struct.wps_context*, align 8
  %3 = alloca i32, align 4
  store %struct.wps_context* %0, %struct.wps_context** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MAX_WPS_VENDOR_EXTENSIONS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = load %struct.wps_context*, %struct.wps_context** %2, align 8
  %10 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @wpabuf_free(i32 %16)
  br label %18

18:                                               ; preds = %8
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4

21:                                               ; preds = %4
  %22 = load %struct.wps_context*, %struct.wps_context** %2, align 8
  %23 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %22, i32 0, i32 3
  %24 = call i32 @wps_device_data_free(%struct.TYPE_2__* %23)
  %25 = load %struct.wps_context*, %struct.wps_context** %2, align 8
  %26 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %25, i32 0, i32 2
  %27 = load %struct.wps_context*, %struct.wps_context** %26, align 8
  %28 = call i32 @os_free(%struct.wps_context* %27)
  %29 = load %struct.wps_context*, %struct.wps_context** %2, align 8
  %30 = call i32 @hostapd_wps_nfc_clear(%struct.wps_context* %29)
  %31 = load %struct.wps_context*, %struct.wps_context** %2, align 8
  %32 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wpabuf_free(i32 %33)
  %35 = load %struct.wps_context*, %struct.wps_context** %2, align 8
  %36 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @wpabuf_free(i32 %37)
  %39 = load %struct.wps_context*, %struct.wps_context** %2, align 8
  %40 = call i32 @os_free(%struct.wps_context* %39)
  ret void
}

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @wps_device_data_free(%struct.TYPE_2__*) #1

declare dso_local i32 @os_free(%struct.wps_context*) #1

declare dso_local i32 @hostapd_wps_nfc_clear(%struct.wps_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
