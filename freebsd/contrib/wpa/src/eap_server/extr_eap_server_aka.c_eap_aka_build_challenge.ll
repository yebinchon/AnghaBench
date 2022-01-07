; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_build_challenge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_build_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.eap_aka_data = type { i64, i32, i64, i32*, i64, i32*, i32* }
%struct.eap_sim_msg = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"EAP-AKA: Generating Challenge\00", align 1
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@EAP_AKA_SUBTYPE_CHALLENGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"   AT_RAND\00", align 1
@EAP_SIM_AT_RAND = common dso_local global i32 0, align 4
@EAP_AKA_RAND_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"   AT_AUTN\00", align 1
@EAP_SIM_AT_AUTN = common dso_local global i32 0, align 4
@EAP_AKA_AUTN_LEN = common dso_local global i64 0, align 8
@EAP_TYPE_AKA_PRIME = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"   AT_KDF\00", align 1
@EAP_SIM_AT_KDF = common dso_local global i32 0, align 4
@EAP_AKA_PRIME_KDF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"   AT_KDF_INPUT\00", align 1
@EAP_SIM_AT_KDF_INPUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"   AT_RESULT_IND\00", align 1
@EAP_SIM_AT_RESULT_IND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"   AT_MAC\00", align 1
@EAP_SIM_AT_MAC = common dso_local global i32 0, align 4
@EAP_AKA_BIDDING_FLAG_D = common dso_local global i64 0, align 8
@EAP_MAX_METHODS = common dso_local global i32 0, align 4
@EAP_SIM_AT_BIDDING = common dso_local global i32 0, align 4
@EAP_TYPE_AKA = common dso_local global i64 0, align 8
@EAP_TYPE_NONE = common dso_local global i64 0, align 8
@EAP_VENDOR_IETF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_aka_data*, i32)* @eap_aka_build_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_aka_build_challenge(%struct.eap_sm* %0, %struct.eap_aka_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_aka_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_sim_msg*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_aka_data* %1, %struct.eap_aka_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %14 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @EAP_AKA_SUBTYPE_CHALLENGE, align 4
  %17 = call %struct.eap_sim_msg* @eap_sim_msg_init(i32 %11, i32 %12, i64 %15, i32 %16)
  store %struct.eap_sim_msg* %17, %struct.eap_sim_msg** %8, align 8
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %21 = load i32, i32* @EAP_SIM_AT_RAND, align 4
  %22 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %23 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @EAP_AKA_RAND_LEN, align 8
  %26 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %20, i32 %21, i64 0, i32* %24, i64 %25)
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = call i32 @wpa_printf(i32 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %30 = load i32, i32* @EAP_SIM_AT_AUTN, align 4
  %31 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %32 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @EAP_AKA_AUTN_LEN, align 8
  %35 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %29, i32 %30, i64 0, i32* %33, i64 %34)
  %36 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %37 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @EAP_TYPE_AKA_PRIME, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %76

41:                                               ; preds = %3
  %42 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %43 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = call i32 @wpa_printf(i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %50 = load i32, i32* @EAP_SIM_AT_KDF, align 4
  %51 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %52 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %49, i32 %50, i64 %53, i32* null, i64 0)
  br label %55

55:                                               ; preds = %46, %41
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = call i32 @wpa_printf(i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %58 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %59 = load i32, i32* @EAP_SIM_AT_KDF, align 4
  %60 = load i64, i64* @EAP_AKA_PRIME_KDF, align 8
  %61 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %58, i32 %59, i64 %60, i32* null, i64 0)
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = call i32 @wpa_printf(i32 %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %64 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %65 = load i32, i32* @EAP_SIM_AT_KDF_INPUT, align 4
  %66 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %67 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %70 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %73 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %64, i32 %65, i64 %68, i32* %71, i64 %74)
  br label %76

76:                                               ; preds = %55, %3
  %77 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %78 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %79 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %80 = call i64 @eap_aka_build_encr(%struct.eap_sm* %77, %struct.eap_aka_data* %78, %struct.eap_sim_msg* %79, i32 0, i32* null)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %84 = call i32 @eap_sim_msg_free(%struct.eap_sim_msg* %83)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %113

85:                                               ; preds = %76
  %86 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %87 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %88 = call i32 @eap_aka_add_checkcode(%struct.eap_aka_data* %86, %struct.eap_sim_msg* %87)
  %89 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %90 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load i32, i32* @MSG_DEBUG, align 4
  %95 = call i32 @wpa_printf(i32 %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %96 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %97 = load i32, i32* @EAP_SIM_AT_RESULT_IND, align 4
  %98 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %96, i32 %97, i64 0, i32* null, i64 0)
  br label %99

99:                                               ; preds = %93, %85
  %100 = load i32, i32* @MSG_DEBUG, align 4
  %101 = call i32 @wpa_printf(i32 %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %102 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %103 = load i32, i32* @EAP_SIM_AT_MAC, align 4
  %104 = call i32 @eap_sim_msg_add_mac(%struct.eap_sim_msg* %102, i32 %103)
  %105 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %106 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %107 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %110 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg* %105, i64 %108, i32 %111, i32* null, i32 0)
  store %struct.wpabuf* %112, %struct.wpabuf** %4, align 8
  br label %113

113:                                              ; preds = %99, %82
  %114 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %114
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.eap_sim_msg* @eap_sim_msg_init(i32, i32, i64, i32) #1

declare dso_local i32 @eap_sim_msg_add(%struct.eap_sim_msg*, i32, i64, i32*, i64) #1

declare dso_local i64 @eap_aka_build_encr(%struct.eap_sm*, %struct.eap_aka_data*, %struct.eap_sim_msg*, i32, i32*) #1

declare dso_local i32 @eap_sim_msg_free(%struct.eap_sim_msg*) #1

declare dso_local i32 @eap_aka_add_checkcode(%struct.eap_aka_data*, %struct.eap_sim_msg*) #1

declare dso_local i32 @eap_sim_msg_add_mac(%struct.eap_sim_msg*, i32) #1

declare dso_local %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg*, i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
