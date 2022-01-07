; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps.c_wps_build_assoc_req_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps.c_wps_build_assoc_req_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"WPS: Building WPS IE for (Re)Association Request\00", align 1
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@WPS_DEV_OUI_WFA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @wps_build_assoc_req_ie(i32 %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @MSG_DEBUG, align 4
  %7 = call i32 @wpa_printf(i32 %6, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %8 = call %struct.wpabuf* @wpabuf_alloc(i32 100)
  store %struct.wpabuf* %8, %struct.wpabuf** %4, align 8
  %9 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %10 = icmp eq %struct.wpabuf* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %14 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %15 = call i32 @wpabuf_put_u8(%struct.wpabuf* %13, i32 %14)
  %16 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %17 = call i64* @wpabuf_put(%struct.wpabuf* %16, i32 1)
  store i64* %17, i64** %5, align 8
  %18 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %19 = load i32, i32* @WPS_DEV_OUI_WFA, align 4
  %20 = call i32 @wpabuf_put_be32(%struct.wpabuf* %18, i32 %19)
  %21 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %22 = call i64 @wps_build_version(%struct.wpabuf* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %12
  %25 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @wps_build_req_type(%struct.wpabuf* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %31 = call i64 @wps_build_wfa_ext(%struct.wpabuf* %30, i32 0, i32* null, i32 0, i32 0)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %24, %12
  %34 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %35 = call i32 @wpabuf_free(%struct.wpabuf* %34)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %42

36:                                               ; preds = %29
  %37 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %38 = call i64 @wpabuf_len(%struct.wpabuf* %37)
  %39 = sub nsw i64 %38, 2
  %40 = load i64*, i64** %5, align 8
  store i64 %39, i64* %40, align 8
  %41 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %41, %struct.wpabuf** %2, align 8
  br label %42

42:                                               ; preds = %36, %33, %11
  %43 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %43
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i64* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be32(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_version(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_req_type(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_wfa_ext(%struct.wpabuf*, i32, i32*, i32, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
