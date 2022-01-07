; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_response_reauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_response_reauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sim_data = type { i32, i32, i32, i64, i32 }
%struct.eap_sim_msg = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Generating EAP-SIM Reauthentication (id=%d)\00", align 1
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@EAP_TYPE_SIM = common dso_local global i32 0, align 4
@EAP_SIM_SUBTYPE_REAUTHENTICATION = common dso_local global i32 0, align 4
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
@.str.5 = private unnamed_addr constant [40 x i8] c"EAP-SIM: Failed to encrypt AT_ENCR_DATA\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"   AT_RESULT_IND\00", align 1
@EAP_SIM_AT_RESULT_IND = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"   AT_MAC\00", align 1
@EAP_SIM_AT_MAC = common dso_local global i32 0, align 4
@EAP_SIM_NONCE_S_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sim_data*, i32, i32, i32*)* @eap_sim_response_reauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sim_response_reauth(%struct.eap_sim_data* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sim_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.eap_sim_msg*, align 8
  %11 = alloca i32, align 4
  store %struct.eap_sim_data* %0, %struct.eap_sim_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @EAP_TYPE_SIM, align 4
  %18 = load i32, i32* @EAP_SIM_SUBTYPE_REAUTHENTICATION, align 4
  %19 = call %struct.eap_sim_msg* @eap_sim_msg_init(i32 %15, i32 %16, i32 %17, i32 %18)
  store %struct.eap_sim_msg* %19, %struct.eap_sim_msg** %10, align 8
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %24 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  %25 = load i32, i32* @EAP_SIM_AT_IV, align 4
  %26 = load i32, i32* @EAP_SIM_AT_ENCR_DATA, align 4
  %27 = call i32 @eap_sim_msg_add_encr_start(%struct.eap_sim_msg* %24, i32 %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %4
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = call i32 (i32, i8*, ...) @wpa_printf(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %33 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  %34 = load i32, i32* @EAP_SIM_AT_COUNTER_TOO_SMALL, align 4
  %35 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %33, i32 %34, i32 0, i32* null, i32 0)
  %36 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %37 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %11, align 4
  br label %43

39:                                               ; preds = %4
  %40 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %41 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %39, %30
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  %48 = load i32, i32* @EAP_SIM_AT_COUNTER, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %47, i32 %48, i32 %49, i32* null, i32 0)
  %51 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  %52 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %53 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @EAP_SIM_AT_PADDING, align 4
  %56 = call i64 @eap_sim_msg_add_encr_end(%struct.eap_sim_msg* %51, i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %43
  %59 = load i32, i32* @MSG_WARNING, align 4
  %60 = call i32 (i32, i8*, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %61 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  %62 = call i32 @eap_sim_msg_free(%struct.eap_sim_msg* %61)
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %88

63:                                               ; preds = %43
  %64 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %65 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* @MSG_DEBUG, align 4
  %70 = call i32 (i32, i8*, ...) @wpa_printf(i32 %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %71 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  %72 = load i32, i32* @EAP_SIM_AT_RESULT_IND, align 4
  %73 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %71, i32 %72, i32 0, i32* null, i32 0)
  br label %74

74:                                               ; preds = %68, %63
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %77 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  %78 = load i32, i32* @EAP_SIM_AT_MAC, align 4
  %79 = call i32 @eap_sim_msg_add_mac(%struct.eap_sim_msg* %77, i32 %78)
  %80 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %10, align 8
  %81 = load i32, i32* @EAP_TYPE_SIM, align 4
  %82 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %83 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* @EAP_SIM_NONCE_S_LEN, align 4
  %87 = call %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg* %80, i32 %81, i32 %84, i32* %85, i32 %86)
  store %struct.wpabuf* %87, %struct.wpabuf** %5, align 8
  br label %88

88:                                               ; preds = %74, %58
  %89 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %89
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.eap_sim_msg* @eap_sim_msg_init(i32, i32, i32, i32) #1

declare dso_local i32 @eap_sim_msg_add_encr_start(%struct.eap_sim_msg*, i32, i32) #1

declare dso_local i32 @eap_sim_msg_add(%struct.eap_sim_msg*, i32, i32, i32*, i32) #1

declare dso_local i64 @eap_sim_msg_add_encr_end(%struct.eap_sim_msg*, i32, i32) #1

declare dso_local i32 @eap_sim_msg_free(%struct.eap_sim_msg*) #1

declare dso_local i32 @eap_sim_msg_add_mac(%struct.eap_sim_msg*, i32) #1

declare dso_local %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
