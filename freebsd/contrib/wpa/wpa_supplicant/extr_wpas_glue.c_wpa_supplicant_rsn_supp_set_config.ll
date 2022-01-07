; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpas_glue.c_wpa_supplicant_rsn_supp_set_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpas_glue.c_wpa_supplicant_rsn_supp_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.wpa_ssid = type { i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.rsn_supp_config = type { i64, i32, i32, i32, i32, i32, i32, i32*, i32, i32, %struct.wpa_ssid* }

@P2P_GROUP_CAPAB_IP_ADDR_ALLOCATION = common dso_local global i32 0, align 4
@P2P_IE_VENDOR_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_supplicant_rsn_supp_set_config(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  %5 = alloca %struct.rsn_supp_config, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %4, align 8
  %6 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %7 = icmp ne %struct.wpa_ssid* %6, null
  br i1 %7, label %8, label %34

8:                                                ; preds = %2
  %9 = call i32 @os_memset(%struct.rsn_supp_config* %5, i32 0, i32 56)
  %10 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %11 = getelementptr inbounds %struct.rsn_supp_config, %struct.rsn_supp_config* %5, i32 0, i32 10
  store %struct.wpa_ssid* %10, %struct.wpa_ssid** %11, align 8
  %12 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %13 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.rsn_supp_config, %struct.rsn_supp_config* %5, i32 0, i32 9
  store i32 %14, i32* %15, align 4
  %16 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %17 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.rsn_supp_config, %struct.rsn_supp_config* %5, i32 0, i32 6
  store i32 %18, i32* %19, align 4
  %20 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %21 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.rsn_supp_config, %struct.rsn_supp_config* %5, i32 0, i32 5
  store i32 %22, i32* %23, align 8
  %24 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %25 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.rsn_supp_config, %struct.rsn_supp_config* %5, i32 0, i32 4
  store i32 %26, i32* %27, align 4
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.rsn_supp_config, %struct.rsn_supp_config* %5, i32 0, i32 3
  store i32 %32, i32* %33, align 8
  br label %34

34:                                               ; preds = %8, %2
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %39 = icmp ne %struct.wpa_ssid* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %42

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %40
  %43 = phi %struct.rsn_supp_config* [ %5, %40 ], [ null, %41 ]
  %44 = call i32 @wpa_sm_set_config(i32 %37, %struct.rsn_supp_config* %43)
  ret void
}

declare dso_local i32 @os_memset(%struct.rsn_supp_config*, i32, i32) #1

declare dso_local i32 @wpa_sm_set_config(i32, %struct.rsn_supp_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
