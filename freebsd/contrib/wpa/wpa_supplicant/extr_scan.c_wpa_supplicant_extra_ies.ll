; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_supplicant_extra_ies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_supplicant_extra_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wpa_supplicant = type { i64, i32, %struct.wpabuf**, %struct.wpabuf*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@WPA_IF_STATION = common dso_local global i32 0, align 4
@VENDOR_ELEM_PROBE_REQ = common dso_local global i64 0, align 8
@DEV_PW_DEFAULT = common dso_local global i32 0, align 4
@DEV_PW_PUSHBUTTON = common dso_local global i32 0, align 4
@OCE_STA = common dso_local global i32 0, align 4
@P2P_GROUP_INTERFACE_CLIENT = common dso_local global i64 0, align 8
@WPA_IF_P2P_CLIENT = common dso_local global i32 0, align 4
@WPS_REQ_ENROLLEE_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.wpa_supplicant*)* @wpa_supplicant_extra_ies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @wpa_supplicant_extra_ies(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca [18 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpabuf*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %8 = load i32, i32* @WPA_IF_STATION, align 4
  %9 = call i32 @wpa_drv_get_ext_capa(%struct.wpa_supplicant* %7, i32 %8)
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %11 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 0
  %12 = call i32 @wpas_build_ext_capab(%struct.wpa_supplicant* %10, i32* %11, i32 72)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @wpabuf_resize(%struct.wpabuf** %3, i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %21 = getelementptr inbounds [18 x i32], [18 x i32]* %4, i64 0, i64 0
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @wpabuf_put_data(%struct.wpabuf* %20, i32* %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %15, %1
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %26 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %25, i32 0, i32 2
  %27 = load %struct.wpabuf**, %struct.wpabuf*** %26, align 8
  %28 = load i64, i64* @VENDOR_ELEM_PROBE_REQ, align 8
  %29 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %27, i64 %28
  %30 = load %struct.wpabuf*, %struct.wpabuf** %29, align 8
  %31 = icmp ne %struct.wpabuf* %30, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %24
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 2
  %35 = load %struct.wpabuf**, %struct.wpabuf*** %34, align 8
  %36 = load i64, i64* @VENDOR_ELEM_PROBE_REQ, align 8
  %37 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %35, i64 %36
  %38 = load %struct.wpabuf*, %struct.wpabuf** %37, align 8
  store %struct.wpabuf* %38, %struct.wpabuf** %6, align 8
  %39 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %40 = call i32 @wpabuf_len(%struct.wpabuf* %39)
  %41 = call i64 @wpabuf_resize(%struct.wpabuf** %3, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %45 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %46 = call i32 @wpabuf_put_buf(%struct.wpabuf* %44, %struct.wpabuf* %45)
  br label %47

47:                                               ; preds = %43, %32
  br label %48

48:                                               ; preds = %47, %24
  %49 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %49
}

declare dso_local i32 @wpa_drv_get_ext_capa(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpas_build_ext_capab(%struct.wpa_supplicant*, i32*, i32) #1

declare dso_local i64 @wpabuf_resize(%struct.wpabuf**, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
