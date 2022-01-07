; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wnm_scan_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wnm_scan_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i64, %struct.TYPE_2__*, i32, i32, i32, i32, %struct.wpa_ssid* }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_ssid = type { i32 }
%struct.wpa_bss = type { i32 }

@WNM_BSS_TM_REJECT_UNSPECIFIED = common dso_local global i32 0, align 4
@MBO_TRANSITION_REJECT_REASON_UNSPECIFIED = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"WNM: Process scan results for BSS Transition Management\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"WNM: Previously stored BSS transition candidate list is not valid anymore - drop it\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [79 x i8] c"WNM: Stored BSS transition candidate list not from the current BSS - ignore it\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"WNM: No BSS transition candidate match found\00", align 1
@WNM_BSS_TM_REJECT_NO_SUITABLE_CANDIDATES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wnm_scan_process(%struct.wpa_supplicant* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_bss*, align 8
  %7 = alloca %struct.wpa_ssid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %11 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %10, i32 0, i32 7
  %12 = load %struct.wpa_ssid*, %struct.wpa_ssid** %11, align 8
  store %struct.wpa_ssid* %12, %struct.wpa_ssid** %7, align 8
  %13 = load i32, i32* @WNM_BSS_TM_REJECT_UNSPECIFIED, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @MBO_TRANSITION_REJECT_REASON_UNSPECIFIED, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %16 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %91

20:                                               ; preds = %2
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = call i32 @wpa_dbg(%struct.wpa_supplicant* %21, i32 %22, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %25 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %24, i32 0, i32 5
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 4
  %28 = call i64 @os_reltime_before(i32* %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = call i32 @wpa_printf(i32 %31, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %34 = call i32 @wnm_deallocate_memory(%struct.wpa_supplicant* %33)
  store i32 0, i32* %3, align 4
  br label %91

35:                                               ; preds = %20
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %37 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %42 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %45 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ETH_ALEN, align 4
  %50 = call i64 @os_memcmp(i32 %43, i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %40, %35
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = call i32 @wpa_printf(i32 %53, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %91

55:                                               ; preds = %40
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %57 = call %struct.wpa_bss* @compare_scan_neighbor_results(%struct.wpa_supplicant* %56, i32 0, i32* %9)
  store %struct.wpa_bss* %57, %struct.wpa_bss** %6, align 8
  %58 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %59 = icmp ne %struct.wpa_bss* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @MSG_DEBUG, align 4
  %62 = call i32 @wpa_printf(i32 %61, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @WNM_BSS_TM_REJECT_NO_SUITABLE_CANDIDATES, align 4
  store i32 %63, i32* %8, align 4
  br label %69

64:                                               ; preds = %55
  %65 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %66 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %67 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %68 = call i32 @wnm_bss_tm_connect(%struct.wpa_supplicant* %65, %struct.wpa_bss* %66, %struct.wpa_ssid* %67, i32 1)
  store i32 1, i32* %3, align 4
  br label %91

69:                                               ; preds = %60
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %91

73:                                               ; preds = %69
  %74 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %75 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %80 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %82 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %83 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @wnm_send_bss_transition_mgmt_resp(%struct.wpa_supplicant* %81, i32 %84, i32 %85, i32 %86, i32 0, i32* null)
  br label %88

88:                                               ; preds = %78, %73
  %89 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %90 = call i32 @wnm_deallocate_memory(%struct.wpa_supplicant* %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %72, %64, %52, %30, %19
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i64 @os_reltime_before(i32*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wnm_deallocate_memory(%struct.wpa_supplicant*) #1

declare dso_local i64 @os_memcmp(i32, i32, i32) #1

declare dso_local %struct.wpa_bss* @compare_scan_neighbor_results(%struct.wpa_supplicant*, i32, i32*) #1

declare dso_local i32 @wnm_bss_tm_connect(%struct.wpa_supplicant*, %struct.wpa_bss*, %struct.wpa_ssid*, i32) #1

declare dso_local i32 @wnm_send_bss_transition_mgmt_resp(%struct.wpa_supplicant*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
