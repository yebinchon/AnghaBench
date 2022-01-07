; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_supplicant_rx_tdls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_supplicant_rx_tdls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32, i32, i64 }
%struct.wpa_tdls_frame = type { i32, i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"TDLS: Received Data frame encapsulation\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"TDLS: Discard message - TDLS disabled or unsupported by driver\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"TDLS: Discard copy of own message\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"TDLS: Drop too short frame\00", align 1
@WLAN_ACTION_TDLS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [59 x i8] c"TDLS: Invalid frame - payloadtype=%u category=%u action=%u\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"TDLS: Ignore TDLS frame action code %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i64)* @wpa_supplicant_rx_tdls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_supplicant_rx_tdls(i8* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wpa_sm*, align 8
  %10 = alloca %struct.wpa_tdls_frame*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.wpa_sm*
  store %struct.wpa_sm* %12, %struct.wpa_sm** %9, align 8
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @wpa_hexdump(i32 %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32* %14, i64 %15)
  %17 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %18 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %23 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21, %4
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %111

29:                                               ; preds = %21
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %32 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ETH_ALEN, align 4
  %35 = call i64 @os_memcmp(i32* %30, i32 %33, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %111

40:                                               ; preds = %29
  %41 = load i64, i64* %8, align 8
  %42 = icmp ult i64 %41, 24
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @MSG_INFO, align 4
  %45 = call i32 (i32, i8*, ...) @wpa_printf(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %111

46:                                               ; preds = %40
  %47 = load i32*, i32** %7, align 8
  %48 = bitcast i32* %47 to %struct.wpa_tdls_frame*
  store %struct.wpa_tdls_frame* %48, %struct.wpa_tdls_frame** %10, align 8
  %49 = load %struct.wpa_tdls_frame*, %struct.wpa_tdls_frame** %10, align 8
  %50 = getelementptr inbounds %struct.wpa_tdls_frame, %struct.wpa_tdls_frame* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 2
  br i1 %52, label %59, label %53

53:                                               ; preds = %46
  %54 = load %struct.wpa_tdls_frame*, %struct.wpa_tdls_frame** %10, align 8
  %55 = getelementptr inbounds %struct.wpa_tdls_frame, %struct.wpa_tdls_frame* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @WLAN_ACTION_TDLS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53, %46
  %60 = load i32, i32* @MSG_INFO, align 4
  %61 = load %struct.wpa_tdls_frame*, %struct.wpa_tdls_frame** %10, align 8
  %62 = getelementptr inbounds %struct.wpa_tdls_frame, %struct.wpa_tdls_frame* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.wpa_tdls_frame*, %struct.wpa_tdls_frame** %10, align 8
  %65 = getelementptr inbounds %struct.wpa_tdls_frame, %struct.wpa_tdls_frame* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.wpa_tdls_frame*, %struct.wpa_tdls_frame** %10, align 8
  %68 = getelementptr inbounds %struct.wpa_tdls_frame, %struct.wpa_tdls_frame* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i8*, ...) @wpa_printf(i32 %60, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %63, i64 %66, i32 %69)
  br label %111

71:                                               ; preds = %53
  %72 = load %struct.wpa_tdls_frame*, %struct.wpa_tdls_frame** %10, align 8
  %73 = getelementptr inbounds %struct.wpa_tdls_frame, %struct.wpa_tdls_frame* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  switch i32 %74, label %105 [
    i32 130, label %75
    i32 129, label %81
    i32 131, label %87
    i32 128, label %93
    i32 132, label %99
  ]

75:                                               ; preds = %71
  %76 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @wpa_tdls_process_tpk_m1(%struct.wpa_sm* %76, i32* %77, i32* %78, i64 %79)
  br label %111

81:                                               ; preds = %71
  %82 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @wpa_tdls_process_tpk_m2(%struct.wpa_sm* %82, i32* %83, i32* %84, i64 %85)
  br label %111

87:                                               ; preds = %71
  %88 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @wpa_tdls_process_tpk_m3(%struct.wpa_sm* %88, i32* %89, i32* %90, i64 %91)
  br label %111

93:                                               ; preds = %71
  %94 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @wpa_tdls_recv_teardown(%struct.wpa_sm* %94, i32* %95, i32* %96, i64 %97)
  br label %111

99:                                               ; preds = %71
  %100 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @wpa_tdls_process_discovery_request(%struct.wpa_sm* %100, i32* %101, i32* %102, i64 %103)
  br label %111

105:                                              ; preds = %71
  %106 = load i32, i32* @MSG_DEBUG, align 4
  %107 = load %struct.wpa_tdls_frame*, %struct.wpa_tdls_frame** %10, align 8
  %108 = getelementptr inbounds %struct.wpa_tdls_frame, %struct.wpa_tdls_frame* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i32, i8*, ...) @wpa_printf(i32 %106, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %26, %37, %43, %59, %105, %99, %93, %87, %81, %75
  ret void
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_memcmp(i32*, i32, i32) #1

declare dso_local i32 @wpa_tdls_process_tpk_m1(%struct.wpa_sm*, i32*, i32*, i64) #1

declare dso_local i32 @wpa_tdls_process_tpk_m2(%struct.wpa_sm*, i32*, i32*, i64) #1

declare dso_local i32 @wpa_tdls_process_tpk_m3(%struct.wpa_sm*, i32*, i32*, i64) #1

declare dso_local i32 @wpa_tdls_recv_teardown(%struct.wpa_sm*, i32*, i32*, i64) #1

declare dso_local i32 @wpa_tdls_process_discovery_request(%struct.wpa_sm*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
