; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ocv.c_ocv_insert_extended_oci.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ocv.c_ocv_insert_extended_oci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_channel_info = type { i32 }

@WLAN_EID_EXTENSION = common dso_local global i32 0, align 4
@OCV_OCI_LEN = common dso_local global i64 0, align 8
@WLAN_EID_EXT_OCV_OCI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocv_insert_extended_oci(%struct.wpa_channel_info* %0, i32* %1) #0 {
  %3 = alloca %struct.wpa_channel_info*, align 8
  %4 = alloca i32*, align 8
  store %struct.wpa_channel_info* %0, %struct.wpa_channel_info** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @WLAN_EID_EXTENSION, align 4
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i32 1
  store i32* %7, i32** %4, align 8
  store i32 %5, i32* %6, align 4
  %8 = load i64, i64* @OCV_OCI_LEN, align 8
  %9 = add nsw i64 1, %8
  %10 = trunc i64 %9 to i32
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %4, align 8
  store i32 %10, i32* %11, align 4
  %13 = load i64, i64* @WLAN_EID_EXT_OCV_OCI, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  %17 = load %struct.wpa_channel_info*, %struct.wpa_channel_info** %3, align 8
  %18 = call i32 @ocv_insert_oci(%struct.wpa_channel_info* %17, i32** %4)
  ret i32 %18
}

declare dso_local i32 @ocv_insert_oci(%struct.wpa_channel_info*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
