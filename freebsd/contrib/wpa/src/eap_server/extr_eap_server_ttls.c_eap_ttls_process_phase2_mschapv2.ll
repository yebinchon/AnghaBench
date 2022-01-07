; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_process_phase2_mschapv2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_process_phase2_mschapv2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i8*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }
%struct.eap_ttls_data = type { i32, i8, i32 }

@EAP_TTLS_MSCHAPV2_CHALLENGE_LEN = common dso_local global i64 0, align 8
@EAP_TTLS_MSCHAPV2_RESPONSE_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"EAP-TTLS/MSCHAPV2: Invalid MS-CHAP2 attributes (challenge len %lu response len %lu)\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@EAP_TTLS_AUTH_MSCHAPV2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"EAP-TTLS/MSCHAPV2: No user password configured\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"EAP-TTLS/MSCHAPV2: No user identity known\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"EAP-TTLS/MSCHAPV2: Failed to generate challenge from TLS data\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"EAP-TTLS/MSCHAPV2: Challenge mismatch\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"EAP-TTLS/MSCHAPV2: User\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"EAP-TTLS/MSCHAPV2: auth_challenge\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"EAP-TTLS/MSCHAPV2: peer_challenge\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"EAP-TTLS/MSCHAPV2: Correct NT-Response\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"EAP-TTLS/MSCHAPV2: Invalid NT-Response\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"EAP-TTLS/MSCHAPV2: Received\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"EAP-TTLS/MSCHAPV2: Expected\00", align 1
@PHASE2_MSCHAPV2_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_ttls_data*, i8*, i64, i8*, i64)* @eap_ttls_process_phase2_mschapv2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_ttls_process_phase2_mschapv2(%struct.eap_sm* %0, %struct.eap_ttls_data* %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_ttls_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [24 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_ttls_data* %1, %struct.eap_ttls_data** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %6
  %24 = load i8*, i8** %11, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @EAP_TTLS_MSCHAPV2_CHALLENGE_LEN, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @EAP_TTLS_MSCHAPV2_RESPONSE_LEN, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30, %26, %23, %6
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call i32 (i32, i8*, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %37)
  %39 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %40 = load i32, i32* @FAILURE, align 4
  %41 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %39, i32 %40)
  br label %283

42:                                               ; preds = %30
  %43 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %44 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = icmp ne %struct.TYPE_2__* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %49 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %56 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @EAP_TTLS_AUTH_MSCHAPV2, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %54, %47, %42
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = call i32 (i32, i8*, ...) @wpa_printf(i32 %64, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %67 = load i32, i32* @FAILURE, align 4
  %68 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %66, i32 %67)
  br label %283

69:                                               ; preds = %54
  %70 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %71 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %77 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %78 = load i32, i32* @FAILURE, align 4
  %79 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %77, i32 %78)
  br label %283

80:                                               ; preds = %69
  %81 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %82 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %14, align 8
  %84 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %85 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %19, align 8
  store i64 0, i64* %20, align 8
  br label %87

87:                                               ; preds = %108, %80
  %88 = load i64, i64* %20, align 8
  %89 = load i64, i64* %19, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %111

91:                                               ; preds = %87
  %92 = load i8*, i8** %14, align 8
  %93 = load i64, i64* %20, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 92
  br i1 %97, label %98, label %107

98:                                               ; preds = %91
  %99 = load i64, i64* %20, align 8
  %100 = add i64 %99, 1
  %101 = load i64, i64* %19, align 8
  %102 = sub i64 %101, %100
  store i64 %102, i64* %19, align 8
  %103 = load i64, i64* %20, align 8
  %104 = add i64 %103, 1
  %105 = load i8*, i8** %14, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 %104
  store i8* %106, i8** %14, align 8
  br label %111

107:                                              ; preds = %91
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %20, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %20, align 8
  br label %87

111:                                              ; preds = %98, %87
  %112 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %113 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %114 = load i64, i64* @EAP_TTLS_MSCHAPV2_CHALLENGE_LEN, align 8
  %115 = add i64 %114, 1
  %116 = call i8* @eap_ttls_implicit_challenge(%struct.eap_sm* %112, %struct.eap_ttls_data* %113, i64 %115)
  store i8* %116, i8** %13, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %111
  %120 = load i32, i32* @MSG_DEBUG, align 4
  %121 = call i32 (i32, i8*, ...) @wpa_printf(i32 %120, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %122 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %123 = load i32, i32* @FAILURE, align 4
  %124 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %122, i32 %123)
  br label %283

125:                                              ; preds = %111
  %126 = load i8*, i8** %9, align 8
  %127 = load i8*, i8** %13, align 8
  %128 = load i64, i64* @EAP_TTLS_MSCHAPV2_CHALLENGE_LEN, align 8
  %129 = trunc i64 %128 to i32
  %130 = call i64 @os_memcmp_const(i8* %126, i8* %127, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %143, label %132

132:                                              ; preds = %125
  %133 = load i8*, i8** %11, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 0
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = load i8*, i8** %13, align 8
  %138 = load i64, i64* @EAP_TTLS_MSCHAPV2_CHALLENGE_LEN, align 8
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %136, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %132, %125
  %144 = load i32, i32* @MSG_DEBUG, align 4
  %145 = call i32 (i32, i8*, ...) @wpa_printf(i32 %144, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %146 = load i8*, i8** %13, align 8
  %147 = call i32 @os_free(i8* %146)
  %148 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %149 = load i32, i32* @FAILURE, align 4
  %150 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %148, i32 %149)
  br label %283

151:                                              ; preds = %132
  %152 = load i8*, i8** %13, align 8
  %153 = call i32 @os_free(i8* %152)
  %154 = load i8*, i8** %9, align 8
  store i8* %154, i8** %18, align 8
  %155 = load i8*, i8** %11, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 2
  store i8* %156, i8** %17, align 8
  %157 = load i32, i32* @MSG_MSGDUMP, align 4
  %158 = load i8*, i8** %14, align 8
  %159 = load i64, i64* %19, align 8
  %160 = call i32 @wpa_hexdump_ascii(i32 %157, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %158, i64 %159)
  %161 = load i32, i32* @MSG_MSGDUMP, align 4
  %162 = load i8*, i8** %18, align 8
  %163 = load i64, i64* @EAP_TTLS_MSCHAPV2_CHALLENGE_LEN, align 8
  %164 = trunc i64 %163 to i32
  %165 = call i32 @wpa_hexdump(i32 %161, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* %162, i32 %164)
  %166 = load i32, i32* @MSG_MSGDUMP, align 4
  %167 = load i8*, i8** %17, align 8
  %168 = load i64, i64* @EAP_TTLS_MSCHAPV2_CHALLENGE_LEN, align 8
  %169 = trunc i64 %168 to i32
  %170 = call i32 @wpa_hexdump(i32 %166, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %167, i32 %169)
  %171 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %172 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %171, i32 0, i32 2
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %189

177:                                              ; preds = %151
  %178 = load i8*, i8** %18, align 8
  %179 = load i8*, i8** %17, align 8
  %180 = load i8*, i8** %14, align 8
  %181 = load i64, i64* %19, align 8
  %182 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %183 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %182, i32 0, i32 2
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = getelementptr inbounds [24 x i8], [24 x i8]* %15, i64 0, i64 0
  %188 = call i32 @generate_nt_response_pwhash(i8* %178, i8* %179, i8* %180, i64 %181, i32 %186, i8* %187)
  br label %206

189:                                              ; preds = %151
  %190 = load i8*, i8** %18, align 8
  %191 = load i8*, i8** %17, align 8
  %192 = load i8*, i8** %14, align 8
  %193 = load i64, i64* %19, align 8
  %194 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %195 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %194, i32 0, i32 2
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %200 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %199, i32 0, i32 2
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = getelementptr inbounds [24 x i8], [24 x i8]* %15, i64 0, i64 0
  %205 = call i32 @generate_nt_response(i8* %190, i8* %191, i8* %192, i64 %193, i32 %198, i32 %203, i8* %204)
  br label %206

206:                                              ; preds = %189, %177
  %207 = load i8*, i8** %11, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 2
  %209 = load i64, i64* @EAP_TTLS_MSCHAPV2_CHALLENGE_LEN, align 8
  %210 = getelementptr inbounds i8, i8* %208, i64 %209
  %211 = getelementptr inbounds i8, i8* %210, i64 8
  store i8* %211, i8** %16, align 8
  %212 = getelementptr inbounds [24 x i8], [24 x i8]* %15, i64 0, i64 0
  %213 = load i8*, i8** %16, align 8
  %214 = call i64 @os_memcmp_const(i8* %212, i8* %213, i32 24)
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %263

216:                                              ; preds = %206
  %217 = load i32, i32* @MSG_DEBUG, align 4
  %218 = call i32 (i32, i8*, ...) @wpa_printf(i32 %217, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %219 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %220 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %219, i32 0, i32 0
  store i32 1, i32* %220, align 4
  %221 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %222 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %221, i32 0, i32 2
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %242

227:                                              ; preds = %216
  %228 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %229 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %228, i32 0, i32 2
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load i8*, i8** %17, align 8
  %234 = load i8*, i8** %18, align 8
  %235 = load i8*, i8** %14, align 8
  %236 = load i64, i64* %19, align 8
  %237 = getelementptr inbounds [24 x i8], [24 x i8]* %15, i64 0, i64 0
  %238 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %239 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @generate_authenticator_response_pwhash(i32 %232, i8* %233, i8* %234, i8* %235, i64 %236, i8* %237, i32 %240)
  br label %262

242:                                              ; preds = %216
  %243 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %244 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %243, i32 0, i32 2
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %249 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %248, i32 0, i32 2
  %250 = load %struct.TYPE_2__*, %struct.TYPE_2__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i8*, i8** %17, align 8
  %254 = load i8*, i8** %18, align 8
  %255 = load i8*, i8** %14, align 8
  %256 = load i64, i64* %19, align 8
  %257 = getelementptr inbounds [24 x i8], [24 x i8]* %15, i64 0, i64 0
  %258 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %259 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @generate_authenticator_response(i32 %247, i32 %252, i8* %253, i8* %254, i8* %255, i64 %256, i8* %257, i32 %260)
  br label %262

262:                                              ; preds = %242, %227
  br label %274

263:                                              ; preds = %206
  %264 = load i32, i32* @MSG_DEBUG, align 4
  %265 = call i32 (i32, i8*, ...) @wpa_printf(i32 %264, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %266 = load i32, i32* @MSG_MSGDUMP, align 4
  %267 = load i8*, i8** %16, align 8
  %268 = call i32 @wpa_hexdump(i32 %266, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8* %267, i32 24)
  %269 = load i32, i32* @MSG_MSGDUMP, align 4
  %270 = getelementptr inbounds [24 x i8], [24 x i8]* %15, i64 0, i64 0
  %271 = call i32 @wpa_hexdump(i32 %269, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8* %270, i32 24)
  %272 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %273 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %272, i32 0, i32 0
  store i32 0, i32* %273, align 4
  br label %274

274:                                              ; preds = %263, %262
  %275 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %276 = load i32, i32* @PHASE2_MSCHAPV2_RESP, align 4
  %277 = call i32 @eap_ttls_state(%struct.eap_ttls_data* %275, i32 %276)
  %278 = load i8*, i8** %11, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 0
  %280 = load i8, i8* %279, align 1
  %281 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %282 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %281, i32 0, i32 1
  store i8 %280, i8* %282, align 4
  br label %283

283:                                              ; preds = %274, %143, %119, %74, %63, %34
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_ttls_state(%struct.eap_ttls_data*, i32) #1

declare dso_local i8* @eap_ttls_implicit_challenge(%struct.eap_sm*, %struct.eap_ttls_data*, i64) #1

declare dso_local i64 @os_memcmp_const(i8*, i8*, i32) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i8*, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i8*, i32) #1

declare dso_local i32 @generate_nt_response_pwhash(i8*, i8*, i8*, i64, i32, i8*) #1

declare dso_local i32 @generate_nt_response(i8*, i8*, i8*, i64, i32, i32, i8*) #1

declare dso_local i32 @generate_authenticator_response_pwhash(i32, i8*, i8*, i8*, i64, i8*, i32) #1

declare dso_local i32 @generate_authenticator_response(i32, i32, i8*, i8*, i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
