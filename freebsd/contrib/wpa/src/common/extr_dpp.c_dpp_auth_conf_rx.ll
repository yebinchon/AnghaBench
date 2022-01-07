; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_auth_conf_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_auth_conf_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_authentication = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64* }
%struct.TYPE_4__ = type { i64* }

@DPP_MAX_HASH_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unexpected Authentication Confirm\00", align 1
@DPP_ATTR_WRAPPED_DATA = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Missing or invalid required Wrapped Data attribute\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"DPP: Wrapped data\00", align 1
@DPP_ATTR_R_BOOTSTRAP_KEY_HASH = common dso_local global i32 0, align 4
@SHA256_MAC_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [71 x i8] c"Missing or invalid required Responder Bootstrapping Key Hash attribute\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"DPP: Responder Bootstrapping Key Hash\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"DPP: Expected Responder Bootstrapping Key Hash\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Responder Bootstrapping Key Hash mismatch\00", align 1
@DPP_ATTR_I_BOOTSTRAP_KEY_HASH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"Invalid Initiator Bootstrapping Key Hash attribute\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"DPP: Initiator Bootstrapping Key Hash\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Initiator Bootstrapping Key Hash mismatch\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"Missing Initiator Bootstrapping Key Hash attribute\00", align 1
@DPP_ATTR_STATUS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [49 x i8] c"Missing or invalid required DPP Status attribute\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"DPP: Status %u\00", align 1
@DPP_STATUS_NOT_COMPATIBLE = common dso_local global i64 0, align 8
@DPP_STATUS_AUTH_FAILURE = common dso_local global i64 0, align 8
@DPP_STATUS_OK = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [22 x i8] c"Authentication failed\00", align 1
@DPP_HDR_LEN = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [19 x i8] c"DDP: AES-SIV AD[0]\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"DDP: AES-SIV AD[1]\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"DPP: AES-SIV ciphertext\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"AES-SIV decryption failed\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"DPP: AES-SIV cleartext\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"Invalid attribute in unwrapped data\00", align 1
@DPP_ATTR_I_AUTH_TAG = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [48 x i8] c"Missing or invalid Initiator Authenticating Tag\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"DPP: Received Initiator Authenticating Tag\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"DPP: Calculated Initiator Authenticating Tag\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"Mismatching Initiator Authenticating Tag\00", align 1
@DPP_TEST_STOP_AT_AUTH_CONF = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@dpp_test = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpp_auth_conf_rx(%struct.dpp_authentication* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpp_authentication*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca [2 x i64*], align 16
  %21 = alloca [2 x i64], align 16
  %22 = alloca i64*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* null, i64** %22, align 8
  store i64 0, i64* %23, align 8
  %27 = load i32, i32* @DPP_MAX_HASH_LEN, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %24, align 8
  %30 = alloca i64, i64 %28, align 16
  store i64 %28, i64* %25, align 8
  %31 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %32 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %4
  %36 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %37 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %36, i32 0, i32 3
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35, %4
  %41 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %42 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %317

43:                                               ; preds = %35
  %44 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %45 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load i64*, i64** %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* @DPP_ATTR_WRAPPED_DATA, align 4
  %49 = call i64* @dpp_get_attr(i64* %46, i64 %47, i32 %48, i64* %17)
  store i64* %49, i64** %12, align 8
  %50 = load i64*, i64** %12, align 8
  %51 = icmp ne i64* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load i64, i64* %17, align 8
  %54 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52, %43
  %57 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %58 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %57, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %317

59:                                               ; preds = %52
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = load i64*, i64** %12, align 8
  %62 = load i64, i64* %17, align 8
  %63 = call i32 @wpa_hexdump(i32 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64* %61, i64 %62)
  %64 = load i64*, i64** %12, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 -4
  %66 = load i64*, i64** %8, align 8
  %67 = ptrtoint i64* %65 to i64
  %68 = ptrtoint i64* %66 to i64
  %69 = sub i64 %67, %68
  %70 = sdiv exact i64 %69, 8
  store i64 %70, i64* %9, align 8
  %71 = load i64*, i64** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i32, i32* @DPP_ATTR_R_BOOTSTRAP_KEY_HASH, align 4
  %74 = call i64* @dpp_get_attr(i64* %71, i64 %72, i32 %73, i64* %15)
  store i64* %74, i64** %10, align 8
  %75 = load i64*, i64** %10, align 8
  %76 = icmp ne i64* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %59
  %78 = load i64, i64* %15, align 8
  %79 = load i64, i64* @SHA256_MAC_LEN, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77, %59
  %82 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %83 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %82, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %317

84:                                               ; preds = %77
  %85 = load i32, i32* @MSG_DEBUG, align 4
  %86 = load i64*, i64** %10, align 8
  %87 = load i64, i64* %15, align 8
  %88 = call i32 @wpa_hexdump(i32 %85, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64* %86, i64 %87)
  %89 = load i64*, i64** %10, align 8
  %90 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %91 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %90, i32 0, i32 3
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load i64, i64* @SHA256_MAC_LEN, align 8
  %96 = call i64 @os_memcmp(i64* %89, i64* %94, i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %84
  %99 = load i32, i32* @MSG_DEBUG, align 4
  %100 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %101 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %100, i32 0, i32 2
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = load i64, i64* @SHA256_MAC_LEN, align 8
  %106 = call i32 @wpa_hexdump(i32 %99, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i64* %104, i64 %105)
  %107 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %108 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %107, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %317

109:                                              ; preds = %84
  %110 = load i64*, i64** %8, align 8
  %111 = load i64, i64* %9, align 8
  %112 = load i32, i32* @DPP_ATTR_I_BOOTSTRAP_KEY_HASH, align 4
  %113 = call i64* @dpp_get_attr(i64* %110, i64 %111, i32 %112, i64* %16)
  store i64* %113, i64** %11, align 8
  %114 = load i64*, i64** %11, align 8
  %115 = icmp ne i64* %114, null
  br i1 %115, label %116, label %146

116:                                              ; preds = %109
  %117 = load i64, i64* %16, align 8
  %118 = load i64, i64* @SHA256_MAC_LEN, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %122 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %121, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %317

123:                                              ; preds = %116
  %124 = load i32, i32* @MSG_MSGDUMP, align 4
  %125 = load i64*, i64** %11, align 8
  %126 = load i64, i64* %16, align 8
  %127 = call i32 @wpa_hexdump(i32 %124, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i64* %125, i64 %126)
  %128 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %129 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %128, i32 0, i32 2
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = icmp ne %struct.TYPE_5__* %130, null
  br i1 %131, label %132, label %142

132:                                              ; preds = %123
  %133 = load i64*, i64** %11, align 8
  %134 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %135 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %134, i32 0, i32 2
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = load i64, i64* @SHA256_MAC_LEN, align 8
  %140 = call i64 @os_memcmp(i64* %133, i64* %138, i64 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %132, %123
  %143 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %144 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %143, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %317

145:                                              ; preds = %132
  br label %155

146:                                              ; preds = %109
  %147 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %148 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %147, i32 0, i32 2
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = icmp ne %struct.TYPE_5__* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %153 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %152, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %317

154:                                              ; preds = %146
  br label %155

155:                                              ; preds = %154, %145
  %156 = load i64*, i64** %8, align 8
  %157 = load i64, i64* %9, align 8
  %158 = load i32, i32* @DPP_ATTR_STATUS, align 4
  %159 = call i64* @dpp_get_attr(i64* %156, i64 %157, i32 %158, i64* %18)
  store i64* %159, i64** %13, align 8
  %160 = load i64*, i64** %13, align 8
  %161 = icmp ne i64* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load i64, i64* %18, align 8
  %164 = icmp slt i64 %163, 1
  br i1 %164, label %165, label %168

165:                                              ; preds = %162, %155
  %166 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %167 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %166, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %317

168:                                              ; preds = %162
  %169 = load i32, i32* @MSG_DEBUG, align 4
  %170 = load i64*, i64** %13, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 0
  %172 = load i64, i64* %171, align 8
  %173 = call i32 (i32, i8*, ...) @wpa_printf(i32 %169, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i64 %172)
  %174 = load i64*, i64** %13, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @DPP_STATUS_NOT_COMPATIBLE, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %185, label %179

179:                                              ; preds = %168
  %180 = load i64*, i64** %13, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @DPP_STATUS_AUTH_FAILURE, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %196

185:                                              ; preds = %179, %168
  %186 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %187 = load i64*, i64** %7, align 8
  %188 = load i64*, i64** %8, align 8
  %189 = load i64, i64* %9, align 8
  %190 = load i64*, i64** %12, align 8
  %191 = load i64, i64* %17, align 8
  %192 = load i64*, i64** %13, align 8
  %193 = getelementptr inbounds i64, i64* %192, i64 0
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @dpp_auth_conf_rx_failure(%struct.dpp_authentication* %186, i64* %187, i64* %188, i64 %189, i64* %190, i64 %191, i64 %194)
  store i32 %195, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %317

196:                                              ; preds = %179
  %197 = load i64*, i64** %13, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @DPP_STATUS_OK, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %204 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %203, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %317

205:                                              ; preds = %196
  %206 = load i64*, i64** %7, align 8
  %207 = getelementptr inbounds [2 x i64*], [2 x i64*]* %20, i64 0, i64 0
  store i64* %206, i64** %207, align 16
  %208 = load i64, i64* @DPP_HDR_LEN, align 8
  %209 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i64 0, i64 0
  store i64 %208, i64* %209, align 16
  %210 = load i64*, i64** %8, align 8
  %211 = getelementptr inbounds [2 x i64*], [2 x i64*]* %20, i64 0, i64 1
  store i64* %210, i64** %211, align 8
  %212 = load i64, i64* %9, align 8
  %213 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i64 0, i64 1
  store i64 %212, i64* %213, align 8
  %214 = load i32, i32* @MSG_DEBUG, align 4
  %215 = getelementptr inbounds [2 x i64*], [2 x i64*]* %20, i64 0, i64 0
  %216 = load i64*, i64** %215, align 16
  %217 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i64 0, i64 0
  %218 = load i64, i64* %217, align 16
  %219 = call i32 @wpa_hexdump(i32 %214, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i64* %216, i64 %218)
  %220 = load i32, i32* @MSG_DEBUG, align 4
  %221 = getelementptr inbounds [2 x i64*], [2 x i64*]* %20, i64 0, i64 1
  %222 = load i64*, i64** %221, align 8
  %223 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i64 0, i64 1
  %224 = load i64, i64* %223, align 8
  %225 = call i32 @wpa_hexdump(i32 %220, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i64* %222, i64 %224)
  %226 = load i32, i32* @MSG_DEBUG, align 4
  %227 = load i64*, i64** %12, align 8
  %228 = load i64, i64* %17, align 8
  %229 = call i32 @wpa_hexdump(i32 %226, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i64* %227, i64 %228)
  %230 = load i64, i64* %17, align 8
  %231 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %232 = sub nsw i64 %230, %231
  store i64 %232, i64* %23, align 8
  %233 = load i64, i64* %23, align 8
  %234 = call i64* @os_malloc(i64 %233)
  store i64* %234, i64** %22, align 8
  %235 = load i64*, i64** %22, align 8
  %236 = icmp ne i64* %235, null
  br i1 %236, label %238, label %237

237:                                              ; preds = %205
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %317

238:                                              ; preds = %205
  %239 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %240 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %243 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %242, i32 0, i32 0
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64*, i64** %12, align 8
  %248 = load i64, i64* %17, align 8
  %249 = getelementptr inbounds [2 x i64*], [2 x i64*]* %20, i64 0, i64 0
  %250 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i64 0, i64 0
  %251 = load i64*, i64** %22, align 8
  %252 = call i64 @aes_siv_decrypt(i32 %241, i64 %246, i64* %247, i64 %248, i32 2, i64** %249, i64* %250, i64* %251)
  %253 = icmp slt i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %238
  %255 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %256 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %255, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0))
  br label %313

257:                                              ; preds = %238
  %258 = load i32, i32* @MSG_DEBUG, align 4
  %259 = load i64*, i64** %22, align 8
  %260 = load i64, i64* %23, align 8
  %261 = call i32 @wpa_hexdump(i32 %258, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i64* %259, i64 %260)
  %262 = load i64*, i64** %22, align 8
  %263 = load i64, i64* %23, align 8
  %264 = call i64 @dpp_check_attrs(i64* %262, i64 %263)
  %265 = icmp slt i64 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %257
  %267 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %268 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %267, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0))
  br label %313

269:                                              ; preds = %257
  %270 = load i64*, i64** %22, align 8
  %271 = load i64, i64* %23, align 8
  %272 = load i32, i32* @DPP_ATTR_I_AUTH_TAG, align 4
  %273 = call i64* @dpp_get_attr(i64* %270, i64 %271, i32 %272, i64* %19)
  store i64* %273, i64** %14, align 8
  %274 = load i64*, i64** %14, align 8
  %275 = icmp ne i64* %274, null
  br i1 %275, label %276, label %284

276:                                              ; preds = %269
  %277 = load i64, i64* %19, align 8
  %278 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %279 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %278, i32 0, i32 0
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %277, %282
  br i1 %283, label %284, label %287

284:                                              ; preds = %276, %269
  %285 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %286 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %285, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i64 0, i64 0))
  br label %313

287:                                              ; preds = %276
  %288 = load i32, i32* @MSG_DEBUG, align 4
  %289 = load i64*, i64** %14, align 8
  %290 = load i64, i64* %19, align 8
  %291 = call i32 @wpa_hexdump(i32 %288, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i64 0, i64 0), i64* %289, i64 %290)
  %292 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %293 = call i64 @dpp_gen_i_auth(%struct.dpp_authentication* %292, i64* %30)
  %294 = icmp slt i64 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %287
  br label %313

296:                                              ; preds = %287
  %297 = load i32, i32* @MSG_DEBUG, align 4
  %298 = load i64, i64* %19, align 8
  %299 = call i32 @wpa_hexdump(i32 %297, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i64* %30, i64 %298)
  %300 = load i64*, i64** %14, align 8
  %301 = load i64, i64* %19, align 8
  %302 = call i64 @os_memcmp(i64* %300, i64* %30, i64 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %296
  %305 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %306 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %305, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0))
  br label %313

307:                                              ; preds = %296
  %308 = load i64*, i64** %22, align 8
  %309 = load i64, i64* %23, align 8
  %310 = call i32 @bin_clear_free(i64* %308, i64 %309)
  %311 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %312 = call i32 @dpp_auth_success(%struct.dpp_authentication* %311)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %317

313:                                              ; preds = %304, %295, %284, %266, %254
  %314 = load i64*, i64** %22, align 8
  %315 = load i64, i64* %23, align 8
  %316 = call i32 @bin_clear_free(i64* %314, i64 %315)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %317

317:                                              ; preds = %313, %307, %237, %202, %185, %165, %151, %142, %120, %98, %81, %56, %40
  %318 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %318)
  %319 = load i32, i32* %5, align 4
  ret i32 %319
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dpp_auth_fail(%struct.dpp_authentication*, i8*) #2

declare dso_local i64* @dpp_get_attr(i64*, i64, i32, i64*) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #2

declare dso_local i64 @os_memcmp(i64*, i64*, i64) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @dpp_auth_conf_rx_failure(%struct.dpp_authentication*, i64*, i64*, i64, i64*, i64, i64) #2

declare dso_local i64* @os_malloc(i64) #2

declare dso_local i64 @aes_siv_decrypt(i32, i64, i64*, i64, i32, i64**, i64*, i64*) #2

declare dso_local i64 @dpp_check_attrs(i64*, i64) #2

declare dso_local i64 @dpp_gen_i_auth(%struct.dpp_authentication*, i64*) #2

declare dso_local i32 @bin_clear_free(i64*, i64) #2

declare dso_local i32 @dpp_auth_success(%struct.dpp_authentication*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
