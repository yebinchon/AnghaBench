; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_response_notification.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_response_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_aka_data = type { i32, i32, i32, i64, i32* }
%struct.eap_sim_msg = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Generating EAP-AKA Notification (id=%d)\00", align 1
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@EAP_AKA_SUBTYPE_NOTIFICATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"   AT_IV\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"   AT_ENCR_DATA\00", align 1
@EAP_SIM_AT_IV = common dso_local global i32 0, align 4
@EAP_SIM_AT_ENCR_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"   *AT_COUNTER %d\00", align 1
@EAP_SIM_AT_COUNTER = common dso_local global i32 0, align 4
@EAP_SIM_AT_PADDING = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"EAP-AKA: Failed to encrypt AT_ENCR_DATA\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"   AT_MAC\00", align 1
@EAP_SIM_AT_MAC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_aka_data*, i32, i32)* @eap_aka_response_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_aka_response_notification(%struct.eap_aka_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_aka_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_sim_msg*, align 8
  %9 = alloca i32*, align 8
  store %struct.eap_aka_data* %0, %struct.eap_aka_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = and i32 %10, 16384
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.eap_aka_data*, %struct.eap_aka_data** %5, align 8
  %15 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i32* [ %16, %13 ], [ null, %17 ]
  store i32* %19, i32** %9, align 8
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.eap_aka_data*, %struct.eap_aka_data** %5, align 8
  %26 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @EAP_AKA_SUBTYPE_NOTIFICATION, align 4
  %29 = call %struct.eap_sim_msg* @eap_sim_msg_init(i32 %23, i32 %24, i32 %27, i32 %28)
  store %struct.eap_sim_msg* %29, %struct.eap_sim_msg** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %70

32:                                               ; preds = %18
  %33 = load %struct.eap_aka_data*, %struct.eap_aka_data** %5, align 8
  %34 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %32
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %43 = load i32, i32* @EAP_SIM_AT_IV, align 4
  %44 = load i32, i32* @EAP_SIM_AT_ENCR_DATA, align 4
  %45 = call i32 @eap_sim_msg_add_encr_start(%struct.eap_sim_msg* %42, i32 %43, i32 %44)
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = load %struct.eap_aka_data*, %struct.eap_aka_data** %5, align 8
  %48 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %52 = load i32, i32* @EAP_SIM_AT_COUNTER, align 4
  %53 = load %struct.eap_aka_data*, %struct.eap_aka_data** %5, align 8
  %54 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %51, i32 %52, i32 %55, i32* null, i32 0)
  %57 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %58 = load %struct.eap_aka_data*, %struct.eap_aka_data** %5, align 8
  %59 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @EAP_SIM_AT_PADDING, align 4
  %62 = call i64 @eap_sim_msg_add_encr_end(%struct.eap_sim_msg* %57, i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %37
  %65 = load i32, i32* @MSG_WARNING, align 4
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %65, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %67 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %68 = call i32 @eap_sim_msg_free(%struct.eap_sim_msg* %67)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %86

69:                                               ; preds = %37
  br label %70

70:                                               ; preds = %69, %32, %18
  %71 = load i32*, i32** %9, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* @MSG_DEBUG, align 4
  %75 = call i32 (i32, i8*, ...) @wpa_printf(i32 %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %76 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %77 = load i32, i32* @EAP_SIM_AT_MAC, align 4
  %78 = call i32 @eap_sim_msg_add_mac(%struct.eap_sim_msg* %76, i32 %77)
  br label %79

79:                                               ; preds = %73, %70
  %80 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %81 = load %struct.eap_aka_data*, %struct.eap_aka_data** %5, align 8
  %82 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = call %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg* %80, i32 %83, i32* %84, i32* bitcast ([1 x i8]* @.str.6 to i32*), i32 0)
  store %struct.wpabuf* %85, %struct.wpabuf** %4, align 8
  br label %86

86:                                               ; preds = %79, %64
  %87 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %87
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.eap_sim_msg* @eap_sim_msg_init(i32, i32, i32, i32) #1

declare dso_local i32 @eap_sim_msg_add_encr_start(%struct.eap_sim_msg*, i32, i32) #1

declare dso_local i32 @eap_sim_msg_add(%struct.eap_sim_msg*, i32, i32, i32*, i32) #1

declare dso_local i64 @eap_sim_msg_add_encr_end(%struct.eap_sim_msg*, i32, i32) #1

declare dso_local i32 @eap_sim_msg_free(%struct.eap_sim_msg*) #1

declare dso_local i32 @eap_sim_msg_add_mac(%struct.eap_sim_msg*, i32) #1

declare dso_local %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
