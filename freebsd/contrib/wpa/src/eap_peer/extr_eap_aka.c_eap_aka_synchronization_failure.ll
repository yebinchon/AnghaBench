; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_synchronization_failure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_synchronization_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_aka_data = type { i32, i32, i64, i64 }
%struct.eap_sim_attrs = type { i64, i32* }
%struct.eap_sim_msg = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Generating EAP-AKA Synchronization-Failure (id=%d)\00", align 1
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@EAP_AKA_SUBTYPE_SYNCHRONIZATION_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"   AT_AUTS\00", align 1
@EAP_SIM_AT_AUTS = common dso_local global i32 0, align 4
@EAP_AKA_AUTS_LEN = common dso_local global i32 0, align 4
@EAP_TYPE_AKA_PRIME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"   AT_KDF\00", align 1
@EAP_SIM_AT_KDF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_aka_data*, i32, %struct.eap_sim_attrs*)* @eap_aka_synchronization_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_aka_synchronization_failure(%struct.eap_aka_data* %0, i32 %1, %struct.eap_sim_attrs* %2) #0 {
  %4 = alloca %struct.eap_aka_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_sim_attrs*, align 8
  %7 = alloca %struct.eap_sim_msg*, align 8
  %8 = alloca i64, align 8
  store %struct.eap_aka_data* %0, %struct.eap_aka_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.eap_sim_attrs* %2, %struct.eap_sim_attrs** %6, align 8
  %9 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %10 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %12 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i32, i8*, ...) @wpa_printf(i32 %13, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %19 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @EAP_AKA_SUBTYPE_SYNCHRONIZATION_FAILURE, align 4
  %22 = call %struct.eap_sim_msg* @eap_sim_msg_init(i32 %16, i32 %17, i32 %20, i32 %21)
  store %struct.eap_sim_msg* %22, %struct.eap_sim_msg** %7, align 8
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %26 = load i32, i32* @EAP_SIM_AT_AUTS, align 4
  %27 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %28 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @EAP_AKA_AUTS_LEN, align 4
  %31 = call i32 @eap_sim_msg_add_full(%struct.eap_sim_msg* %25, i32 %26, i32 %29, i32 %30)
  %32 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %33 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @EAP_TYPE_AKA_PRIME, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %6, align 8
  %41 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %48 = load i32, i32* @EAP_SIM_AT_KDF, align 4
  %49 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %6, align 8
  %50 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %47, i32 %48, i32 %54, i32* null, i32 0)
  br label %56

56:                                               ; preds = %44
  %57 = load i64, i64* %8, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %8, align 8
  br label %38

59:                                               ; preds = %38
  br label %60

60:                                               ; preds = %59, %3
  %61 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %7, align 8
  %62 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %63 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg* %61, i32 %64, i32* null, i32* null, i32 0)
  ret %struct.wpabuf* %65
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.eap_sim_msg* @eap_sim_msg_init(i32, i32, i32, i32) #1

declare dso_local i32 @eap_sim_msg_add_full(%struct.eap_sim_msg*, i32, i32, i32) #1

declare dso_local i32 @eap_sim_msg_add(%struct.eap_sim_msg*, i32, i32, i32*, i32) #1

declare dso_local %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
