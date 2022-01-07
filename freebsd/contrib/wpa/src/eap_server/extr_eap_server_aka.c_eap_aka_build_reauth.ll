; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_build_reauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_build_reauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i64, i32, i32 }
%struct.eap_aka_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.eap_sim_msg = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"EAP-AKA: Generating Re-authentication\00", align 1
@EAP_SIM_NONCE_S_LEN = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"EAP-AKA: NONCE_S\00", align 1
@EAP_TYPE_AKA_PRIME = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@EAP_AKA_SUBTYPE_REAUTHENTICATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"   AT_RESULT_IND\00", align 1
@EAP_SIM_AT_RESULT_IND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"   AT_MAC\00", align 1
@EAP_SIM_AT_MAC = common dso_local global i32 0, align 4
@EAP_SIM_MAC_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_aka_data*, i32)* @eap_aka_build_reauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_aka_build_reauth(%struct.eap_sm* %0, %struct.eap_aka_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_aka_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_sim_msg*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_aka_data* %1, %struct.eap_aka_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %13 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @EAP_SIM_NONCE_S_LEN, align 4
  %16 = call i64 @random_get_bytes(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %156

19:                                               ; preds = %3
  %20 = load i32, i32* @MSG_MSGDUMP, align 4
  %21 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %22 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @EAP_SIM_NONCE_S_LEN, align 4
  %25 = call i32 @wpa_hexdump_key(i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %27 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @EAP_TYPE_AKA_PRIME, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %19
  %32 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %33 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %36 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %39 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %42 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %45 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %48 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %51 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @eap_aka_prime_derive_keys_reauth(i32 %34, i32 %37, i32 %40, i32 %43, i32 %46, i32 %49, i32 %52)
  br label %93

54:                                               ; preds = %19
  %55 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %56 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %59 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %62 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %65 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %68 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @eap_sim_derive_keys(i32 %57, i32 %60, i32 %63, i32 %66, i32 %69)
  %71 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %72 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %75 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %78 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %81 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %84 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %87 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %90 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @eap_sim_derive_keys_reauth(i32 %73, i32 %76, i32 %79, i32 %82, i32 %85, i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %54, %31
  %94 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %97 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @EAP_AKA_SUBTYPE_REAUTHENTICATION, align 4
  %100 = call %struct.eap_sim_msg* @eap_sim_msg_init(i32 %94, i32 %95, i32 %98, i32 %99)
  store %struct.eap_sim_msg* %100, %struct.eap_sim_msg** %8, align 8
  %101 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %102 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %103 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %104 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %105 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %108 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @eap_aka_build_encr(%struct.eap_sm* %101, %struct.eap_aka_data* %102, %struct.eap_sim_msg* %103, i32 %106, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %93
  %113 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %114 = call i32 @eap_sim_msg_free(%struct.eap_sim_msg* %113)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %156

115:                                              ; preds = %93
  %116 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %117 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %118 = call i32 @eap_aka_add_checkcode(%struct.eap_aka_data* %116, %struct.eap_sim_msg* %117)
  %119 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %120 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %115
  %124 = load i32, i32* @MSG_DEBUG, align 4
  %125 = call i32 @wpa_printf(i32 %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %126 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %127 = load i32, i32* @EAP_SIM_AT_RESULT_IND, align 4
  %128 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %126, i32 %127, i32 0, i32* null, i32 0)
  br label %129

129:                                              ; preds = %123, %115
  %130 = load i32, i32* @MSG_DEBUG, align 4
  %131 = call i32 @wpa_printf(i32 %130, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %132 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %133 = load i32, i32* @EAP_SIM_AT_MAC, align 4
  %134 = call i32 @eap_sim_msg_add_mac(%struct.eap_sim_msg* %132, i32 %133)
  %135 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %136 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %137 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %140 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg* %135, i32 %138, i32 %141, i32* null, i32 0)
  store %struct.wpabuf* %142, %struct.wpabuf** %9, align 8
  %143 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %144 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %147 = call i64 @wpabuf_head_u8(%struct.wpabuf* %146)
  %148 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %149 = call i64 @wpabuf_len(%struct.wpabuf* %148)
  %150 = add nsw i64 %147, %149
  %151 = load i64, i64* @EAP_SIM_MAC_LEN, align 8
  %152 = sub nsw i64 %150, %151
  %153 = load i64, i64* @EAP_SIM_MAC_LEN, align 8
  %154 = call i32 @os_memcpy(i32 %145, i64 %152, i64 %153)
  %155 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  store %struct.wpabuf* %155, %struct.wpabuf** %4, align 8
  br label %156

156:                                              ; preds = %129, %112, %18
  %157 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %157
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @random_get_bytes(i32, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #1

declare dso_local i32 @eap_aka_prime_derive_keys_reauth(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @eap_sim_derive_keys(i32, i32, i32, i32, i32) #1

declare dso_local i32 @eap_sim_derive_keys_reauth(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.eap_sim_msg* @eap_sim_msg_init(i32, i32, i32, i32) #1

declare dso_local i64 @eap_aka_build_encr(%struct.eap_sm*, %struct.eap_aka_data*, %struct.eap_sim_msg*, i32, i32) #1

declare dso_local i32 @eap_sim_msg_free(%struct.eap_sim_msg*) #1

declare dso_local i32 @eap_aka_add_checkcode(%struct.eap_aka_data*, %struct.eap_sim_msg*) #1

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
