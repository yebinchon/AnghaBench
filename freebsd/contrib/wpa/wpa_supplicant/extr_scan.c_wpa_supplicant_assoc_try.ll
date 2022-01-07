; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_supplicant_assoc_try.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_supplicant_assoc_try.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.wpa_ssid* }
%struct.wpa_ssid = type { %struct.wpa_ssid* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"wpa_supplicant_assoc_try: Reached end of scan list - go back to beginning\00", align 1
@WILDCARD_SSID_SCAN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.wpa_ssid*)* @wpa_supplicant_assoc_try to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_supplicant_assoc_try(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %32, %2
  %8 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %9 = icmp ne %struct.wpa_ssid* %8, null
  br i1 %9, label %10, label %36

10:                                               ; preds = %7
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %12 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %13 = call i32 @wpas_network_disabled(%struct.wpa_supplicant* %11, %struct.wpa_ssid* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %10
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %17 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %18 = call i32 @wpas_temp_disabled(%struct.wpa_supplicant* %16, %struct.wpa_ssid* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %36

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %25
  br label %32

32:                                               ; preds = %31, %10
  %33 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %34 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %33, i32 0, i32 0
  %35 = load %struct.wpa_ssid*, %struct.wpa_ssid** %34, align 8
  store %struct.wpa_ssid* %35, %struct.wpa_ssid** %4, align 8
  br label %7

36:                                               ; preds = %21, %7
  %37 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %38 = icmp eq %struct.wpa_ssid* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = call i32 @wpa_dbg(%struct.wpa_supplicant* %40, i32 %41, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %43 = load i8*, i8** @WILDCARD_SSID_SCAN, align 8
  %44 = bitcast i8* %43 to %struct.wpa_ssid*
  %45 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %46 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %45, i32 0, i32 0
  store %struct.wpa_ssid* %44, %struct.wpa_ssid** %46, align 8
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant* %47, i32 %48, i32 0)
  br label %68

50:                                               ; preds = %36
  %51 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %52 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %51, i32 0, i32 0
  %53 = load %struct.wpa_ssid*, %struct.wpa_ssid** %52, align 8
  %54 = icmp ne %struct.wpa_ssid* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %57 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %58 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %57, i32 0, i32 0
  store %struct.wpa_ssid* %56, %struct.wpa_ssid** %58, align 8
  br label %64

59:                                               ; preds = %50
  %60 = load i8*, i8** @WILDCARD_SSID_SCAN, align 8
  %61 = bitcast i8* %60 to %struct.wpa_ssid*
  %62 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %63 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %62, i32 0, i32 0
  store %struct.wpa_ssid* %61, %struct.wpa_ssid** %63, align 8
  br label %64

64:                                               ; preds = %59, %55
  %65 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %66 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %67 = call i32 @wpa_supplicant_associate(%struct.wpa_supplicant* %65, i32* null, %struct.wpa_ssid* %66)
  br label %68

68:                                               ; preds = %64, %39
  ret void
}

declare dso_local i32 @wpas_network_disabled(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i32 @wpas_temp_disabled(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant*, i32, i32) #1

declare dso_local i32 @wpa_supplicant_associate(%struct.wpa_supplicant*, i32*, %struct.wpa_ssid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
