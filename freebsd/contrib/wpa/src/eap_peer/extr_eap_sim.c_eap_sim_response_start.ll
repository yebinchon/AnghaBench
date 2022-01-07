; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_response_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_response_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_sim_data = type { i32, i64*, i64, i64*, i64, i64*, i64 }
%struct.eap_sim_msg = type { i32 }

@ANY_ID = common dso_local global i32 0, align 4
@FULLAUTH_ID = common dso_local global i32 0, align 4
@CLEAR_REAUTH_ID = common dso_local global i32 0, align 4
@NO_ID_REQ = common dso_local global i32 0, align 4
@CLEAR_PSEUDONYM = common dso_local global i32 0, align 4
@CLEAR_EAP_ID = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Generating EAP-SIM Start (id=%d)\00", align 1
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@EAP_TYPE_SIM = common dso_local global i32 0, align 4
@EAP_SIM_SUBTYPE_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"   AT_NONCE_MT\00", align 1
@EAP_SIM_NONCE_MT_LEN = common dso_local global i64 0, align 8
@EAP_SIM_AT_NONCE_MT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"   AT_SELECTED_VERSION %d\00", align 1
@EAP_SIM_AT_SELECTED_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"   AT_IDENTITY\00", align 1
@EAP_SIM_AT_IDENTITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_sim_data*, i64, i32)* @eap_sim_response_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sim_response_start(%struct.eap_sm* %0, %struct.eap_sim_data* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_sim_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.eap_sim_msg*, align 8
  %12 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_sim_data* %1, %struct.eap_sim_data** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i64* null, i64** %9, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %14 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @ANY_ID, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %4
  %19 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %20 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %25 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  store i64* %26, i64** %9, align 8
  %27 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %28 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  %30 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %31 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %104

32:                                               ; preds = %18, %4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @ANY_ID, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @FULLAUTH_ID, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %36, %32
  %41 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %42 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %41, i32 0, i32 3
  %43 = load i64*, i64** %42, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %45, label %65

45:                                               ; preds = %40
  %46 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %47 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %46, i32 0, i32 3
  %48 = load i64*, i64** %47, align 8
  %49 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %50 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @eap_sim_anonymous_username(i64* %48, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %45
  %55 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %56 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %55, i32 0, i32 3
  %57 = load i64*, i64** %56, align 8
  store i64* %57, i64** %9, align 8
  %58 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %59 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %10, align 8
  %61 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %62 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %63 = load i32, i32* @CLEAR_REAUTH_ID, align 4
  %64 = call i32 @eap_sim_clear_identities(%struct.eap_sm* %61, %struct.eap_sim_data* %62, i32 %63)
  br label %103

65:                                               ; preds = %45, %40, %36
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @NO_ID_REQ, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %102

69:                                               ; preds = %65
  %70 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %71 = call i64* @eap_get_config_identity(%struct.eap_sm* %70, i64* %10)
  store i64* %71, i64** %9, align 8
  %72 = load i64*, i64** %9, align 8
  %73 = icmp ne i64* %72, null
  br i1 %73, label %74, label %101

74:                                               ; preds = %69
  %75 = load i32, i32* @CLEAR_PSEUDONYM, align 4
  %76 = load i32, i32* @CLEAR_REAUTH_ID, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %12, align 4
  %78 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %79 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %78, i32 0, i32 3
  %80 = load i64*, i64** %79, align 8
  %81 = icmp ne i64* %80, null
  br i1 %81, label %82, label %96

82:                                               ; preds = %74
  %83 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %84 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %83, i32 0, i32 3
  %85 = load i64*, i64** %84, align 8
  %86 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %87 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @eap_sim_anonymous_username(i64* %85, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %82
  %92 = load i32, i32* @CLEAR_PSEUDONYM, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %12, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %91, %82, %74
  %97 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %98 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @eap_sim_clear_identities(%struct.eap_sm* %97, %struct.eap_sim_data* %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %69
  br label %102

102:                                              ; preds = %101, %65
  br label %103

103:                                              ; preds = %102, %54
  br label %104

104:                                              ; preds = %103, %23
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @NO_ID_REQ, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %110 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %111 = load i32, i32* @CLEAR_EAP_ID, align 4
  %112 = call i32 @eap_sim_clear_identities(%struct.eap_sm* %109, %struct.eap_sim_data* %110, i32 %111)
  br label %113

113:                                              ; preds = %108, %104
  %114 = load i32, i32* @MSG_DEBUG, align 4
  %115 = load i64, i64* %7, align 8
  %116 = call i32 @wpa_printf(i32 %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %115)
  %117 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %118 = load i64, i64* %7, align 8
  %119 = load i32, i32* @EAP_TYPE_SIM, align 4
  %120 = load i32, i32* @EAP_SIM_SUBTYPE_START, align 4
  %121 = call %struct.eap_sim_msg* @eap_sim_msg_init(i32 %117, i64 %118, i32 %119, i32 %120)
  store %struct.eap_sim_msg* %121, %struct.eap_sim_msg** %11, align 8
  %122 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %123 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %151, label %126

126:                                              ; preds = %113
  %127 = load i32, i32* @MSG_DEBUG, align 4
  %128 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %129 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %128, i32 0, i32 5
  %130 = load i64*, i64** %129, align 8
  %131 = load i64, i64* @EAP_SIM_NONCE_MT_LEN, align 8
  %132 = call i32 @wpa_hexdump(i32 %127, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64* %130, i64 %131)
  %133 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %11, align 8
  %134 = load i32, i32* @EAP_SIM_AT_NONCE_MT, align 4
  %135 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %136 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %135, i32 0, i32 5
  %137 = load i64*, i64** %136, align 8
  %138 = load i64, i64* @EAP_SIM_NONCE_MT_LEN, align 8
  %139 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %133, i32 %134, i64 0, i64* %137, i64 %138)
  %140 = load i32, i32* @MSG_DEBUG, align 4
  %141 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %142 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @wpa_printf(i32 %140, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %143)
  %145 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %11, align 8
  %146 = load i32, i32* @EAP_SIM_AT_SELECTED_VERSION, align 4
  %147 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %148 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %147, i32 0, i32 6
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %145, i32 %146, i64 %149, i64* null, i64 0)
  br label %151

151:                                              ; preds = %126, %113
  %152 = load i64*, i64** %9, align 8
  %153 = icmp ne i64* %152, null
  br i1 %153, label %154, label %165

154:                                              ; preds = %151
  %155 = load i32, i32* @MSG_DEBUG, align 4
  %156 = load i64*, i64** %9, align 8
  %157 = load i64, i64* %10, align 8
  %158 = call i32 @wpa_hexdump_ascii(i32 %155, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64* %156, i64 %157)
  %159 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %11, align 8
  %160 = load i32, i32* @EAP_SIM_AT_IDENTITY, align 4
  %161 = load i64, i64* %10, align 8
  %162 = load i64*, i64** %9, align 8
  %163 = load i64, i64* %10, align 8
  %164 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %159, i32 %160, i64 %161, i64* %162, i64 %163)
  br label %165

165:                                              ; preds = %154, %151
  %166 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %11, align 8
  %167 = load i32, i32* @EAP_TYPE_SIM, align 4
  %168 = call %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg* %166, i32 %167, i32* null, i32* null, i32 0)
  ret %struct.wpabuf* %168
}

declare dso_local i64 @eap_sim_anonymous_username(i64*, i64) #1

declare dso_local i32 @eap_sim_clear_identities(%struct.eap_sm*, %struct.eap_sim_data*, i32) #1

declare dso_local i64* @eap_get_config_identity(%struct.eap_sm*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

declare dso_local %struct.eap_sim_msg* @eap_sim_msg_init(i32, i64, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #1

declare dso_local i32 @eap_sim_msg_add(%struct.eap_sim_msg*, i32, i64, i64*, i64) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i64*, i64) #1

declare dso_local %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
