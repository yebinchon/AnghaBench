; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_enable_mac_addr_randomization.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpas_enable_mac_addr_randomization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i64 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"MAC_ADDR_RAND_SCAN invalid addr/mask combination\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"MAC_ADDR_RAND_SCAN cannot allow multicast address\00", align 1
@MAC_ADDR_RAND_SCAN = common dso_local global i32 0, align 4
@MAC_ADDR_RAND_SCHED_SCAN = common dso_local global i32 0, align 4
@MAC_ADDR_RAND_PNO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_enable_mac_addr_randomization(%struct.wpa_supplicant* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32*, i32** %9, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12, %4
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %12
  %22 = load i32, i32* @MSG_INFO, align 4
  %23 = call i32 @wpa_printf(i32 %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %111

24:                                               ; preds = %18, %15
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %30
  %43 = load i32, i32* @MSG_INFO, align 4
  %44 = call i32 @wpa_printf(i32 %43, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %111

45:                                               ; preds = %36, %27, %24
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @MAC_ADDR_RAND_SCAN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %52 = load i32, i32* @MAC_ADDR_RAND_SCAN, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i64 @wpas_mac_addr_rand_scan_set(%struct.wpa_supplicant* %51, i32 %52, i32* %53, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 -1, i32* %5, align 4
  br label %111

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %45
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @MAC_ADDR_RAND_SCHED_SCAN, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %59
  %65 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %66 = load i32, i32* @MAC_ADDR_RAND_SCHED_SCAN, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call i64 @wpas_mac_addr_rand_scan_set(%struct.wpa_supplicant* %65, i32 %66, i32* %67, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i32 -1, i32* %5, align 4
  br label %111

72:                                               ; preds = %64
  %73 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %74 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %79 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %84 = call i32 @wpas_scan_restart_sched_scan(%struct.wpa_supplicant* %83)
  br label %85

85:                                               ; preds = %82, %77, %72
  br label %86

86:                                               ; preds = %85, %59
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @MAC_ADDR_RAND_PNO, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %86
  %92 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %93 = load i32, i32* @MAC_ADDR_RAND_PNO, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = call i64 @wpas_mac_addr_rand_scan_set(%struct.wpa_supplicant* %92, i32 %93, i32* %94, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i32 -1, i32* %5, align 4
  br label %111

99:                                               ; preds = %91
  %100 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %101 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %106 = call i32 @wpas_stop_pno(%struct.wpa_supplicant* %105)
  %107 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %108 = call i32 @wpas_start_pno(%struct.wpa_supplicant* %107)
  br label %109

109:                                              ; preds = %104, %99
  br label %110

110:                                              ; preds = %109, %86
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %98, %71, %57, %42, %21
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wpas_mac_addr_rand_scan_set(%struct.wpa_supplicant*, i32, i32*, i32*) #1

declare dso_local i32 @wpas_scan_restart_sched_scan(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_stop_pno(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_start_pno(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
