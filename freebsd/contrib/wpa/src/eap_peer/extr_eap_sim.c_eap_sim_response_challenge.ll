; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_response_challenge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_response_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sim_data = type { i32, i64, i32, i64 }
%struct.eap_sim_msg = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Generating EAP-SIM Challenge (id=%d)\00", align 1
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@EAP_TYPE_SIM = common dso_local global i32 0, align 4
@EAP_SIM_SUBTYPE_CHALLENGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"   AT_RESULT_IND\00", align 1
@EAP_SIM_AT_RESULT_IND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"   AT_MAC\00", align 1
@EAP_SIM_AT_MAC = common dso_local global i32 0, align 4
@EAP_SIM_SRES_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sim_data*, i32)* @eap_sim_response_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sim_response_challenge(%struct.eap_sim_data* %0, i32 %1) #0 {
  %3 = alloca %struct.eap_sim_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sim_msg*, align 8
  store %struct.eap_sim_data* %0, %struct.eap_sim_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @MSG_DEBUG, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 (i32, i8*, ...) @wpa_printf(i32 %6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EAP_TYPE_SIM, align 4
  %12 = load i32, i32* @EAP_SIM_SUBTYPE_CHALLENGE, align 4
  %13 = call %struct.eap_sim_msg* @eap_sim_msg_init(i32 %9, i32 %10, i32 %11, i32 %12)
  store %struct.eap_sim_msg* %13, %struct.eap_sim_msg** %5, align 8
  %14 = load %struct.eap_sim_data*, %struct.eap_sim_data** %3, align 8
  %15 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %22 = load i32, i32* @EAP_SIM_AT_RESULT_IND, align 4
  %23 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %21, i32 %22, i32 0, i32* null, i32 0)
  br label %24

24:                                               ; preds = %18, %2
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %28 = load i32, i32* @EAP_SIM_AT_MAC, align 4
  %29 = call i32 @eap_sim_msg_add_mac(%struct.eap_sim_msg* %27, i32 %28)
  %30 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %31 = load i32, i32* @EAP_TYPE_SIM, align 4
  %32 = load %struct.eap_sim_data*, %struct.eap_sim_data** %3, align 8
  %33 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.eap_sim_data*, %struct.eap_sim_data** %3, align 8
  %36 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = load %struct.eap_sim_data*, %struct.eap_sim_data** %3, align 8
  %40 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @EAP_SIM_SRES_LEN, align 4
  %43 = mul nsw i32 %41, %42
  %44 = call %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg* %30, i32 %31, i32 %34, i32* %38, i32 %43)
  ret %struct.wpabuf* %44
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.eap_sim_msg* @eap_sim_msg_init(i32, i32, i32, i32) #1

declare dso_local i32 @eap_sim_msg_add(%struct.eap_sim_msg*, i32, i32, i32*, i32) #1

declare dso_local i32 @eap_sim_msg_add_mac(%struct.eap_sim_msg*, i32) #1

declare dso_local %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
