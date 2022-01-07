; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_process_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_process_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i8*, i64, i8*, i32, i32 }
%struct.eap_sim_data = type { i64, i8*, i8*, i32, i8*, i32, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i8*, i32*, i64 }
%struct.wpabuf = type { i32 }
%struct.eap_sim_attrs = type { i64, i32, i32*, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"EAP-SIM: Receive start response\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"EAP-SIM: Peer did not provide any identity\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"EAP-SIM: Identity\00", align 1
@EAP_SIM_REAUTH_ID_PREFIX = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"EAP-SIM: Reauth username '%s'\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"EAP-SIM: Unknown reauth identity - request full auth identity\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"EAP-SIM: Using fast re-authentication\00", align 1
@EAP_SIM_MK_LEN = common dso_local global i64 0, align 8
@REAUTH = common dso_local global i32 0, align 4
@EAP_SIM_PSEUDONYM_PREFIX = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"EAP-SIM: Pseudonym username '%s'\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"EAP-SIM: Unknown pseudonym identity - request permanent identity\00", align 1
@EAP_SIM_PERMANENT_PREFIX = common dso_local global i8 0, align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"EAP-SIM: Permanent username '%s'\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"EAP-SIM: Unrecognized username '%s'\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"EAP-SIM: Start/Response missing required attributes\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"EAP-SIM: Peer selected unsupported version %d\00", align 1
@EAP_SIM_MAX_CHAL = common dso_local global i32 0, align 4
@EAP_SIM_DB_PENDING = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [73 x i8] c"EAP-SIM: GSM authentication triplets not yet available - pending request\00", align 1
@METHOD_PENDING_WAIT = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [64 x i8] c"EAP-SIM: Failed to get GSM authentication triplets for the peer\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"EAP-SIM: Workaround - drop last null character from identity\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"EAP-SIM: Identity for MK derivation\00", align 1
@EAP_SIM_NONCE_MT_LEN = common dso_local global i64 0, align 8
@EAP_SIM_VERSION = common dso_local global i32 0, align 4
@CHALLENGE = common dso_local global i32 0, align 4
@EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH = common dso_local global i32 0, align 4
@NOTIFICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_sim_data*, %struct.wpabuf*, %struct.eap_sim_attrs*)* @eap_sim_process_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_sim_process_start(%struct.eap_sm* %0, %struct.eap_sim_data* %1, %struct.wpabuf* %2, %struct.eap_sim_attrs* %3) #0 {
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_sim_data*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_sim_attrs*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x i8], align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_sim_data* %1, %struct.eap_sim_data** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  store %struct.eap_sim_attrs* %3, %struct.eap_sim_attrs** %8, align 8
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 (i32, i8*, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %17 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %200

21:                                               ; preds = %4
  %22 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %23 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %28 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %21
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %375

34:                                               ; preds = %26
  %35 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %36 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i8* @os_malloc(i64 %37)
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %375

42:                                               ; preds = %34
  %43 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %44 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @os_free(i8* %45)
  %47 = load i8*, i8** %11, align 8
  %48 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %49 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %51 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %54 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %57 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @os_memcpy(i8* %52, i32* %55, i64 %58)
  %60 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %61 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %64 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* @MSG_DEBUG, align 4
  %66 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %67 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %70 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @wpa_hexdump_ascii(i32 %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %68, i64 %71)
  %73 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %74 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %77 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i8* @sim_get_username(i8* %75, i64 %78)
  store i8* %79, i8** %12, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %42
  br label %375

83:                                               ; preds = %42
  %84 = load i8*, i8** %12, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = load i8, i8* @EAP_SIM_REAUTH_ID_PREFIX, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %143

91:                                               ; preds = %83
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = load i8*, i8** %12, align 8
  %94 = call i32 (i32, i8*, ...) @wpa_printf(i32 %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %93)
  %95 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %96 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %12, align 8
  %99 = call %struct.TYPE_2__* @eap_sim_db_get_reauth_entry(i32 %97, i8* %98)
  %100 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %101 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %100, i32 0, i32 13
  store %struct.TYPE_2__* %99, %struct.TYPE_2__** %101, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = call i32 @os_free(i8* %102)
  %104 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %105 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %104, i32 0, i32 13
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = icmp eq %struct.TYPE_2__* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %91
  %109 = load i32, i32* @MSG_DEBUG, align 4
  %110 = call i32 (i32, i8*, ...) @wpa_printf(i32 %109, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  br label %382

111:                                              ; preds = %91
  %112 = load i32, i32* @MSG_DEBUG, align 4
  %113 = call i32 (i32, i8*, ...) @wpa_printf(i32 %112, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %114 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %115 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %118 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %117, i32 0, i32 13
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @os_strlcpy(i8* %116, i8* %121, i32 8)
  %123 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %124 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %123, i32 0, i32 13
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %129 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %128, i32 0, i32 14
  store i64 %127, i64* %129, align 8
  %130 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %131 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %130, i32 0, i32 2
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %134 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %133, i32 0, i32 13
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* @EAP_SIM_MK_LEN, align 8
  %139 = call i32 @os_memcpy(i8* %132, i32* %137, i64 %138)
  %140 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %141 = load i32, i32* @REAUTH, align 4
  %142 = call i32 @eap_sim_state(%struct.eap_sim_data* %140, i32 %141)
  br label %382

143:                                              ; preds = %83
  %144 = load i8*, i8** %12, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 0
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = load i8, i8* @EAP_SIM_PSEUDONYM_PREFIX, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %151, label %173

151:                                              ; preds = %143
  %152 = load i32, i32* @MSG_DEBUG, align 4
  %153 = load i8*, i8** %12, align 8
  %154 = call i32 (i32, i8*, ...) @wpa_printf(i32 %152, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %153)
  %155 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %156 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = load i8*, i8** %12, align 8
  %159 = call i8* @eap_sim_db_get_permanent(i32 %157, i8* %158)
  store i8* %159, i8** %13, align 8
  %160 = load i8*, i8** %12, align 8
  %161 = call i32 @os_free(i8* %160)
  %162 = load i8*, i8** %13, align 8
  %163 = icmp eq i8* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %151
  %165 = load i32, i32* @MSG_DEBUG, align 4
  %166 = call i32 (i32, i8*, ...) @wpa_printf(i32 %165, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0))
  br label %382

167:                                              ; preds = %151
  %168 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %169 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = load i8*, i8** %13, align 8
  %172 = call i32 @os_strlcpy(i8* %170, i8* %171, i32 8)
  br label %199

173:                                              ; preds = %143
  %174 = load i8*, i8** %12, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 0
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = load i8, i8* @EAP_SIM_PERMANENT_PREFIX, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %177, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %173
  %182 = load i32, i32* @MSG_DEBUG, align 4
  %183 = load i8*, i8** %12, align 8
  %184 = call i32 (i32, i8*, ...) @wpa_printf(i32 %182, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %183)
  %185 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %186 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = load i8*, i8** %12, align 8
  %189 = call i32 @os_strlcpy(i8* %187, i8* %188, i32 8)
  %190 = load i8*, i8** %12, align 8
  %191 = call i32 @os_free(i8* %190)
  br label %198

192:                                              ; preds = %173
  %193 = load i32, i32* @MSG_DEBUG, align 4
  %194 = load i8*, i8** %12, align 8
  %195 = call i32 (i32, i8*, ...) @wpa_printf(i32 %193, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* %194)
  %196 = load i8*, i8** %12, align 8
  %197 = call i32 @os_free(i8* %196)
  br label %375

198:                                              ; preds = %181
  br label %199

199:                                              ; preds = %198, %167
  br label %200

200:                                              ; preds = %199, %20
  %201 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %202 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = icmp eq i32* %203, null
  br i1 %204, label %210, label %205

205:                                              ; preds = %200
  %206 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %207 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %205, %200
  %211 = load i32, i32* @MSG_DEBUG, align 4
  %212 = call i32 (i32, i8*, ...) @wpa_printf(i32 %211, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  br label %375

213:                                              ; preds = %205
  %214 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %215 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %216 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @eap_sim_supported_ver(%struct.eap_sim_data* %214, i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %226, label %220

220:                                              ; preds = %213
  %221 = load i32, i32* @MSG_DEBUG, align 4
  %222 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %223 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = call i32 (i32, i8*, ...) @wpa_printf(i32 %221, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i32 %224)
  br label %375

226:                                              ; preds = %213
  %227 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %228 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %227, i32 0, i32 14
  store i64 0, i64* %228, align 8
  %229 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %230 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %229, i32 0, i32 13
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %230, align 8
  %231 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %232 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %235 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %234, i32 0, i32 1
  %236 = load i8*, i8** %235, align 8
  %237 = load i32, i32* @EAP_SIM_MAX_CHAL, align 4
  %238 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %239 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %238, i32 0, i32 12
  %240 = load i64, i64* %239, align 8
  %241 = inttoptr i64 %240 to i8*
  %242 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %243 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %242, i32 0, i32 10
  %244 = load i64, i64* %243, align 8
  %245 = inttoptr i64 %244 to i8*
  %246 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %247 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %246, i32 0, i32 11
  %248 = load i64, i64* %247, align 8
  %249 = inttoptr i64 %248 to i8*
  %250 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %251 = call i32 @eap_sim_db_get_gsm_triplets(i32 %233, i8* %236, i32 %237, i8* %241, i8* %245, i8* %249, %struct.eap_sm* %250)
  %252 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %253 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %252, i32 0, i32 3
  store i32 %251, i32* %253, align 8
  %254 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %255 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @EAP_SIM_DB_PENDING, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %265

259:                                              ; preds = %226
  %260 = load i32, i32* @MSG_DEBUG, align 4
  %261 = call i32 (i32, i8*, ...) @wpa_printf(i32 %260, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.12, i64 0, i64 0))
  %262 = load i32, i32* @METHOD_PENDING_WAIT, align 4
  %263 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %264 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %263, i32 0, i32 3
  store i32 %262, i32* %264, align 8
  br label %382

265:                                              ; preds = %226
  %266 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %267 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = icmp slt i32 %268, 2
  br i1 %269, label %270, label %273

270:                                              ; preds = %265
  %271 = load i32, i32* @MSG_INFO, align 4
  %272 = call i32 (i32, i8*, ...) @wpa_printf(i32 %271, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.13, i64 0, i64 0))
  br label %375

273:                                              ; preds = %265
  %274 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %275 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %274, i32 0, i32 1
  %276 = load i8*, i8** %275, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 0
  %278 = load i8, i8* %277, align 1
  %279 = sext i8 %278 to i32
  %280 = load i8, i8* @EAP_SIM_PERMANENT_PREFIX, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp eq i32 %279, %281
  br i1 %282, label %283, label %292

283:                                              ; preds = %273
  %284 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %285 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %284, i32 0, i32 2
  %286 = load i8*, i8** %285, align 8
  %287 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %288 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %287, i32 0, i32 1
  %289 = load i8*, i8** %288, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 1
  %291 = call i32 @os_strlcpy(i8* %286, i8* %290, i32 8)
  br label %292

292:                                              ; preds = %283, %273
  %293 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %294 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  store i64 %295, i64* %9, align 8
  br label %296

296:                                              ; preds = %311, %292
  %297 = load i64, i64* %9, align 8
  %298 = icmp ugt i64 %297, 0
  br i1 %298, label %299, label %309

299:                                              ; preds = %296
  %300 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %301 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %300, i32 0, i32 0
  %302 = load i8*, i8** %301, align 8
  %303 = load i64, i64* %9, align 8
  %304 = sub i64 %303, 1
  %305 = getelementptr inbounds i8, i8* %302, i64 %304
  %306 = load i8, i8* %305, align 1
  %307 = sext i8 %306 to i32
  %308 = icmp eq i32 %307, 0
  br label %309

309:                                              ; preds = %299, %296
  %310 = phi i1 [ false, %296 ], [ %308, %299 ]
  br i1 %310, label %311, label %316

311:                                              ; preds = %309
  %312 = load i32, i32* @MSG_DEBUG, align 4
  %313 = call i32 (i32, i8*, ...) @wpa_printf(i32 %312, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i64 0, i64 0))
  %314 = load i64, i64* %9, align 8
  %315 = add i64 %314, -1
  store i64 %315, i64* %9, align 8
  br label %296

316:                                              ; preds = %309
  %317 = load i32, i32* @MSG_DEBUG, align 4
  %318 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %319 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %318, i32 0, i32 0
  %320 = load i8*, i8** %319, align 8
  %321 = load i64, i64* %9, align 8
  %322 = call i32 @wpa_hexdump_ascii(i32 %317, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i8* %320, i64 %321)
  %323 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %324 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %323, i32 0, i32 4
  %325 = load i8*, i8** %324, align 8
  %326 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %327 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %326, i32 0, i32 2
  %328 = load i32*, i32** %327, align 8
  %329 = load i64, i64* @EAP_SIM_NONCE_MT_LEN, align 8
  %330 = call i32 @os_memcpy(i8* %325, i32* %328, i64 %329)
  %331 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %332 = load i32, i32* @EAP_SIM_VERSION, align 4
  %333 = call i32 @WPA_PUT_BE16(i8* %331, i32 %332)
  %334 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %335 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %334, i32 0, i32 0
  %336 = load i8*, i8** %335, align 8
  %337 = load i64, i64* %9, align 8
  %338 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %339 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %338, i32 0, i32 2
  %340 = load i32*, i32** %339, align 8
  %341 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %342 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 8
  %344 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %345 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %346 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %349 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %348, i32 0, i32 10
  %350 = load i64, i64* %349, align 8
  %351 = inttoptr i64 %350 to i8*
  %352 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %353 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %352, i32 0, i32 2
  %354 = load i8*, i8** %353, align 8
  %355 = call i32 @eap_sim_derive_mk(i8* %336, i64 %337, i32* %340, i32 %343, i8* %344, i32 2, i32 %347, i8* %351, i8* %354)
  %356 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %357 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %356, i32 0, i32 2
  %358 = load i8*, i8** %357, align 8
  %359 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %360 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %359, i32 0, i32 9
  %361 = load i32, i32* %360, align 8
  %362 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %363 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %362, i32 0, i32 8
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %366 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %365, i32 0, i32 7
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %369 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %368, i32 0, i32 6
  %370 = load i32, i32* %369, align 4
  %371 = call i32 @eap_sim_derive_keys(i8* %358, i32 %361, i32 %364, i32 %367, i32 %370)
  %372 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %373 = load i32, i32* @CHALLENGE, align 4
  %374 = call i32 @eap_sim_state(%struct.eap_sim_data* %372, i32 %373)
  br label %382

375:                                              ; preds = %270, %220, %210, %192, %82, %41, %31
  %376 = load i32, i32* @EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH, align 4
  %377 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %378 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %377, i32 0, i32 5
  store i32 %376, i32* %378, align 8
  %379 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %380 = load i32, i32* @NOTIFICATION, align 4
  %381 = call i32 @eap_sim_state(%struct.eap_sim_data* %379, i32 %380)
  br label %382

382:                                              ; preds = %375, %316, %259, %164, %111, %108
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @os_memcpy(i8*, i32*, i64) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i8*, i64) #1

declare dso_local i8* @sim_get_username(i8*, i64) #1

declare dso_local %struct.TYPE_2__* @eap_sim_db_get_reauth_entry(i32, i8*) #1

declare dso_local i32 @os_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @eap_sim_state(%struct.eap_sim_data*, i32) #1

declare dso_local i8* @eap_sim_db_get_permanent(i32, i8*) #1

declare dso_local i32 @eap_sim_supported_ver(%struct.eap_sim_data*, i32) #1

declare dso_local i32 @eap_sim_db_get_gsm_triplets(i32, i8*, i32, i8*, i8*, i8*, %struct.eap_sm*) #1

declare dso_local i32 @WPA_PUT_BE16(i8*, i32) #1

declare dso_local i32 @eap_sim_derive_mk(i8*, i64, i32*, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @eap_sim_derive_keys(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
