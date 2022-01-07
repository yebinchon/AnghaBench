; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_build_reauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_build_reauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i64, i32, i32 }
%struct.eap_sim_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.eap_sim_msg = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"EAP-SIM: Generating Re-authentication\00", align 1
@EAP_SIM_NONCE_S_LEN = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"EAP-SIM: NONCE_S\00", align 1
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@EAP_TYPE_SIM = common dso_local global i32 0, align 4
@EAP_SIM_SUBTYPE_REAUTHENTICATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"   AT_RESULT_IND\00", align 1
@EAP_SIM_AT_RESULT_IND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"   AT_MAC\00", align 1
@EAP_SIM_AT_MAC = common dso_local global i32 0, align 4
@EAP_SIM_MAC_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_sim_data*, i32)* @eap_sim_build_reauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sim_build_reauth(%struct.eap_sm* %0, %struct.eap_sim_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_sim_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_sim_msg*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_sim_data* %1, %struct.eap_sim_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %13 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @EAP_SIM_NONCE_S_LEN, align 4
  %16 = call i64 @random_get_bytes(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %119

19:                                               ; preds = %3
  %20 = load i32, i32* @MSG_MSGDUMP, align 4
  %21 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %22 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @EAP_SIM_NONCE_S_LEN, align 4
  %25 = call i32 @wpa_hexdump_key(i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %27 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %30 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %33 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %36 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %39 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @eap_sim_derive_keys(i32 %28, i32 %31, i32 %34, i32 %37, i32 %40)
  %42 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %43 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %46 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %49 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %52 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %55 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %58 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %61 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @eap_sim_derive_keys_reauth(i32 %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 %59, i32 %62)
  %64 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @EAP_TYPE_SIM, align 4
  %67 = load i32, i32* @EAP_SIM_SUBTYPE_REAUTHENTICATION, align 4
  %68 = call %struct.eap_sim_msg* @eap_sim_msg_init(i32 %64, i32 %65, i32 %66, i32 %67)
  store %struct.eap_sim_msg* %68, %struct.eap_sim_msg** %8, align 8
  %69 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %70 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %71 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %72 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %73 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %76 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @eap_sim_build_encr(%struct.eap_sm* %69, %struct.eap_sim_data* %70, %struct.eap_sim_msg* %71, i32 %74, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %19
  %81 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %82 = call i32 @eap_sim_msg_free(%struct.eap_sim_msg* %81)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %119

83:                                               ; preds = %19
  %84 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %85 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = call i32 @wpa_printf(i32 %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %91 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %92 = load i32, i32* @EAP_SIM_AT_RESULT_IND, align 4
  %93 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %91, i32 %92, i32 0, i32* null, i32 0)
  br label %94

94:                                               ; preds = %88, %83
  %95 = load i32, i32* @MSG_DEBUG, align 4
  %96 = call i32 @wpa_printf(i32 %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %97 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %98 = load i32, i32* @EAP_SIM_AT_MAC, align 4
  %99 = call i32 @eap_sim_msg_add_mac(%struct.eap_sim_msg* %97, i32 %98)
  %100 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %101 = load i32, i32* @EAP_TYPE_SIM, align 4
  %102 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %103 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg* %100, i32 %101, i32 %104, i32* null, i32 0)
  store %struct.wpabuf* %105, %struct.wpabuf** %9, align 8
  %106 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %107 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %110 = call i64 @wpabuf_head_u8(%struct.wpabuf* %109)
  %111 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %112 = call i64 @wpabuf_len(%struct.wpabuf* %111)
  %113 = add nsw i64 %110, %112
  %114 = load i64, i64* @EAP_SIM_MAC_LEN, align 8
  %115 = sub nsw i64 %113, %114
  %116 = load i64, i64* @EAP_SIM_MAC_LEN, align 8
  %117 = call i32 @os_memcpy(i32 %108, i64 %115, i64 %116)
  %118 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  store %struct.wpabuf* %118, %struct.wpabuf** %4, align 8
  br label %119

119:                                              ; preds = %94, %80, %18
  %120 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %120
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @random_get_bytes(i32, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #1

declare dso_local i32 @eap_sim_derive_keys(i32, i32, i32, i32, i32) #1

declare dso_local i32 @eap_sim_derive_keys_reauth(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.eap_sim_msg* @eap_sim_msg_init(i32, i32, i32, i32) #1

declare dso_local i64 @eap_sim_build_encr(%struct.eap_sm*, %struct.eap_sim_data*, %struct.eap_sim_msg*, i32, i32) #1

declare dso_local i32 @eap_sim_msg_free(%struct.eap_sim_msg*) #1

declare dso_local i32 @eap_sim_msg_add(%struct.eap_sim_msg*, i32, i32, i32*, i32) #1

declare dso_local i32 @eap_sim_msg_add_mac(%struct.eap_sim_msg*, i32) #1

declare dso_local %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg*, i32, i32, i32*, i32) #1

declare dso_local i32 @os_memcpy(i32, i64, i64) #1

declare dso_local i64 @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
