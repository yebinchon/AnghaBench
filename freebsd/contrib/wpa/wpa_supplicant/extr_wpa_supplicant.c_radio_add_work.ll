; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_radio_add_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_radio_add_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.wpa_radio* }
%struct.wpa_radio = type { i32, i32 }
%struct.wpa_radio_work = type { i32, i8*, {}*, i32, i8*, i8*, %struct.wpa_supplicant*, i32 }
%struct.wpa_driver_scan_params = type { i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Add radio work '%s'@%p\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"scan\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"p2p-scan\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"First radio work item in the queue - schedule start immediately\00", align 1
@WPA_DRIVER_FLAGS_OFFCHANNEL_SIMULTANEOUS = common dso_local global i32 0, align 4
@MAX_ACTIVE_WORKS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"Try to schedule a radio work (num_active_works=%u)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radio_add_work(%struct.wpa_supplicant* %0, i32 %1, i8* %2, i32 %3, void (%struct.wpa_radio_work*, i32)* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_supplicant*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca void (%struct.wpa_radio_work*, i32)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.wpa_radio*, align 8
  %15 = alloca %struct.wpa_radio_work*, align 8
  %16 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store void (%struct.wpa_radio_work*, i32)* %4, void (%struct.wpa_radio_work*, i32)** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 1
  %19 = load %struct.wpa_radio*, %struct.wpa_radio** %18, align 8
  store %struct.wpa_radio* %19, %struct.wpa_radio** %14, align 8
  %20 = call %struct.wpa_radio_work* @os_zalloc(i32 64)
  store %struct.wpa_radio_work* %20, %struct.wpa_radio_work** %15, align 8
  %21 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %15, align 8
  %22 = icmp eq %struct.wpa_radio_work* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %136

24:                                               ; preds = %6
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %15, align 8
  %29 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %25, i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %27, %struct.wpa_radio_work* %28)
  %30 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %15, align 8
  %31 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %30, i32 0, i32 7
  %32 = call i32 @os_get_reltime(i32* %31)
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %15, align 8
  %35 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %15, align 8
  %38 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %40 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %15, align 8
  %41 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %40, i32 0, i32 6
  store %struct.wpa_supplicant* %39, %struct.wpa_supplicant** %41, align 8
  %42 = load void (%struct.wpa_radio_work*, i32)*, void (%struct.wpa_radio_work*, i32)** %12, align 8
  %43 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %15, align 8
  %44 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %43, i32 0, i32 2
  %45 = bitcast {}** %44 to void (%struct.wpa_radio_work*, i32)**
  store void (%struct.wpa_radio_work*, i32)* %42, void (%struct.wpa_radio_work*, i32)** %45, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %15, align 8
  %48 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %24
  %52 = load i32, i32* %9, align 4
  %53 = call i8* @wpas_freq_to_band(i32 %52)
  %54 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %15, align 8
  %55 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  br label %79

56:                                               ; preds = %24
  %57 = load i8*, i8** %10, align 8
  %58 = call i64 @os_strcmp(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %10, align 8
  %62 = call i64 @os_strcmp(i8* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %60, %56
  %65 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = bitcast i8* %66 to %struct.wpa_driver_scan_params*
  %68 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i8* @wpas_get_bands(%struct.wpa_supplicant* %65, i32* %69)
  %71 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %15, align 8
  %72 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  br label %78

73:                                               ; preds = %60
  %74 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %75 = call i8* @wpas_get_bands(%struct.wpa_supplicant* %74, i32* null)
  %76 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %15, align 8
  %77 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %73, %64
  br label %79

79:                                               ; preds = %78, %51
  %80 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %81 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %80, i32 0, i32 1
  %82 = load %struct.wpa_radio*, %struct.wpa_radio** %81, align 8
  %83 = getelementptr inbounds %struct.wpa_radio, %struct.wpa_radio* %82, i32 0, i32 1
  %84 = call i32 @dl_list_empty(i32* %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %79
  %88 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %89 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %88, i32 0, i32 1
  %90 = load %struct.wpa_radio*, %struct.wpa_radio** %89, align 8
  %91 = getelementptr inbounds %struct.wpa_radio, %struct.wpa_radio* %90, i32 0, i32 1
  %92 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %15, align 8
  %93 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %92, i32 0, i32 3
  %94 = call i32 @dl_list_add(i32* %91, i32* %93)
  br label %103

95:                                               ; preds = %79
  %96 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %97 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %96, i32 0, i32 1
  %98 = load %struct.wpa_radio*, %struct.wpa_radio** %97, align 8
  %99 = getelementptr inbounds %struct.wpa_radio, %struct.wpa_radio* %98, i32 0, i32 1
  %100 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %15, align 8
  %101 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %100, i32 0, i32 3
  %102 = call i32 @dl_list_add_tail(i32* %99, i32* %101)
  br label %103

103:                                              ; preds = %95, %87
  %104 = load i32, i32* %16, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %108 = load i32, i32* @MSG_DEBUG, align 4
  %109 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %107, i32 %108, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %110 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %111 = call i32 @radio_work_check_next(%struct.wpa_supplicant* %110)
  br label %135

112:                                              ; preds = %103
  %113 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %114 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @WPA_DRIVER_FLAGS_OFFCHANNEL_SIMULTANEOUS, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %112
  %120 = load %struct.wpa_radio*, %struct.wpa_radio** %14, align 8
  %121 = getelementptr inbounds %struct.wpa_radio, %struct.wpa_radio* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @MAX_ACTIVE_WORKS, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %119
  %126 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %127 = load i32, i32* @MSG_DEBUG, align 4
  %128 = load %struct.wpa_radio*, %struct.wpa_radio** %14, align 8
  %129 = getelementptr inbounds %struct.wpa_radio, %struct.wpa_radio* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %126, i32 %127, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  %132 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %133 = call i32 @radio_work_check_next(%struct.wpa_supplicant* %132)
  br label %134

134:                                              ; preds = %125, %119, %112
  br label %135

135:                                              ; preds = %134, %106
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %135, %23
  %137 = load i32, i32* %7, align 4
  ret i32 %137
}

declare dso_local %struct.wpa_radio_work* @os_zalloc(i32) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, ...) #1

declare dso_local i32 @os_get_reltime(i32*) #1

declare dso_local i8* @wpas_freq_to_band(i32) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i8* @wpas_get_bands(%struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @dl_list_empty(i32*) #1

declare dso_local i32 @dl_list_add(i32*, i32*) #1

declare dso_local i32 @dl_list_add_tail(i32*, i32*) #1

declare dso_local i32 @radio_work_check_next(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
