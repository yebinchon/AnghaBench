; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_conf_req_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_conf_req_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.dpp_authentication = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.json_token = type { i64, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Invalid attribute in config request\00", align 1
@DPP_ATTR_WRAPPED_DATA = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Missing or invalid required Wrapped Data attribute\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"DPP: AES-SIV ciphertext\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"AES-SIV decryption failed\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"DPP: AES-SIV cleartext\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Invalid attribute in unwrapped data\00", align 1
@DPP_ATTR_ENROLLEE_NONCE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"Missing or invalid Enrollee Nonce attribute\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"DPP: Enrollee Nonce\00", align 1
@DPP_ATTR_CONFIG_ATTR_OBJ = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [47 x i8] c"Missing or invalid Config Attributes attribute\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"DPP: Config Attributes\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Could not parse Config Attributes\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@JSON_STRING = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [28 x i8] c"No Config Attributes - name\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"DPP: Enrollee name = '%s'\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"wi-fi_tech\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"No Config Attributes - wi-fi_tech\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"DPP: wi-fi_tech = '%s'\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"infra\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"DPP: Unsupported wi-fi_tech '%s'\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Unsupported wi-fi_tech\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"netRole\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"No Config Attributes - netRole\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"DPP: netRole = '%s'\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"sta\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"ap\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"DPP: Unsupported netRole '%s'\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"Unsupported netRole\00", align 1
@DPP_TEST_STOP_AT_CONF_REQ = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@dpp_test = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @dpp_conf_req_rx(%struct.dpp_authentication* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.dpp_authentication*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.wpabuf*, align 8
  %17 = alloca %struct.json_token*, align 8
  %18 = alloca %struct.json_token*, align 8
  %19 = alloca i32, align 4
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %14, align 8
  store i64 0, i64* %15, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %16, align 8
  store %struct.json_token* null, %struct.json_token** %17, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @dpp_check_attrs(i32* %20, i64 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %26 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %241

27:                                               ; preds = %3
  %28 = load i32*, i32** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* @DPP_ATTR_WRAPPED_DATA, align 4
  %31 = call i32* @dpp_get_attr(i32* %28, i64 %29, i32 %30, i64* %11)
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34, %27
  %39 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %40 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %39, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %241

41:                                               ; preds = %34
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @wpa_hexdump(i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %43, i64 %44)
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %48 = sub nsw i64 %46, %47
  store i64 %48, i64* %15, align 8
  %49 = load i64, i64* %15, align 8
  %50 = call i32* @os_malloc(i64 %49)
  store i32* %50, i32** %14, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %241

54:                                               ; preds = %41
  %55 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %56 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %59 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = call i64 @aes_siv_decrypt(i32 %57, i32 %62, i32* %63, i64 %64, i32 0, i32* null, i32* null, i32* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %54
  %69 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %70 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %235

71:                                               ; preds = %54
  %72 = load i32, i32* @MSG_DEBUG, align 4
  %73 = load i32*, i32** %14, align 8
  %74 = load i64, i64* %15, align 8
  %75 = call i32 @wpa_hexdump(i32 %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32* %73, i64 %74)
  %76 = load i32*, i32** %14, align 8
  %77 = load i64, i64* %15, align 8
  %78 = call i64 @dpp_check_attrs(i32* %76, i64 %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %82 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %235

83:                                               ; preds = %71
  %84 = load i32*, i32** %14, align 8
  %85 = load i64, i64* %15, align 8
  %86 = load i32, i32* @DPP_ATTR_ENROLLEE_NONCE, align 4
  %87 = call i32* @dpp_get_attr(i32* %84, i64 %85, i32 %86, i64* %12)
  store i32* %87, i32** %9, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load i64, i64* %12, align 8
  %92 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %93 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %91, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %90, %83
  %99 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %100 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %99, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %235

101:                                              ; preds = %90
  %102 = load i32, i32* @MSG_DEBUG, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = load i64, i64* %12, align 8
  %105 = call i32 @wpa_hexdump(i32 %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32* %103, i64 %104)
  %106 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %107 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = load i64, i64* %12, align 8
  %111 = call i32 @os_memcpy(i32 %108, i32* %109, i64 %110)
  %112 = load i32*, i32** %14, align 8
  %113 = load i64, i64* %15, align 8
  %114 = load i32, i32* @DPP_ATTR_CONFIG_ATTR_OBJ, align 4
  %115 = call i32* @dpp_get_attr(i32* %112, i64 %113, i32 %114, i64* %13)
  store i32* %115, i32** %10, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %101
  %119 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %120 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %119, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  br label %235

121:                                              ; preds = %101
  %122 = load i32, i32* @MSG_DEBUG, align 4
  %123 = load i32*, i32** %10, align 8
  %124 = load i64, i64* %13, align 8
  %125 = call i32 @wpa_hexdump_ascii(i32 %122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32* %123, i64 %124)
  %126 = load i32*, i32** %10, align 8
  %127 = bitcast i32* %126 to i8*
  %128 = load i64, i64* %13, align 8
  %129 = call %struct.json_token* @json_parse(i8* %127, i64 %128)
  store %struct.json_token* %129, %struct.json_token** %17, align 8
  %130 = load %struct.json_token*, %struct.json_token** %17, align 8
  %131 = icmp ne %struct.json_token* %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %121
  %133 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %134 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %133, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %235

135:                                              ; preds = %121
  %136 = load %struct.json_token*, %struct.json_token** %17, align 8
  %137 = call %struct.json_token* @json_get_member(%struct.json_token* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  store %struct.json_token* %137, %struct.json_token** %18, align 8
  %138 = load %struct.json_token*, %struct.json_token** %18, align 8
  %139 = icmp ne %struct.json_token* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load %struct.json_token*, %struct.json_token** %18, align 8
  %142 = getelementptr inbounds %struct.json_token, %struct.json_token* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @JSON_STRING, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %140, %135
  %147 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %148 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %147, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  br label %235

149:                                              ; preds = %140
  %150 = load i32, i32* @MSG_DEBUG, align 4
  %151 = load %struct.json_token*, %struct.json_token** %18, align 8
  %152 = getelementptr inbounds %struct.json_token, %struct.json_token* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (i32, i8*, ...) @wpa_printf(i32 %150, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %153)
  %155 = load %struct.json_token*, %struct.json_token** %17, align 8
  %156 = call %struct.json_token* @json_get_member(%struct.json_token* %155, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  store %struct.json_token* %156, %struct.json_token** %18, align 8
  %157 = load %struct.json_token*, %struct.json_token** %18, align 8
  %158 = icmp ne %struct.json_token* %157, null
  br i1 %158, label %159, label %165

159:                                              ; preds = %149
  %160 = load %struct.json_token*, %struct.json_token** %18, align 8
  %161 = getelementptr inbounds %struct.json_token, %struct.json_token* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @JSON_STRING, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %159, %149
  %166 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %167 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %166, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
  br label %235

168:                                              ; preds = %159
  %169 = load i32, i32* @MSG_DEBUG, align 4
  %170 = load %struct.json_token*, %struct.json_token** %18, align 8
  %171 = getelementptr inbounds %struct.json_token, %struct.json_token* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (i32, i8*, ...) @wpa_printf(i32 %169, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 %172)
  %174 = load %struct.json_token*, %struct.json_token** %18, align 8
  %175 = getelementptr inbounds %struct.json_token, %struct.json_token* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i64 @os_strcmp(i32 %176, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %168
  %180 = load i32, i32* @MSG_DEBUG, align 4
  %181 = load %struct.json_token*, %struct.json_token** %18, align 8
  %182 = getelementptr inbounds %struct.json_token, %struct.json_token* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 (i32, i8*, ...) @wpa_printf(i32 %180, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i32 %183)
  %185 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %186 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %185, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  br label %235

187:                                              ; preds = %168
  %188 = load %struct.json_token*, %struct.json_token** %17, align 8
  %189 = call %struct.json_token* @json_get_member(%struct.json_token* %188, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  store %struct.json_token* %189, %struct.json_token** %18, align 8
  %190 = load %struct.json_token*, %struct.json_token** %18, align 8
  %191 = icmp ne %struct.json_token* %190, null
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = load %struct.json_token*, %struct.json_token** %18, align 8
  %194 = getelementptr inbounds %struct.json_token, %struct.json_token* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @JSON_STRING, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %192, %187
  %199 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %200 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %199, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0))
  br label %235

201:                                              ; preds = %192
  %202 = load i32, i32* @MSG_DEBUG, align 4
  %203 = load %struct.json_token*, %struct.json_token** %18, align 8
  %204 = getelementptr inbounds %struct.json_token, %struct.json_token* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = call i32 (i32, i8*, ...) @wpa_printf(i32 %202, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32 %205)
  %207 = load %struct.json_token*, %struct.json_token** %18, align 8
  %208 = getelementptr inbounds %struct.json_token, %struct.json_token* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = call i64 @os_strcmp(i32 %209, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %201
  store i32 0, i32* %19, align 4
  br label %229

213:                                              ; preds = %201
  %214 = load %struct.json_token*, %struct.json_token** %18, align 8
  %215 = getelementptr inbounds %struct.json_token, %struct.json_token* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = call i64 @os_strcmp(i32 %216, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  store i32 1, i32* %19, align 4
  br label %228

220:                                              ; preds = %213
  %221 = load i32, i32* @MSG_DEBUG, align 4
  %222 = load %struct.json_token*, %struct.json_token** %18, align 8
  %223 = getelementptr inbounds %struct.json_token, %struct.json_token* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = call i32 (i32, i8*, ...) @wpa_printf(i32 %221, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0), i32 %224)
  %226 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %227 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %226, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0))
  br label %235

228:                                              ; preds = %219
  br label %229

229:                                              ; preds = %228, %212
  %230 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %231 = load i32*, i32** %9, align 8
  %232 = load i64, i64* %12, align 8
  %233 = load i32, i32* %19, align 4
  %234 = call %struct.wpabuf* @dpp_build_conf_resp(%struct.dpp_authentication* %230, i32* %231, i64 %232, i32 %233)
  store %struct.wpabuf* %234, %struct.wpabuf** %16, align 8
  br label %235

235:                                              ; preds = %229, %220, %198, %179, %165, %146, %132, %118, %98, %80, %68
  %236 = load %struct.json_token*, %struct.json_token** %17, align 8
  %237 = call i32 @json_free(%struct.json_token* %236)
  %238 = load i32*, i32** %14, align 8
  %239 = call i32 @os_free(i32* %238)
  %240 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  store %struct.wpabuf* %240, %struct.wpabuf** %4, align 8
  br label %241

241:                                              ; preds = %235, %53, %38, %24
  %242 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %242
}

declare dso_local i64 @dpp_check_attrs(i32*, i64) #1

declare dso_local i32 @dpp_auth_fail(%struct.dpp_authentication*, i8*) #1

declare dso_local i32* @dpp_get_attr(i32*, i64, i32, i64*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i64 @aes_siv_decrypt(i32, i32, i32*, i64, i32, i32*, i32*, i32*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i64) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local %struct.json_token* @json_parse(i8*, i64) #1

declare dso_local %struct.json_token* @json_get_member(%struct.json_token*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_strcmp(i32, i8*) #1

declare dso_local %struct.wpabuf* @dpp_build_conf_resp(%struct.dpp_authentication*, i32*, i64, i32) #1

declare dso_local i32 @json_free(%struct.json_token*) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
