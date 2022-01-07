; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_process_reauthentication.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_process_reauthentication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_aka_data = type { i32, i64, i64, i32, i64, i32*, i64, i64, i64, i32, i32, i32, i64, i32*, i32, i64, i32*, i64, i32, i32* }
%struct.wpabuf = type { i32 }
%struct.eap_sim_attrs = type { i64, i32*, i64, i32*, i32, i32*, i32*, i32, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"EAP-AKA: subtype Reauthentication\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"EAP-AKA: Invalid AT_CHECKCODE in the message\00", align 1
@EAP_AKA_UNABLE_TO_PROCESS_PACKET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"EAP-AKA: Server is trying reauthentication, but no reauth_id available\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"EAP-AKA: Reauthentication did not have valid AT_MAC\00", align 1
@EAP_SIM_MAC_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"EAP-AKA: Server MAC\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"EAP-AKA: Reauthentication message did not include encrypted data\00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"EAP-AKA: Failed to parse encrypted data from reauthentication message\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"EAP-AKA: (encr) No%s%s in reauth packet\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c" AT_NONCE_S\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c" AT_COUNTER\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"EAP-AKA: (encr) Invalid counter (%d <= %d)\00", align 1
@EAP_SIM_NONCE_S_LEN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"EAP-AKA: (encr) AT_NONCE_S\00", align 1
@EAP_TYPE_AKA_PRIME = common dso_local global i64 0, align 8
@CLEAR_REAUTH_ID = common dso_local global i32 0, align 4
@CLEAR_EAP_ID = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i64 0, align 8
@RESULT_SUCCESS = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@EAP_AKA_MAX_FAST_REAUTHS = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [67 x i8] c"EAP-AKA: Maximum number of fast reauths performed - force fullauth\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_aka_data*, i32, %struct.wpabuf*, %struct.eap_sim_attrs*)* @eap_aka_process_reauthentication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_aka_process_reauthentication(%struct.eap_sm* %0, %struct.eap_aka_data* %1, i32 %2, %struct.wpabuf* %3, %struct.eap_sim_attrs* %4) #0 {
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_aka_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca %struct.eap_sim_attrs*, align 8
  %12 = alloca %struct.eap_sim_attrs, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_aka_data* %1, %struct.eap_aka_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.wpabuf* %3, %struct.wpabuf** %10, align 8
  store %struct.eap_sim_attrs* %4, %struct.eap_sim_attrs** %11, align 8
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = call i32 (i32, i8*, ...) @wpa_printf(i32 %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %18 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %17, i32 0, i32 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %5
  %22 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %23 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %24 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %23, i32 0, i32 8
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %27 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @eap_aka_verify_checkcode(%struct.eap_aka_data* %22, i64 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %21
  %32 = load i32, i32* @MSG_WARNING, align 4
  %33 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @EAP_AKA_UNABLE_TO_PROCESS_PACKET, align 4
  %37 = call %struct.wpabuf* @eap_aka_client_error(%struct.eap_aka_data* %34, i32 %35, i32 %36)
  store %struct.wpabuf* %37, %struct.wpabuf** %6, align 8
  br label %336

38:                                               ; preds = %21, %5
  %39 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %40 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %39, i32 0, i32 13
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* @MSG_WARNING, align 4
  %45 = call i32 (i32, i8*, ...) @wpa_printf(i32 %44, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @EAP_AKA_UNABLE_TO_PROCESS_PACKET, align 4
  %49 = call %struct.wpabuf* @eap_aka_client_error(%struct.eap_aka_data* %46, i32 %47, i32 %48)
  store %struct.wpabuf* %49, %struct.wpabuf** %6, align 8
  br label %336

50:                                               ; preds = %38
  %51 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %52 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %54 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %55 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %56 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %55, i32 0, i32 6
  %57 = load i32*, i32** %56, align 8
  %58 = call i64 @eap_aka_verify_mac(%struct.eap_aka_data* %53, %struct.wpabuf* %54, i32* %57, i32* bitcast ([1 x i8]* @.str.3 to i32*), i32 0)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %50
  %61 = load i32, i32* @MSG_WARNING, align 4
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %63 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @EAP_AKA_UNABLE_TO_PROCESS_PACKET, align 4
  %66 = call %struct.wpabuf* @eap_aka_client_error(%struct.eap_aka_data* %63, i32 %64, i32 %65)
  store %struct.wpabuf* %66, %struct.wpabuf** %6, align 8
  br label %336

67:                                               ; preds = %50
  %68 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %69 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %68, i32 0, i32 19
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %72 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %71, i32 0, i32 6
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @EAP_SIM_MAC_LEN, align 4
  %75 = call i32 @os_memcpy(i32* %70, i32* %73, i32 %74)
  %76 = load i32, i32* @MSG_DEBUG, align 4
  %77 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %78 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %77, i32 0, i32 19
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* @EAP_SIM_MAC_LEN, align 4
  %81 = call i32 @wpa_hexdump(i32 %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32* %79, i32 %80)
  %82 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %83 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %82, i32 0, i32 5
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %67
  %87 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %88 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %86, %67
  %92 = load i32, i32* @MSG_WARNING, align 4
  %93 = call i32 (i32, i8*, ...) @wpa_printf(i32 %92, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0))
  %94 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @EAP_AKA_UNABLE_TO_PROCESS_PACKET, align 4
  %97 = call %struct.wpabuf* @eap_aka_client_error(%struct.eap_aka_data* %94, i32 %95, i32 %96)
  store %struct.wpabuf* %97, %struct.wpabuf** %6, align 8
  br label %336

98:                                               ; preds = %86
  %99 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %100 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %99, i32 0, i32 18
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %103 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %102, i32 0, i32 5
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %106 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %109 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = call i32* @eap_sim_parse_encr(i32 %101, i32* %104, i32 %107, i32* %110, %struct.eap_sim_attrs* %12, i32 0)
  store i32* %111, i32** %13, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %121

114:                                              ; preds = %98
  %115 = load i32, i32* @MSG_WARNING, align 4
  %116 = call i32 (i32, i8*, ...) @wpa_printf(i32 %115, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0))
  %117 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @EAP_AKA_UNABLE_TO_PROCESS_PACKET, align 4
  %120 = call %struct.wpabuf* @eap_aka_client_error(%struct.eap_aka_data* %117, i32 %118, i32 %119)
  store %struct.wpabuf* %120, %struct.wpabuf** %6, align 8
  br label %336

121:                                              ; preds = %98
  %122 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %12, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %12, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %149

129:                                              ; preds = %125, %121
  %130 = load i32, i32* @MSG_INFO, align 4
  %131 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %12, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %137 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %12, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp slt i64 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %142 = call i32 (i32, i8*, ...) @wpa_printf(i32 %130, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8* %136, i8* %141)
  %143 = load i32*, i32** %13, align 8
  %144 = call i32 @os_free(i32* %143)
  %145 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @EAP_AKA_UNABLE_TO_PROCESS_PACKET, align 4
  %148 = call %struct.wpabuf* @eap_aka_client_error(%struct.eap_aka_data* %145, i32 %146, i32 %147)
  store %struct.wpabuf* %148, %struct.wpabuf** %6, align 8
  br label %336

149:                                              ; preds = %125
  %150 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %12, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %12, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %157 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ule i64 %155, %158
  br i1 %159, label %160, label %198

160:                                              ; preds = %153, %149
  %161 = load i32, i32* @MSG_INFO, align 4
  %162 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %12, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %165 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = call i32 (i32, i8*, ...) @wpa_printf(i32 %161, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i64 %163, i64 %166)
  %168 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %12, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %171 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %170, i32 0, i32 17
  store i64 %169, i64* %171, align 8
  %172 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %173 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %172, i32 0, i32 16
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @os_free(i32* %174)
  %176 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %177 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %176, i32 0, i32 13
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %180 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %179, i32 0, i32 16
  store i32* %178, i32** %180, align 8
  %181 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %182 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %181, i32 0, i32 12
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %185 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %184, i32 0, i32 15
  store i64 %183, i64* %185, align 8
  %186 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %187 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %186, i32 0, i32 13
  store i32* null, i32** %187, align 8
  %188 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %189 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %188, i32 0, i32 12
  store i64 0, i64* %189, align 8
  %190 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %191 = load i32, i32* %9, align 4
  %192 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %12, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = call %struct.wpabuf* @eap_aka_response_reauth(%struct.eap_aka_data* %190, i32 %191, i32 1, i32* %193)
  store %struct.wpabuf* %194, %struct.wpabuf** %14, align 8
  %195 = load i32*, i32** %13, align 8
  %196 = call i32 @os_free(i32* %195)
  %197 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  store %struct.wpabuf* %197, %struct.wpabuf** %6, align 8
  br label %336

198:                                              ; preds = %153
  %199 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %12, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %202 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %201, i32 0, i32 1
  store i64 %200, i64* %202, align 8
  %203 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %204 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %203, i32 0, i32 5
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %12, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* @EAP_SIM_NONCE_S_LEN, align 4
  %209 = call i32 @os_memcpy(i32* %205, i32* %207, i32 %208)
  %210 = load i32, i32* @MSG_DEBUG, align 4
  %211 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %212 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %211, i32 0, i32 5
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* @EAP_SIM_NONCE_S_LEN, align 4
  %215 = call i32 @wpa_hexdump(i32 %210, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32* %213, i32 %214)
  %216 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %217 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @EAP_TYPE_AKA_PRIME, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %244

221:                                              ; preds = %198
  %222 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %223 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %222, i32 0, i32 14
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %226 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %229 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %228, i32 0, i32 13
  %230 = load i32*, i32** %229, align 8
  %231 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %232 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %231, i32 0, i32 12
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %235 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %234, i32 0, i32 5
  %236 = load i32*, i32** %235, align 8
  %237 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %238 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %237, i32 0, i32 10
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %241 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %240, i32 0, i32 9
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @eap_aka_prime_derive_keys_reauth(i32 %224, i64 %227, i32* %230, i64 %233, i32* %236, i32 %239, i32 %242)
  br label %267

244:                                              ; preds = %198
  %245 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %246 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %249 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %248, i32 0, i32 13
  %250 = load i32*, i32** %249, align 8
  %251 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %252 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %251, i32 0, i32 12
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %255 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %254, i32 0, i32 5
  %256 = load i32*, i32** %255, align 8
  %257 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %258 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %257, i32 0, i32 11
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %261 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %260, i32 0, i32 10
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %264 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %263, i32 0, i32 9
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @eap_sim_derive_keys_reauth(i64 %247, i32* %250, i64 %253, i32* %256, i32 %259, i32 %262, i32 %265)
  br label %267

267:                                              ; preds = %244, %221
  %268 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %269 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %270 = load i32, i32* @CLEAR_REAUTH_ID, align 4
  %271 = load i32, i32* @CLEAR_EAP_ID, align 4
  %272 = or i32 %270, %271
  %273 = call i32 @eap_aka_clear_identities(%struct.eap_sm* %268, %struct.eap_aka_data* %269, i32 %272)
  %274 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %275 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %276 = call i32 @eap_aka_learn_ids(%struct.eap_sm* %274, %struct.eap_aka_data* %275, %struct.eap_sim_attrs* %12)
  %277 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %278 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %277, i32 0, i32 8
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %289

281:                                              ; preds = %267
  %282 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %283 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %281
  %287 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %288 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %287, i32 0, i32 3
  store i32 1, i32* %288, align 8
  br label %289

289:                                              ; preds = %286, %281, %267
  %290 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %291 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %290, i32 0, i32 4
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @FAILURE, align 8
  %294 = icmp ne i64 %292, %293
  br i1 %294, label %295, label %308

295:                                              ; preds = %289
  %296 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %297 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %298 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 8
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %295
  %302 = load i32, i32* @RESULT_SUCCESS, align 4
  br label %305

303:                                              ; preds = %295
  %304 = load i32, i32* @SUCCESS, align 4
  br label %305

305:                                              ; preds = %303, %301
  %306 = phi i32 [ %302, %301 ], [ %304, %303 ]
  %307 = call i32 @eap_aka_state(%struct.eap_aka_data* %296, i32 %306)
  br label %308

308:                                              ; preds = %305, %289
  %309 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %310 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %309, i32 0, i32 7
  store i64 0, i64* %310, align 8
  %311 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %312 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %311, i32 0, i32 6
  store i64 0, i64* %312, align 8
  %313 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %314 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @EAP_AKA_MAX_FAST_REAUTHS, align 8
  %317 = icmp ugt i64 %315, %316
  br i1 %317, label %318, label %327

318:                                              ; preds = %308
  %319 = load i32, i32* @MSG_DEBUG, align 4
  %320 = call i32 (i32, i8*, ...) @wpa_printf(i32 %319, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i64 0, i64 0))
  %321 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %322 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %323 = load i32, i32* @CLEAR_REAUTH_ID, align 4
  %324 = load i32, i32* @CLEAR_EAP_ID, align 4
  %325 = or i32 %323, %324
  %326 = call i32 @eap_aka_clear_identities(%struct.eap_sm* %321, %struct.eap_aka_data* %322, i32 %325)
  br label %327

327:                                              ; preds = %318, %308
  %328 = load i32*, i32** %13, align 8
  %329 = call i32 @os_free(i32* %328)
  %330 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %331 = load i32, i32* %9, align 4
  %332 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %333 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %332, i32 0, i32 5
  %334 = load i32*, i32** %333, align 8
  %335 = call %struct.wpabuf* @eap_aka_response_reauth(%struct.eap_aka_data* %330, i32 %331, i32 0, i32* %334)
  store %struct.wpabuf* %335, %struct.wpabuf** %6, align 8
  br label %336

336:                                              ; preds = %327, %160, %129, %114, %91, %60, %43, %31
  %337 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  ret %struct.wpabuf* %337
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @eap_aka_verify_checkcode(%struct.eap_aka_data*, i64, i32) #1

declare dso_local %struct.wpabuf* @eap_aka_client_error(%struct.eap_aka_data*, i32, i32) #1

declare dso_local i64 @eap_aka_verify_mac(%struct.eap_aka_data*, %struct.wpabuf*, i32*, i32*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32* @eap_sim_parse_encr(i32, i32*, i32, i32*, %struct.eap_sim_attrs*, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local %struct.wpabuf* @eap_aka_response_reauth(%struct.eap_aka_data*, i32, i32, i32*) #1

declare dso_local i32 @eap_aka_prime_derive_keys_reauth(i32, i64, i32*, i64, i32*, i32, i32) #1

declare dso_local i32 @eap_sim_derive_keys_reauth(i64, i32*, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @eap_aka_clear_identities(%struct.eap_sm*, %struct.eap_aka_data*, i32) #1

declare dso_local i32 @eap_aka_learn_ids(%struct.eap_sm*, %struct.eap_aka_data*, %struct.eap_sim_attrs*) #1

declare dso_local i32 @eap_aka_state(%struct.eap_aka_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
