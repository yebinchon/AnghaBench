; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_enable_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_enable_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i32, i64, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_ssid* }
%struct.wpa_ssid = type { %struct.wpa_ssid* }

@WPA_DISCONNECTED = common dso_local global i64 0, align 8
@WPA_SCANNING = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Stop ongoing sched_scan to add new network to scan filters\00", align 1
@NORMAL_SCAN_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_supplicant_enable_network(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %4, align 8
  %5 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %6 = icmp eq %struct.wpa_ssid* %5, null
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %9 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %8, i32 0, i32 6
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.wpa_ssid*, %struct.wpa_ssid** %11, align 8
  store %struct.wpa_ssid* %12, %struct.wpa_ssid** %4, align 8
  br label %13

13:                                               ; preds = %20, %7
  %14 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %15 = icmp ne %struct.wpa_ssid* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %18 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %19 = call i32 @wpa_supplicant_enable_one_network(%struct.wpa_supplicant* %17, %struct.wpa_ssid* %18)
  br label %20

20:                                               ; preds = %16
  %21 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %22 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %21, i32 0, i32 0
  %23 = load %struct.wpa_ssid*, %struct.wpa_ssid** %22, align 8
  store %struct.wpa_ssid* %23, %struct.wpa_ssid** %4, align 8
  br label %13

24:                                               ; preds = %13
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %27 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %28 = call i32 @wpa_supplicant_enable_one_network(%struct.wpa_supplicant* %26, %struct.wpa_ssid* %27)
  br label %29

29:                                               ; preds = %25, %24
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %77

34:                                               ; preds = %29
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %77, label %39

39:                                               ; preds = %34
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %41 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %46 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @WPA_DISCONNECTED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %52 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @WPA_SCANNING, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %50, %44, %39
  %57 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %58 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = call i32 @wpa_printf(i32 %62, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %65 = call i32 @wpa_supplicant_cancel_sched_scan(%struct.wpa_supplicant* %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %68 = call i32 @wpa_supplicant_fast_associate(%struct.wpa_supplicant* %67)
  %69 = icmp ne i32 %68, 1
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* @NORMAL_SCAN_REQ, align 4
  %72 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %73 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %75 = call i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant* %74, i32 0, i32 0)
  br label %76

76:                                               ; preds = %70, %66
  br label %77

77:                                               ; preds = %76, %50, %34, %29
  ret void
}

declare dso_local i32 @wpa_supplicant_enable_one_network(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_supplicant_cancel_sched_scan(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_supplicant_fast_associate(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
