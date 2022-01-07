; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_process_notification.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_process_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_aka_data = type { i64, i32, i64 }
%struct.wpabuf = type { i32 }
%struct.eap_sim_attrs = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"EAP-AKA: subtype Notification\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"EAP-AKA: too many notification rounds (only one allowed)\00", align 1
@EAP_AKA_UNABLE_TO_PROCESS_PACKET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"EAP-AKA: no AT_NOTIFICATION in Notification message\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@EAP_SIM_SUCCESS = common dso_local global i32 0, align 4
@RESULT_SUCCESS = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_aka_data*, i32, %struct.wpabuf*, %struct.eap_sim_attrs*)* @eap_aka_process_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_aka_process_notification(%struct.eap_sm* %0, %struct.eap_aka_data* %1, i32 %2, %struct.wpabuf* %3, %struct.eap_sim_attrs* %4) #0 {
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_aka_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca %struct.eap_sim_attrs*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_aka_data* %1, %struct.eap_aka_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.wpabuf* %3, %struct.wpabuf** %10, align 8
  store %struct.eap_sim_attrs* %4, %struct.eap_sim_attrs** %11, align 8
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %15 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %5
  %19 = load i32, i32* @MSG_INFO, align 4
  %20 = call i32 @wpa_printf(i32 %19, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @EAP_AKA_UNABLE_TO_PROCESS_PACKET, align 4
  %24 = call %struct.wpabuf* @eap_aka_client_error(%struct.eap_aka_data* %21, i32 %22, i32 %23)
  store %struct.wpabuf* %24, %struct.wpabuf** %6, align 8
  br label %108

25:                                               ; preds = %5
  %26 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %27 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %31 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load i32, i32* @MSG_INFO, align 4
  %36 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @EAP_AKA_UNABLE_TO_PROCESS_PACKET, align 4
  %40 = call %struct.wpabuf* @eap_aka_client_error(%struct.eap_aka_data* %37, i32 %38, i32 %39)
  store %struct.wpabuf* %40, %struct.wpabuf** %6, align 8
  br label %108

41:                                               ; preds = %25
  %42 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %43 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 16384
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %49 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %50 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %51 = call i64 @eap_aka_process_notification_auth(%struct.eap_aka_data* %48, %struct.wpabuf* %49, %struct.eap_sim_attrs* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @EAP_AKA_UNABLE_TO_PROCESS_PACKET, align 4
  %57 = call %struct.wpabuf* @eap_aka_client_error(%struct.eap_aka_data* %54, i32 %55, i32 %56)
  store %struct.wpabuf* %57, %struct.wpabuf** %6, align 8
  br label %108

58:                                               ; preds = %47, %41
  %59 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %60 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %63 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @eap_sim_report_notification(i32 %61, i32 %64, i32 1)
  %66 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %67 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %58
  %71 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %72 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %73, 32768
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %77 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %80 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %82 = load i32, i32* @FAILURE, align 4
  %83 = call i32 @eap_aka_state(%struct.eap_aka_data* %81, i32 %82)
  br label %101

84:                                               ; preds = %70, %58
  %85 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %86 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @EAP_SIM_SUCCESS, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %92 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @RESULT_SUCCESS, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %98 = load i32, i32* @SUCCESS, align 4
  %99 = call i32 @eap_aka_state(%struct.eap_aka_data* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %90, %84
  br label %101

101:                                              ; preds = %100, %75
  %102 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %105 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call %struct.wpabuf* @eap_aka_response_notification(%struct.eap_aka_data* %102, i32 %103, i32 %106)
  store %struct.wpabuf* %107, %struct.wpabuf** %6, align 8
  br label %108

108:                                              ; preds = %101, %53, %34, %18
  %109 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  ret %struct.wpabuf* %109
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @eap_aka_client_error(%struct.eap_aka_data*, i32, i32) #1

declare dso_local i64 @eap_aka_process_notification_auth(%struct.eap_aka_data*, %struct.wpabuf*, %struct.eap_sim_attrs*) #1

declare dso_local i32 @eap_sim_report_notification(i32, i32, i32) #1

declare dso_local i32 @eap_aka_state(%struct.eap_aka_data*, i32) #1

declare dso_local %struct.wpabuf* @eap_aka_response_notification(%struct.eap_aka_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
