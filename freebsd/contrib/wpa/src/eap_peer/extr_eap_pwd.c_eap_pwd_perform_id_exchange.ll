; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_pwd.c_eap_pwd_perform_id_exchange.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_pwd.c_eap_pwd_perform_id_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_pwd_data = type { i64, i64, i64, i32, i32, i32*, i32, i32*, i32*, i32*, i64 }
%struct.eap_method_ret = type { i8* }
%struct.wpabuf = type { i32 }
%struct.eap_pwd_id = type { i64, i64, i64, i32, i32, i32 }

@PWD_ID_Req = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@FAILURE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"EAP-PWD: Server EAP-pwd-ID proposal: group=%u random=%u prf=%u prep=%u\00", align 1
@EAP_PWD_DEFAULT_RAND_FUNC = common dso_local global i64 0, align 8
@EAP_PWD_DEFAULT_PRF = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"EAP-pwd: Unsupported or disabled proposal\00", align 1
@EAP_PWD_PREP_NONE = common dso_local global i64 0, align 8
@EAP_PWD_PREP_MS = common dso_local global i64 0, align 8
@EAP_PWD_PREP_SSHA1 = common dso_local global i64 0, align 8
@EAP_PWD_PREP_SSHA256 = common dso_local global i64 0, align 8
@EAP_PWD_PREP_SSHA512 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [65 x i8] c"EAP-PWD: Unsupported password pre-processing technique (Prep=%u)\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"EAP-PWD: Unhashed password not available\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"EAP-PWD (peer): using group %d\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"EAP-pwd: data was already allocated\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"EAP-PWD: memory allocation id fail\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"EAP-PWD (peer): server sent id of\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"EAP-PWD: failed to allocate memory for group\00", align 1
@PWD_Commit_Req = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_pwd_data*, %struct.eap_method_ret*, %struct.wpabuf*, i32*, i64)* @eap_pwd_perform_id_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_pwd_perform_id_exchange(%struct.eap_sm* %0, %struct.eap_pwd_data* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_pwd_data*, align 8
  %9 = alloca %struct.eap_method_ret*, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.eap_pwd_id*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_pwd_data* %1, %struct.eap_pwd_data** %8, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %9, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %15 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PWD_ID_Req, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %6
  %20 = load i8*, i8** @TRUE, align 8
  %21 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %22 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %24 = load i32, i32* @FAILURE, align 4
  %25 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %23, i32 %24)
  br label %292

26:                                               ; preds = %6
  %27 = load i64, i64* %12, align 8
  %28 = icmp ult i64 %27, 40
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i8*, i8** @TRUE, align 8
  %31 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %32 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %34 = load i32, i32* @FAILURE, align 4
  %35 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %33, i32 %34)
  br label %292

36:                                               ; preds = %26
  %37 = load i32*, i32** %11, align 8
  %38 = bitcast i32* %37 to %struct.eap_pwd_id*
  store %struct.eap_pwd_id* %38, %struct.eap_pwd_id** %13, align 8
  %39 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %13, align 8
  %40 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @be_to_host16(i32 %41)
  %43 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %44 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %47 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %13, align 8
  %50 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %13, align 8
  %53 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %13, align 8
  %56 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %48, i64 %51, i64 %54, i64 %57)
  %59 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %13, align 8
  %60 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @EAP_PWD_DEFAULT_RAND_FUNC, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %77, label %64

64:                                               ; preds = %36
  %65 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %13, align 8
  %66 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @EAP_PWD_DEFAULT_PRF, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %77, label %70

70:                                               ; preds = %64
  %71 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %72 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %73 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @eap_pwd_allowed_group(%struct.eap_pwd_data* %71, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %70, %64, %36
  %78 = load i32, i32* @MSG_INFO, align 4
  %79 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %81 = load i32, i32* @FAILURE, align 4
  %82 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %80, i32 %81)
  br label %292

83:                                               ; preds = %70
  %84 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %13, align 8
  %85 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @EAP_PWD_PREP_NONE, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %122

89:                                               ; preds = %83
  %90 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %13, align 8
  %91 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @EAP_PWD_PREP_MS, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %122

95:                                               ; preds = %89
  %96 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %13, align 8
  %97 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @EAP_PWD_PREP_SSHA1, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %95
  %102 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %13, align 8
  %103 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @EAP_PWD_PREP_SSHA256, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %101
  %108 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %13, align 8
  %109 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @EAP_PWD_PREP_SSHA512, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = load i32, i32* @MSG_DEBUG, align 4
  %115 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %13, align 8
  %116 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = call i32 (i32, i8*, ...) @wpa_printf(i32 %114, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i64 %117)
  %119 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %120 = load i32, i32* @FAILURE, align 4
  %121 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %119, i32 %120)
  br label %292

122:                                              ; preds = %107, %101, %95, %89, %83
  %123 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %13, align 8
  %124 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @EAP_PWD_PREP_NONE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %122
  %129 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %130 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %129, i32 0, i32 10
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load i32, i32* @MSG_DEBUG, align 4
  %135 = call i32 (i32, i8*, ...) @wpa_printf(i32 %134, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %136 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %137 = load i32, i32* @FAILURE, align 4
  %138 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %136, i32 %137)
  br label %292

139:                                              ; preds = %128, %122
  %140 = load i32, i32* @MSG_DEBUG, align 4
  %141 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %142 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i32, i8*, ...) @wpa_printf(i32 %140, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %143)
  %145 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %13, align 8
  %146 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %149 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  %150 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %151 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %150, i32 0, i32 9
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %13, align 8
  %154 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @os_memcpy(i32* %152, i32 %155, i32 4)
  %157 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %158 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %157, i32 0, i32 8
  %159 = load i32*, i32** %158, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %166, label %161

161:                                              ; preds = %139
  %162 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %163 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %162, i32 0, i32 7
  %164 = load i32*, i32** %163, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %172

166:                                              ; preds = %161, %139
  %167 = load i32, i32* @MSG_INFO, align 4
  %168 = call i32 (i32, i8*, ...) @wpa_printf(i32 %167, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %169 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %170 = load i32, i32* @FAILURE, align 4
  %171 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %169, i32 %170)
  br label %292

172:                                              ; preds = %161
  %173 = load i64, i64* %12, align 8
  %174 = sub i64 %173, 40
  %175 = call i32* @os_malloc(i64 %174)
  %176 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %177 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %176, i32 0, i32 8
  store i32* %175, i32** %177, align 8
  %178 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %179 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %178, i32 0, i32 8
  %180 = load i32*, i32** %179, align 8
  %181 = icmp eq i32* %180, null
  br i1 %181, label %182, label %188

182:                                              ; preds = %172
  %183 = load i32, i32* @MSG_INFO, align 4
  %184 = call i32 (i32, i8*, ...) @wpa_printf(i32 %183, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %185 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %186 = load i32, i32* @FAILURE, align 4
  %187 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %185, i32 %186)
  br label %292

188:                                              ; preds = %172
  %189 = load i64, i64* %12, align 8
  %190 = sub i64 %189, 40
  %191 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %192 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %191, i32 0, i32 2
  store i64 %190, i64* %192, align 8
  %193 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %194 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %193, i32 0, i32 8
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %13, align 8
  %197 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %200 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = trunc i64 %201 to i32
  %203 = call i32 @os_memcpy(i32* %195, i32 %198, i32 %202)
  %204 = load i32, i32* @MSG_INFO, align 4
  %205 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %206 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %205, i32 0, i32 8
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %209 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = trunc i64 %210 to i32
  %212 = call i32 @wpa_hexdump_ascii(i32 %204, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32* %207, i32 %211)
  %213 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %214 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 8
  %216 = call i32* @get_eap_pwd_group(i32 %215)
  %217 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %218 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %217, i32 0, i32 7
  store i32* %216, i32** %218, align 8
  %219 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %220 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %219, i32 0, i32 7
  %221 = load i32*, i32** %220, align 8
  %222 = icmp eq i32* %221, null
  br i1 %222, label %223, label %229

223:                                              ; preds = %188
  %224 = load i32, i32* @MSG_INFO, align 4
  %225 = call i32 (i32, i8*, ...) @wpa_printf(i32 %224, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  %226 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %227 = load i32, i32* @FAILURE, align 4
  %228 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %226, i32 %227)
  br label %292

229:                                              ; preds = %188
  %230 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %231 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = add i64 40, %233
  %235 = trunc i64 %234 to i32
  %236 = call i32* @wpabuf_alloc(i32 %235)
  %237 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %238 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %237, i32 0, i32 5
  store i32* %236, i32** %238, align 8
  %239 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %240 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %239, i32 0, i32 5
  %241 = load i32*, i32** %240, align 8
  %242 = icmp eq i32* %241, null
  br i1 %242, label %243, label %247

243:                                              ; preds = %229
  %244 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %245 = load i32, i32* @FAILURE, align 4
  %246 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %244, i32 %245)
  br label %292

247:                                              ; preds = %229
  %248 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %249 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %248, i32 0, i32 5
  %250 = load i32*, i32** %249, align 8
  %251 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %252 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @wpabuf_put_be16(i32* %250, i32 %253)
  %255 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %256 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %255, i32 0, i32 5
  %257 = load i32*, i32** %256, align 8
  %258 = load i64, i64* @EAP_PWD_DEFAULT_RAND_FUNC, align 8
  %259 = call i32 @wpabuf_put_u8(i32* %257, i64 %258)
  %260 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %261 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %260, i32 0, i32 5
  %262 = load i32*, i32** %261, align 8
  %263 = load i64, i64* @EAP_PWD_DEFAULT_PRF, align 8
  %264 = call i32 @wpabuf_put_u8(i32* %262, i64 %263)
  %265 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %266 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %265, i32 0, i32 5
  %267 = load i32*, i32** %266, align 8
  %268 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %13, align 8
  %269 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @wpabuf_put_data(i32* %267, i32 %270, i32 4)
  %272 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %273 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %272, i32 0, i32 5
  %274 = load i32*, i32** %273, align 8
  %275 = load %struct.eap_pwd_id*, %struct.eap_pwd_id** %13, align 8
  %276 = getelementptr inbounds %struct.eap_pwd_id, %struct.eap_pwd_id* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = call i32 @wpabuf_put_u8(i32* %274, i64 %277)
  %279 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %280 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %279, i32 0, i32 5
  %281 = load i32*, i32** %280, align 8
  %282 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %283 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %286 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @wpabuf_put_data(i32* %281, i32 %284, i32 %287)
  %289 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %290 = load i32, i32* @PWD_Commit_Req, align 4
  %291 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %289, i32 %290)
  br label %292

292:                                              ; preds = %247, %243, %223, %182, %166, %133, %113, %77, %29, %19
  ret void
}

declare dso_local i32 @eap_pwd_state(%struct.eap_pwd_data*, i32) #1

declare dso_local i32 @be_to_host16(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_pwd_allowed_group(%struct.eap_pwd_data*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i32) #1

declare dso_local i32* @get_eap_pwd_group(i32) #1

declare dso_local i32* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_be16(i32*, i32) #1

declare dso_local i32 @wpabuf_put_u8(i32*, i64) #1

declare dso_local i32 @wpabuf_put_data(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
