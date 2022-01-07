; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mbo.c_wpas_mbo_update_cell_capa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mbo.c_wpas_mbo_update_cell_capa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"MBO: Cellular capability already set to %u\00", align 1
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@OUI_WFA = common dso_local global i32 0, align 4
@MBO_ATTR_ID_CELL_DATA_CAPA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_mbo_update_cell_capa(%struct.wpa_supplicant* %0, i32 %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [7 x i32], align 16
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %7 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %41

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %20 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %24 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  store i32 %23, i32* %24, align 16
  %25 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 1
  store i32 5, i32* %25, align 4
  %26 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* @OUI_WFA, align 4
  %29 = call i32 @WPA_PUT_BE24(i32* %27, i32 %28)
  %30 = load i32, i32* @MBO_ATTR_ID_CELL_DATA_CAPA, align 4
  %31 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 5
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 6
  store i32 %32, i32* %33, align 8
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %35 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  %36 = call i32 @wpas_mbo_send_wnm_notification(%struct.wpa_supplicant* %34, i32* %35, i32 7)
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %38 = call i32 @wpa_supplicant_set_default_scan_ies(%struct.wpa_supplicant* %37)
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %40 = call i32 @wpas_update_mbo_connect_params(%struct.wpa_supplicant* %39)
  br label %41

41:                                               ; preds = %17, %13
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @WPA_PUT_BE24(i32*, i32) #1

declare dso_local i32 @wpas_mbo_send_wnm_notification(%struct.wpa_supplicant*, i32*, i32) #1

declare dso_local i32 @wpa_supplicant_set_default_scan_ies(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_update_mbo_connect_params(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
