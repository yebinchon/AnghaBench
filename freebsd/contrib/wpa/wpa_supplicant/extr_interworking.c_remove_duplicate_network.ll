; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_remove_duplicate_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_remove_duplicate_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__*, i32, i32, %struct.wpa_ssid* }
%struct.TYPE_2__ = type { %struct.wpa_ssid* }
%struct.wpa_ssid = type { i32, i32, i32, %struct.wpa_cred*, %struct.wpa_ssid* }
%struct.wpa_cred = type { i32 }
%struct.wpa_bss = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Interworking: Remove duplicate network entry for the same credential\00", align 1
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.wpa_cred*, %struct.wpa_bss*)* @remove_duplicate_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_duplicate_network(%struct.wpa_supplicant* %0, %struct.wpa_cred* %1, %struct.wpa_bss* %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_cred*, align 8
  %6 = alloca %struct.wpa_bss*, align 8
  %7 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_cred* %1, %struct.wpa_cred** %5, align 8
  store %struct.wpa_bss* %2, %struct.wpa_bss** %6, align 8
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %9 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.wpa_ssid*, %struct.wpa_ssid** %11, align 8
  store %struct.wpa_ssid* %12, %struct.wpa_ssid** %7, align 8
  br label %13

13:                                               ; preds = %45, %3
  %14 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %15 = icmp ne %struct.wpa_ssid* %14, null
  br i1 %15, label %16, label %49

16:                                               ; preds = %13
  %17 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %18 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %17, i32 0, i32 3
  %19 = load %struct.wpa_cred*, %struct.wpa_cred** %18, align 8
  %20 = load %struct.wpa_cred*, %struct.wpa_cred** %5, align 8
  %21 = icmp ne %struct.wpa_cred* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %45

23:                                               ; preds = %16
  %24 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %25 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %28 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %26, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %23
  %32 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %33 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %36 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %39 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @os_memcmp(i32 %34, i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31, %23
  br label %45

44:                                               ; preds = %31
  br label %49

45:                                               ; preds = %43, %22
  %46 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %47 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %46, i32 0, i32 4
  %48 = load %struct.wpa_ssid*, %struct.wpa_ssid** %47, align 8
  store %struct.wpa_ssid* %48, %struct.wpa_ssid** %7, align 8
  br label %13

49:                                               ; preds = %44, %13
  %50 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %51 = icmp eq %struct.wpa_ssid* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %86

53:                                               ; preds = %49
  %54 = load i32, i32* @MSG_DEBUG, align 4
  %55 = call i32 @wpa_printf(i32 %54, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %57 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %58 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %57, i32 0, i32 4
  %59 = load %struct.wpa_ssid*, %struct.wpa_ssid** %58, align 8
  %60 = icmp eq %struct.wpa_ssid* %56, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %53
  %62 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %63 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @wpa_sm_set_config(i32 %64, i32* null)
  %66 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %67 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @eapol_sm_notify_config(i32 %68, i32* null, i32* null)
  %70 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %71 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %73 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %74 = call i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant* %72, i32 %73)
  br label %75

75:                                               ; preds = %61, %53
  %76 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %77 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %78 = call i32 @wpas_notify_network_removed(%struct.wpa_supplicant* %76, %struct.wpa_ssid* %77)
  %79 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %80 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %83 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @wpa_config_remove_network(%struct.TYPE_2__* %81, i32 %84)
  br label %86

86:                                               ; preds = %75, %52
  ret void
}

declare dso_local i64 @os_memcmp(i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_sm_set_config(i32, i32*) #1

declare dso_local i32 @eapol_sm_notify_config(i32, i32*, i32*) #1

declare dso_local i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpas_notify_network_removed(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i32 @wpa_config_remove_network(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
