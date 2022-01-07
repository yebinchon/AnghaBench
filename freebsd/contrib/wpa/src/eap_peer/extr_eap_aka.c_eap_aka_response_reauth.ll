; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_response_reauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_response_reauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_aka_data = type { i32, i32, i32, i32, i64, i32 }
%struct.eap_sim_msg = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Generating EAP-AKA Reauthentication (id=%d)\00", align 1
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@EAP_AKA_SUBTYPE_REAUTHENTICATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"   AT_IV\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"   AT_ENCR_DATA\00", align 1
@EAP_SIM_AT_IV = common dso_local global i32 0, align 4
@EAP_SIM_AT_ENCR_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"   *AT_COUNTER_TOO_SMALL\00", align 1
@EAP_SIM_AT_COUNTER_TOO_SMALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"   *AT_COUNTER %d\00", align 1
@EAP_SIM_AT_COUNTER = common dso_local global i32 0, align 4
@EAP_SIM_AT_PADDING = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"EAP-AKA: Failed to encrypt AT_ENCR_DATA\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"   AT_RESULT_IND\00", align 1
@EAP_SIM_AT_RESULT_IND = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"   AT_MAC\00", align 1
@EAP_SIM_AT_MAC = common dso_local global i32 0, align 4
@EAP_SIM_NONCE_S_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_aka_data*, i32, i32, i32*)* @eap_aka_response_reauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_aka_response_reauth(%struct.eap_aka_data* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_aka_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.eap_sim_msg*, align 8
  %11 = alloca i32, align 4
  store %struct.eap_aka_data* %0, %struct.eap_aka_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %18 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @EAP_AKA_SUBTYPE_REAUTHENTICATION, align 4
  %21 = call %struct.eap_sim_msg* @eap_sim_msg_init(i32 %15, i32 %16, i32 %19, i32 %20)
  store %struct.eap_sim_msg* %21, %struct.eap_sim_msg** %10, align 8
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  %27 = load i32, i32* @EAP_SIM_AT_IV, align 4
  %28 = load i32, i32* @EAP_SIM_AT_ENCR_DATA, align 4
  %29 = call i32 @eap_sim_msg_add_encr_start(%struct.eap_sim_msg* %26, i32 %27, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %4
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %35 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  %36 = load i32, i32* @EAP_SIM_AT_COUNTER_TOO_SMALL, align 4
  %37 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %35, i32 %36, i32 0, i32* null, i32 0)
  %38 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %39 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %11, align 4
  br label %45

41:                                               ; preds = %4
  %42 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %43 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %41, %32
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  %49 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  %50 = load i32, i32* @EAP_SIM_AT_COUNTER, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %49, i32 %50, i32 %51, i32* null, i32 0)
  %53 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  %54 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %55 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @EAP_SIM_AT_PADDING, align 4
  %58 = call i64 @eap_sim_msg_add_encr_end(%struct.eap_sim_msg* %53, i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %45
  %61 = load i32, i32* @MSG_WARNING, align 4
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %63 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  %64 = call i32 @eap_sim_msg_free(%struct.eap_sim_msg* %63)
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %95

65:                                               ; preds = %45
  %66 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %67 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  %68 = call i32 @eap_aka_add_checkcode(%struct.eap_aka_data* %66, %struct.eap_sim_msg* %67)
  %69 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %70 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load i32, i32* @MSG_DEBUG, align 4
  %75 = call i32 (i32, i8*, ...) @wpa_printf(i32 %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %76 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  %77 = load i32, i32* @EAP_SIM_AT_RESULT_IND, align 4
  %78 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %76, i32 %77, i32 0, i32* null, i32 0)
  br label %79

79:                                               ; preds = %73, %65
  %80 = load i32, i32* @MSG_DEBUG, align 4
  %81 = call i32 (i32, i8*, ...) @wpa_printf(i32 %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %82 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  %83 = load i32, i32* @EAP_SIM_AT_MAC, align 4
  %84 = call i32 @eap_sim_msg_add_mac(%struct.eap_sim_msg* %82, i32 %83)
  %85 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  %86 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %87 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %90 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* @EAP_SIM_NONCE_S_LEN, align 4
  %94 = call %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg* %85, i32 %88, i32 %91, i32* %92, i32 %93)
  store %struct.wpabuf* %94, %struct.wpabuf** %5, align 8
  br label %95

95:                                               ; preds = %79, %60
  %96 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %96
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.eap_sim_msg* @eap_sim_msg_init(i32, i32, i32, i32) #1

declare dso_local i32 @eap_sim_msg_add_encr_start(%struct.eap_sim_msg*, i32, i32) #1

declare dso_local i32 @eap_sim_msg_add(%struct.eap_sim_msg*, i32, i32, i32*, i32) #1

declare dso_local i64 @eap_sim_msg_add_encr_end(%struct.eap_sim_msg*, i32, i32) #1

declare dso_local i32 @eap_sim_msg_free(%struct.eap_sim_msg*) #1

declare dso_local i32 @eap_aka_add_checkcode(%struct.eap_aka_data*, %struct.eap_sim_msg*) #1

declare dso_local i32 @eap_sim_msg_add_mac(%struct.eap_sim_msg*, i32) #1

declare dso_local %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
