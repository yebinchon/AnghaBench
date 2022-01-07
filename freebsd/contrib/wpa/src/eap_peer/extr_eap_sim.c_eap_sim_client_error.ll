; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_client_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_client_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sim_data = type { i64, i64 }
%struct.eap_sim_msg = type { i32 }

@FAILURE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"EAP-SIM: Send Client-Error (error code %d)\00", align 1
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@EAP_TYPE_SIM = common dso_local global i32 0, align 4
@EAP_SIM_SUBTYPE_CLIENT_ERROR = common dso_local global i32 0, align 4
@EAP_SIM_AT_CLIENT_ERROR_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sim_data*, i32, i32)* @eap_sim_client_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.eap_sim_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_sim_msg*, align 8
  store %struct.eap_sim_data* %0, %struct.eap_sim_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.eap_sim_data*, %struct.eap_sim_data** %4, align 8
  %9 = load i32, i32* @FAILURE, align 4
  %10 = call i32 @eap_sim_state(%struct.eap_sim_data* %8, i32 %9)
  %11 = load %struct.eap_sim_data*, %struct.eap_sim_data** %4, align 8
  %12 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.eap_sim_data*, %struct.eap_sim_data** %4, align 8
  %14 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @EAP_TYPE_SIM, align 4
  %21 = load i32, i32* @EAP_SIM_SUBTYPE_CLIENT_ERROR, align 4
  %22 = call %struct.eap_sim_msg* @eap_sim_msg_init(i32 %18, i32 %19, i32 %20, i32 %21)
  store %struct.eap_sim_msg* %22, %struct.eap_sim_msg** %7, align 8
  %23 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %24 = load i32, i32* @EAP_SIM_AT_CLIENT_ERROR_CODE, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %23, i32 %24, i32 %25, i32* null, i32 0)
  %27 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %28 = load i32, i32* @EAP_TYPE_SIM, align 4
  %29 = call %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg* %27, i32 %28, i32* null, i32* null, i32 0)
  ret %struct.wpabuf* %29
}

declare dso_local i32 @eap_sim_state(%struct.eap_sim_data*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local %struct.eap_sim_msg* @eap_sim_msg_init(i32, i32, i32, i32) #1

declare dso_local i32 @eap_sim_msg_add(%struct.eap_sim_msg*, i32, i32, i32*, i32) #1

declare dso_local %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
