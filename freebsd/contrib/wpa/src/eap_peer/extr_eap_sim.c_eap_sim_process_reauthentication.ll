; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_process_reauthentication.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_process_reauthentication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_sim_data = type { i32, i64, i32, i64, i32*, i64, i64, i64, i32, i32, i32, i64, i32*, i64, i32*, i64, i32, i32*, i32 }
%struct.wpabuf = type { i32 }
%struct.eap_sim_attrs = type { i64, i32*, i64, i32*, i32, i32*, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"EAP-SIM: subtype Reauthentication\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"EAP-SIM: Server is trying reauthentication, but no reauth_id available\00", align 1
@EAP_SIM_UNABLE_TO_PROCESS_PACKET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"EAP-SIM: Reauthentication did not have valid AT_MAC\00", align 1
@EAP_SIM_MAC_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"EAP-SIM: Server MAC\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"EAP-SIM: Reauthentication message did not include encrypted data\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"EAP-SIM: Failed to parse encrypted data from reauthentication message\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"EAP-SIM: (encr) No%s%s in reauth packet\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c" AT_NONCE_S\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c" AT_COUNTER\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"EAP-SIM: (encr) Invalid counter (%d <= %d)\00", align 1
@EAP_SIM_NONCE_S_LEN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"EAP-SIM: (encr) AT_NONCE_S\00", align 1
@CLEAR_REAUTH_ID = common dso_local global i32 0, align 4
@CLEAR_EAP_ID = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i64 0, align 8
@RESULT_SUCCESS = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@EAP_SIM_MAX_FAST_REAUTHS = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [67 x i8] c"EAP-SIM: Maximum number of fast reauths performed - force fullauth\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_sim_data*, i32, %struct.wpabuf*, %struct.eap_sim_attrs*)* @eap_sim_process_reauthentication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sim_process_reauthentication(%struct.eap_sm* %0, %struct.eap_sim_data* %1, i32 %2, %struct.wpabuf* %3, %struct.eap_sim_attrs* %4) #0 {
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_sim_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca %struct.eap_sim_attrs*, align 8
  %12 = alloca %struct.eap_sim_attrs, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_sim_data* %1, %struct.eap_sim_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.wpabuf* %3, %struct.wpabuf** %10, align 8
  store %struct.eap_sim_attrs* %4, %struct.eap_sim_attrs** %11, align 8
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = call i32 (i32, i8*, ...) @wpa_printf(i32 %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %18 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %17, i32 0, i32 12
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %5
  %22 = load i32, i32* @MSG_WARNING, align 4
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @EAP_SIM_UNABLE_TO_PROCESS_PACKET, align 4
  %27 = call %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data* %24, i32 %25, i32 %26)
  store %struct.wpabuf* %27, %struct.wpabuf** %6, align 8
  br label %286

28:                                               ; preds = %5
  %29 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %30 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %32 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %31, i32 0, i32 18
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %35 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %36 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %35, i32 0, i32 6
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @eap_sim_verify_mac(i32 %33, %struct.wpabuf* %34, i32* %37, i32* bitcast ([1 x i8]* @.str.2 to i32*), i32 0)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %28
  %41 = load i32, i32* @MSG_WARNING, align 4
  %42 = call i32 (i32, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %43 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @EAP_SIM_UNABLE_TO_PROCESS_PACKET, align 4
  %46 = call %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data* %43, i32 %44, i32 %45)
  store %struct.wpabuf* %46, %struct.wpabuf** %6, align 8
  br label %286

47:                                               ; preds = %28
  %48 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %49 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %48, i32 0, i32 17
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %52 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %51, i32 0, i32 6
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* @EAP_SIM_MAC_LEN, align 4
  %55 = call i32 @os_memcpy(i32* %50, i32* %53, i32 %54)
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %58 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %57, i32 0, i32 17
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @EAP_SIM_MAC_LEN, align 4
  %61 = call i32 @wpa_hexdump(i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32* %59, i32 %60)
  %62 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %63 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %62, i32 0, i32 5
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %47
  %67 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %68 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %66, %47
  %72 = load i32, i32* @MSG_WARNING, align 4
  %73 = call i32 (i32, i8*, ...) @wpa_printf(i32 %72, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0))
  %74 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @EAP_SIM_UNABLE_TO_PROCESS_PACKET, align 4
  %77 = call %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data* %74, i32 %75, i32 %76)
  store %struct.wpabuf* %77, %struct.wpabuf** %6, align 8
  br label %286

78:                                               ; preds = %66
  %79 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %80 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %79, i32 0, i32 16
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %83 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %82, i32 0, i32 5
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %86 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %89 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = call i32* @eap_sim_parse_encr(i32 %81, i32* %84, i32 %87, i32* %90, %struct.eap_sim_attrs* %12, i32 0)
  store i32* %91, i32** %13, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %78
  %95 = load i32, i32* @MSG_WARNING, align 4
  %96 = call i32 (i32, i8*, ...) @wpa_printf(i32 %95, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0))
  %97 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @EAP_SIM_UNABLE_TO_PROCESS_PACKET, align 4
  %100 = call %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data* %97, i32 %98, i32 %99)
  store %struct.wpabuf* %100, %struct.wpabuf** %6, align 8
  br label %286

101:                                              ; preds = %78
  %102 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %12, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %12, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %129

109:                                              ; preds = %105, %101
  %110 = load i32, i32* @MSG_INFO, align 4
  %111 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %12, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %117 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %12, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp slt i64 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %122 = call i32 (i32, i8*, ...) @wpa_printf(i32 %110, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %116, i8* %121)
  %123 = load i32*, i32** %13, align 8
  %124 = call i32 @os_free(i32* %123)
  %125 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @EAP_SIM_UNABLE_TO_PROCESS_PACKET, align 4
  %128 = call %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data* %125, i32 %126, i32 %127)
  store %struct.wpabuf* %128, %struct.wpabuf** %6, align 8
  br label %286

129:                                              ; preds = %105
  %130 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %12, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %12, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %137 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ule i64 %135, %138
  br i1 %139, label %140, label %178

140:                                              ; preds = %133, %129
  %141 = load i32, i32* @MSG_INFO, align 4
  %142 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %12, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %145 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i32 (i32, i8*, ...) @wpa_printf(i32 %141, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i64 %143, i64 %146)
  %148 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %12, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %151 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %150, i32 0, i32 15
  store i64 %149, i64* %151, align 8
  %152 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %153 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %152, i32 0, i32 14
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @os_free(i32* %154)
  %156 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %157 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %156, i32 0, i32 12
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %160 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %159, i32 0, i32 14
  store i32* %158, i32** %160, align 8
  %161 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %162 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %161, i32 0, i32 11
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %165 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %164, i32 0, i32 13
  store i64 %163, i64* %165, align 8
  %166 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %167 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %166, i32 0, i32 12
  store i32* null, i32** %167, align 8
  %168 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %169 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %168, i32 0, i32 11
  store i64 0, i64* %169, align 8
  %170 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %171 = load i32, i32* %9, align 4
  %172 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %12, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = call %struct.wpabuf* @eap_sim_response_reauth(%struct.eap_sim_data* %170, i32 %171, i32 1, i32* %173)
  store %struct.wpabuf* %174, %struct.wpabuf** %14, align 8
  %175 = load i32*, i32** %13, align 8
  %176 = call i32 @os_free(i32* %175)
  %177 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  store %struct.wpabuf* %177, %struct.wpabuf** %6, align 8
  br label %286

178:                                              ; preds = %133
  %179 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %12, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %182 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %181, i32 0, i32 1
  store i64 %180, i64* %182, align 8
  %183 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %184 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %183, i32 0, i32 4
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %12, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* @EAP_SIM_NONCE_S_LEN, align 4
  %189 = call i32 @os_memcpy(i32* %185, i32* %187, i32 %188)
  %190 = load i32, i32* @MSG_DEBUG, align 4
  %191 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %192 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %191, i32 0, i32 4
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* @EAP_SIM_NONCE_S_LEN, align 4
  %195 = call i32 @wpa_hexdump(i32 %190, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32* %193, i32 %194)
  %196 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %197 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %200 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %199, i32 0, i32 12
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %203 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %202, i32 0, i32 11
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %206 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %205, i32 0, i32 4
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %209 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %208, i32 0, i32 10
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %212 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %211, i32 0, i32 9
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %215 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %214, i32 0, i32 8
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @eap_sim_derive_keys_reauth(i64 %198, i32* %201, i64 %204, i32* %207, i32 %210, i32 %213, i32 %216)
  %218 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %219 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %220 = load i32, i32* @CLEAR_REAUTH_ID, align 4
  %221 = load i32, i32* @CLEAR_EAP_ID, align 4
  %222 = or i32 %220, %221
  %223 = call i32 @eap_sim_clear_identities(%struct.eap_sm* %218, %struct.eap_sim_data* %219, i32 %222)
  %224 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %225 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %226 = call i32 @eap_sim_learn_ids(%struct.eap_sm* %224, %struct.eap_sim_data* %225, %struct.eap_sim_attrs* %12)
  %227 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %228 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %227, i32 0, i32 7
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %178
  %232 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %233 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %238 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %237, i32 0, i32 2
  store i32 1, i32* %238, align 8
  br label %239

239:                                              ; preds = %236, %231, %178
  %240 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %241 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @FAILURE, align 8
  %244 = icmp ne i64 %242, %243
  br i1 %244, label %245, label %258

245:                                              ; preds = %239
  %246 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %247 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %248 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %245
  %252 = load i32, i32* @RESULT_SUCCESS, align 4
  br label %255

253:                                              ; preds = %245
  %254 = load i32, i32* @SUCCESS, align 4
  br label %255

255:                                              ; preds = %253, %251
  %256 = phi i32 [ %252, %251 ], [ %254, %253 ]
  %257 = call i32 @eap_sim_state(%struct.eap_sim_data* %246, i32 %256)
  br label %258

258:                                              ; preds = %255, %239
  %259 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %260 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %259, i32 0, i32 6
  store i64 0, i64* %260, align 8
  %261 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %262 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %261, i32 0, i32 5
  store i64 0, i64* %262, align 8
  %263 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %264 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @EAP_SIM_MAX_FAST_REAUTHS, align 8
  %267 = icmp ugt i64 %265, %266
  br i1 %267, label %268, label %277

268:                                              ; preds = %258
  %269 = load i32, i32* @MSG_DEBUG, align 4
  %270 = call i32 (i32, i8*, ...) @wpa_printf(i32 %269, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.12, i64 0, i64 0))
  %271 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %272 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %273 = load i32, i32* @CLEAR_REAUTH_ID, align 4
  %274 = load i32, i32* @CLEAR_EAP_ID, align 4
  %275 = or i32 %273, %274
  %276 = call i32 @eap_sim_clear_identities(%struct.eap_sm* %271, %struct.eap_sim_data* %272, i32 %275)
  br label %277

277:                                              ; preds = %268, %258
  %278 = load i32*, i32** %13, align 8
  %279 = call i32 @os_free(i32* %278)
  %280 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %281 = load i32, i32* %9, align 4
  %282 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %283 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %282, i32 0, i32 4
  %284 = load i32*, i32** %283, align 8
  %285 = call %struct.wpabuf* @eap_sim_response_reauth(%struct.eap_sim_data* %280, i32 %281, i32 0, i32* %284)
  store %struct.wpabuf* %285, %struct.wpabuf** %6, align 8
  br label %286

286:                                              ; preds = %277, %140, %109, %94, %71, %40, %21
  %287 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  ret %struct.wpabuf* %287
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data*, i32, i32) #1

declare dso_local i64 @eap_sim_verify_mac(i32, %struct.wpabuf*, i32*, i32*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32* @eap_sim_parse_encr(i32, i32*, i32, i32*, %struct.eap_sim_attrs*, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local %struct.wpabuf* @eap_sim_response_reauth(%struct.eap_sim_data*, i32, i32, i32*) #1

declare dso_local i32 @eap_sim_derive_keys_reauth(i64, i32*, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @eap_sim_clear_identities(%struct.eap_sm*, %struct.eap_sim_data*, i32) #1

declare dso_local i32 @eap_sim_learn_ids(%struct.eap_sm*, %struct.eap_sim_data*, %struct.eap_sim_attrs*) #1

declare dso_local i32 @eap_sim_state(%struct.eap_sim_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
