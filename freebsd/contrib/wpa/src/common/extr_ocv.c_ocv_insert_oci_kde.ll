; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ocv.c_ocv_insert_oci_kde.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ocv.c_ocv_insert_oci_kde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_channel_info = type { i32 }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@RSN_SELECTOR_LEN = common dso_local global i64 0, align 8
@RSN_KEY_DATA_OCI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocv_insert_oci_kde(%struct.wpa_channel_info* %0, i32** %1) #0 {
  %3 = alloca %struct.wpa_channel_info*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  store %struct.wpa_channel_info* %0, %struct.wpa_channel_info** %3, align 8
  store i32** %1, i32*** %4, align 8
  %6 = load i32**, i32*** %4, align 8
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %5, align 8
  %8 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %5, align 8
  store i32 %8, i32* %9, align 4
  %11 = load i64, i64* @RSN_SELECTOR_LEN, align 8
  %12 = add nsw i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %5, align 8
  store i32 %13, i32* %14, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @RSN_KEY_DATA_OCI, align 4
  %18 = call i32 @RSN_SELECTOR_PUT(i32* %16, i32 %17)
  %19 = load i64, i64* @RSN_SELECTOR_LEN, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 %19
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32**, i32*** %4, align 8
  store i32* %22, i32** %23, align 8
  %24 = load %struct.wpa_channel_info*, %struct.wpa_channel_info** %3, align 8
  %25 = load i32**, i32*** %4, align 8
  %26 = call i32 @ocv_insert_oci(%struct.wpa_channel_info* %24, i32** %25)
  ret i32 %26
}

declare dso_local i32 @RSN_SELECTOR_PUT(i32*, i32) #1

declare dso_local i32 @ocv_insert_oci(%struct.wpa_channel_info*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
