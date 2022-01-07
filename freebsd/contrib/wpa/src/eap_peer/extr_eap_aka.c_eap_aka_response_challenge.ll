; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_response_challenge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_response_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_aka_data = type { i32, i32, i32, i64, i32* }
%struct.eap_sim_msg = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Generating EAP-AKA Challenge (id=%d)\00", align 1
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@EAP_AKA_SUBTYPE_CHALLENGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"   AT_RES\00", align 1
@EAP_SIM_AT_RES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"   AT_RESULT_IND\00", align 1
@EAP_SIM_AT_RESULT_IND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"   AT_MAC\00", align 1
@EAP_SIM_AT_MAC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_aka_data*, i32)* @eap_aka_response_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_aka_response_challenge(%struct.eap_aka_data* %0, i32 %1) #0 {
  %3 = alloca %struct.eap_aka_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sim_msg*, align 8
  store %struct.eap_aka_data* %0, %struct.eap_aka_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @MSG_DEBUG, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 (i32, i8*, ...) @wpa_printf(i32 %6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.eap_aka_data*, %struct.eap_aka_data** %3, align 8
  %12 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @EAP_AKA_SUBTYPE_CHALLENGE, align 4
  %15 = call %struct.eap_sim_msg* @eap_sim_msg_init(i32 %9, i32 %10, i32 %13, i32 %14)
  store %struct.eap_sim_msg* %15, %struct.eap_sim_msg** %5, align 8
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %19 = load i32, i32* @EAP_SIM_AT_RES, align 4
  %20 = load %struct.eap_aka_data*, %struct.eap_aka_data** %3, align 8
  %21 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %22, 8
  %24 = load %struct.eap_aka_data*, %struct.eap_aka_data** %3, align 8
  %25 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.eap_aka_data*, %struct.eap_aka_data** %3, align 8
  %28 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %18, i32 %19, i32 %23, i32* %26, i32 %29)
  %31 = load %struct.eap_aka_data*, %struct.eap_aka_data** %3, align 8
  %32 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %33 = call i32 @eap_aka_add_checkcode(%struct.eap_aka_data* %31, %struct.eap_sim_msg* %32)
  %34 = load %struct.eap_aka_data*, %struct.eap_aka_data** %3, align 8
  %35 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %2
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %42 = load i32, i32* @EAP_SIM_AT_RESULT_IND, align 4
  %43 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %41, i32 %42, i32 0, i32* null, i32 0)
  br label %44

44:                                               ; preds = %38, %2
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %47 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %48 = load i32, i32* @EAP_SIM_AT_MAC, align 4
  %49 = call i32 @eap_sim_msg_add_mac(%struct.eap_sim_msg* %47, i32 %48)
  %50 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %5, align 8
  %51 = load %struct.eap_aka_data*, %struct.eap_aka_data** %3, align 8
  %52 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.eap_aka_data*, %struct.eap_aka_data** %3, align 8
  %55 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg* %50, i32 %53, i32 %56, i32* bitcast ([1 x i8]* @.str.4 to i32*), i32 0)
  ret %struct.wpabuf* %57
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.eap_sim_msg* @eap_sim_msg_init(i32, i32, i32, i32) #1

declare dso_local i32 @eap_sim_msg_add(%struct.eap_sim_msg*, i32, i32, i32*, i32) #1

declare dso_local i32 @eap_aka_add_checkcode(%struct.eap_aka_data*, %struct.eap_sim_msg*) #1

declare dso_local i32 @eap_sim_msg_add_mac(%struct.eap_sim_msg*, i32) #1

declare dso_local %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
