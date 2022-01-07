; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_build_challenge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_build_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i64 }
%struct.eap_sim_data = type { i32, i32, i32, i64 }
%struct.eap_sim_msg = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"EAP-SIM: Generating Challenge\00", align 1
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@EAP_TYPE_SIM = common dso_local global i32 0, align 4
@EAP_SIM_SUBTYPE_CHALLENGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"   AT_RAND\00", align 1
@EAP_SIM_AT_RAND = common dso_local global i32 0, align 4
@GSM_RAND_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"   AT_RESULT_IND\00", align 1
@EAP_SIM_AT_RESULT_IND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"   AT_MAC\00", align 1
@EAP_SIM_AT_MAC = common dso_local global i32 0, align 4
@EAP_SIM_NONCE_MT_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_sim_data*, i32)* @eap_sim_build_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sim_build_challenge(%struct.eap_sm* %0, %struct.eap_sim_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_sim_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_sim_msg*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_sim_data* %1, %struct.eap_sim_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @EAP_TYPE_SIM, align 4
  %14 = load i32, i32* @EAP_SIM_SUBTYPE_CHALLENGE, align 4
  %15 = call %struct.eap_sim_msg* @eap_sim_msg_init(i32 %11, i32 %12, i32 %13, i32 %14)
  store %struct.eap_sim_msg* %15, %struct.eap_sim_msg** %8, align 8
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %19 = load i32, i32* @EAP_SIM_AT_RAND, align 4
  %20 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %21 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %25 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GSM_RAND_LEN, align 4
  %28 = mul nsw i32 %26, %27
  %29 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %18, i32 %19, i32 0, i32* %23, i32 %28)
  %30 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %31 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %32 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %33 = call i64 @eap_sim_build_encr(%struct.eap_sm* %30, %struct.eap_sim_data* %31, %struct.eap_sim_msg* %32, i32 0, i32* null)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %37 = call i32 @eap_sim_msg_free(%struct.eap_sim_msg* %36)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %65

38:                                               ; preds = %3
  %39 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %40 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = call i32 @wpa_printf(i32 %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %47 = load i32, i32* @EAP_SIM_AT_RESULT_IND, align 4
  %48 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %46, i32 %47, i32 0, i32* null, i32 0)
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = call i32 @wpa_printf(i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %52 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %53 = load i32, i32* @EAP_SIM_AT_MAC, align 4
  %54 = call i32 @eap_sim_msg_add_mac(%struct.eap_sim_msg* %52, i32 %53)
  %55 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %56 = load i32, i32* @EAP_TYPE_SIM, align 4
  %57 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %58 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %61 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @EAP_SIM_NONCE_MT_LEN, align 4
  %64 = call %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg* %55, i32 %56, i32 %59, i32 %62, i32 %63)
  store %struct.wpabuf* %64, %struct.wpabuf** %4, align 8
  br label %65

65:                                               ; preds = %49, %35
  %66 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %66
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.eap_sim_msg* @eap_sim_msg_init(i32, i32, i32, i32) #1

declare dso_local i32 @eap_sim_msg_add(%struct.eap_sim_msg*, i32, i32, i32*, i32) #1

declare dso_local i64 @eap_sim_build_encr(%struct.eap_sm*, %struct.eap_sim_data*, %struct.eap_sim_msg*, i32, i32*) #1

declare dso_local i32 @eap_sim_msg_free(%struct.eap_sim_msg*) #1

declare dso_local i32 @eap_sim_msg_add_mac(%struct.eap_sim_msg*, i32) #1

declare dso_local %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
