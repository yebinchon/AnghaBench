; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_wpas_dpp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_wpas_dpp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32 }
%struct.dpp_global_config = type { i32, %struct.wpa_supplicant*, %struct.wpa_supplicant* }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@OUI_WFA = common dso_local global i32 0, align 4
@DPP_OUI_TYPE = common dso_local global i32 0, align 4
@wpas_dpp_gas_req_handler = common dso_local global i32 0, align 4
@wpas_dpp_gas_status_handler = common dso_local global i32 0, align 4
@wpas_dpp_process_conf_obj = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_dpp_init(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.dpp_global_config, align 8
  %5 = alloca [7 x i32], align 16
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %6 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %7 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  store i32 %6, i32* %7, align 16
  %8 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 1
  store i32 5, i32* %8, align 4
  %9 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 2
  %10 = load i32, i32* @OUI_WFA, align 4
  %11 = call i32 @WPA_PUT_BE24(i32* %9, i32 %10)
  %12 = load i32, i32* @DPP_OUI_TYPE, align 4
  %13 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 5
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 6
  store i32 1, i32* %14, align 8
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %16 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  %19 = load i32, i32* @wpas_dpp_gas_req_handler, align 4
  %20 = load i32, i32* @wpas_dpp_gas_status_handler, align 4
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %22 = call i64 @gas_server_register(i32 %17, i32* %18, i32 28, i32 %19, i32 %20, %struct.wpa_supplicant* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %40

25:                                               ; preds = %1
  %26 = call i32 @os_memset(%struct.dpp_global_config* %4, i32 0, i32 24)
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %28 = getelementptr inbounds %struct.dpp_global_config, %struct.dpp_global_config* %4, i32 0, i32 2
  store %struct.wpa_supplicant* %27, %struct.wpa_supplicant** %28, align 8
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %30 = getelementptr inbounds %struct.dpp_global_config, %struct.dpp_global_config* %4, i32 0, i32 1
  store %struct.wpa_supplicant* %29, %struct.wpa_supplicant** %30, align 8
  %31 = call i32 @dpp_global_init(%struct.dpp_global_config* %4)
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %33 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %35 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 -1
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %25, %24
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @WPA_PUT_BE24(i32*, i32) #1

declare dso_local i64 @gas_server_register(i32, i32*, i32, i32, i32, %struct.wpa_supplicant*) #1

declare dso_local i32 @os_memset(%struct.dpp_global_config*, i32, i32) #1

declare dso_local i32 @dpp_global_init(%struct.dpp_global_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
