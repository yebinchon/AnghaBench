; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_method_ret = type { i64, i8*, i8*, i8* }
%struct.wpabuf = type { i32 }
%struct.eap_aka_data = type { i64, i64, i64 }
%struct.eap_hdr = type { i32, i32 }
%struct.eap_sim_attrs = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"EAP-AKA: EAP data\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"EAP-AKA: Identity not configured\00", align 1
@TRUE = common dso_local global i8* null, align 8
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@METHOD_MAY_CONT = common dso_local global i64 0, align 8
@DECISION_FAIL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"EAP-AKA: Subtype=%d\00", align 1
@EAP_TYPE_AKA_PRIME = common dso_local global i64 0, align 8
@EAP_AKA_UNABLE_TO_PROCESS_PACKET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"EAP-AKA: subtype Client-Error\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"EAP-AKA: Unknown subtype=%d\00", align 1
@FAILURE = common dso_local global i64 0, align 8
@METHOD_DONE = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i64 0, align 8
@DECISION_UNCOND_SUCC = common dso_local global i8* null, align 8
@DECISION_COND_SUCC = common dso_local global i8* null, align 8
@RESULT_SUCCESS = common dso_local global i64 0, align 8
@METHOD_CONT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_aka_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_aka_process(%struct.eap_sm* %0, i8* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.eap_aka_data*, align 8
  %11 = alloca %struct.eap_hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.eap_sim_attrs, align 4
  %17 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.eap_aka_data*
  store %struct.eap_aka_data* %19, %struct.eap_aka_data** %10, align 8
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %22 = call i32 @wpa_hexdump_buf(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.wpabuf* %21)
  %23 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %24 = call i32* @eap_get_config_identity(%struct.eap_sm* %23, i64* %17)
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = load i32, i32* @MSG_INFO, align 4
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %30 = call i32 @eap_sm_request_identity(%struct.eap_sm* %29)
  %31 = load i8*, i8** @TRUE, align 8
  %32 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %33 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %209

34:                                               ; preds = %4
  %35 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %36 = load %struct.eap_aka_data*, %struct.eap_aka_data** %10, align 8
  %37 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %40 = call i32* @eap_hdr_validate(i32 %35, i64 %38, %struct.wpabuf* %39, i64* %17)
  store i32* %40, i32** %15, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %34
  %44 = load i64, i64* %17, align 8
  %45 = icmp ult i64 %44, 3
  br i1 %45, label %46, label %50

46:                                               ; preds = %43, %34
  %47 = load i8*, i8** @TRUE, align 8
  %48 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %49 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %209

50:                                               ; preds = %43
  %51 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %52 = call %struct.eap_hdr* @wpabuf_head(%struct.wpabuf* %51)
  store %struct.eap_hdr* %52, %struct.eap_hdr** %11, align 8
  %53 = load %struct.eap_hdr*, %struct.eap_hdr** %11, align 8
  %54 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %13, align 4
  %56 = load %struct.eap_hdr*, %struct.eap_hdr** %11, align 8
  %57 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @be_to_host16(i32 %58)
  store i64 %59, i64* %17, align 8
  %60 = load i8*, i8** @FALSE, align 8
  %61 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %62 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load i64, i64* @METHOD_MAY_CONT, align 8
  %64 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %65 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i8*, i8** @DECISION_FAIL, align 8
  %67 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %68 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @TRUE, align 8
  %70 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %71 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load i32*, i32** %15, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %15, align 8
  %74 = load i32, i32* %72, align 4
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32*, i32** %15, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  store i32* %79, i32** %15, align 8
  %80 = load i32*, i32** %15, align 8
  %81 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %82 = call i64 @wpabuf_head_u8(%struct.wpabuf* %81)
  %83 = load i64, i64* %17, align 8
  %84 = add i64 %82, %83
  %85 = load %struct.eap_aka_data*, %struct.eap_aka_data** %10, align 8
  %86 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @EAP_TYPE_AKA_PRIME, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 2, i32 1
  %92 = call i64 @eap_sim_parse_attr(i32* %80, i64 %84, %struct.eap_sim_attrs* %16, i32 %91, i32 0)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %50
  %95 = load %struct.eap_aka_data*, %struct.eap_aka_data** %10, align 8
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @EAP_AKA_UNABLE_TO_PROCESS_PACKET, align 4
  %98 = call %struct.wpabuf* @eap_aka_client_error(%struct.eap_aka_data* %95, i32 %96, i32 %97)
  store %struct.wpabuf* %98, %struct.wpabuf** %14, align 8
  br label %141

99:                                               ; preds = %50
  %100 = load i32, i32* %12, align 4
  switch i32 %100, label %132 [
    i32 130, label %101
    i32 132, label %107
    i32 129, label %113
    i32 128, label %119
    i32 131, label %125
  ]

101:                                              ; preds = %99
  %102 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %103 = load %struct.eap_aka_data*, %struct.eap_aka_data** %10, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %106 = call %struct.wpabuf* @eap_aka_process_identity(%struct.eap_sm* %102, %struct.eap_aka_data* %103, i32 %104, %struct.wpabuf* %105, %struct.eap_sim_attrs* %16)
  store %struct.wpabuf* %106, %struct.wpabuf** %14, align 8
  br label %140

107:                                              ; preds = %99
  %108 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %109 = load %struct.eap_aka_data*, %struct.eap_aka_data** %10, align 8
  %110 = load i32, i32* %13, align 4
  %111 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %112 = call %struct.wpabuf* @eap_aka_process_challenge(%struct.eap_sm* %108, %struct.eap_aka_data* %109, i32 %110, %struct.wpabuf* %111, %struct.eap_sim_attrs* %16)
  store %struct.wpabuf* %112, %struct.wpabuf** %14, align 8
  br label %140

113:                                              ; preds = %99
  %114 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %115 = load %struct.eap_aka_data*, %struct.eap_aka_data** %10, align 8
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %118 = call %struct.wpabuf* @eap_aka_process_notification(%struct.eap_sm* %114, %struct.eap_aka_data* %115, i32 %116, %struct.wpabuf* %117, %struct.eap_sim_attrs* %16)
  store %struct.wpabuf* %118, %struct.wpabuf** %14, align 8
  br label %140

119:                                              ; preds = %99
  %120 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %121 = load %struct.eap_aka_data*, %struct.eap_aka_data** %10, align 8
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %124 = call %struct.wpabuf* @eap_aka_process_reauthentication(%struct.eap_sm* %120, %struct.eap_aka_data* %121, i32 %122, %struct.wpabuf* %123, %struct.eap_sim_attrs* %16)
  store %struct.wpabuf* %124, %struct.wpabuf** %14, align 8
  br label %140

125:                                              ; preds = %99
  %126 = load i32, i32* @MSG_DEBUG, align 4
  %127 = call i32 (i32, i8*, ...) @wpa_printf(i32 %126, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %128 = load %struct.eap_aka_data*, %struct.eap_aka_data** %10, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* @EAP_AKA_UNABLE_TO_PROCESS_PACKET, align 4
  %131 = call %struct.wpabuf* @eap_aka_client_error(%struct.eap_aka_data* %128, i32 %129, i32 %130)
  store %struct.wpabuf* %131, %struct.wpabuf** %14, align 8
  br label %140

132:                                              ; preds = %99
  %133 = load i32, i32* @MSG_DEBUG, align 4
  %134 = load i32, i32* %12, align 4
  %135 = call i32 (i32, i8*, ...) @wpa_printf(i32 %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  %136 = load %struct.eap_aka_data*, %struct.eap_aka_data** %10, align 8
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* @EAP_AKA_UNABLE_TO_PROCESS_PACKET, align 4
  %139 = call %struct.wpabuf* @eap_aka_client_error(%struct.eap_aka_data* %136, i32 %137, i32 %138)
  store %struct.wpabuf* %139, %struct.wpabuf** %14, align 8
  br label %140

140:                                              ; preds = %132, %125, %119, %113, %107, %101
  br label %141

141:                                              ; preds = %140, %94
  %142 = load %struct.eap_aka_data*, %struct.eap_aka_data** %10, align 8
  %143 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @FAILURE, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %141
  %148 = load i8*, i8** @DECISION_FAIL, align 8
  %149 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %150 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %149, i32 0, i32 2
  store i8* %148, i8** %150, align 8
  %151 = load i64, i64* @METHOD_DONE, align 8
  %152 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %153 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  br label %197

154:                                              ; preds = %141
  %155 = load %struct.eap_aka_data*, %struct.eap_aka_data** %10, align 8
  %156 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @SUCCESS, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %185

160:                                              ; preds = %154
  %161 = load %struct.eap_aka_data*, %struct.eap_aka_data** %10, align 8
  %162 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i8*, i8** @DECISION_UNCOND_SUCC, align 8
  br label %169

167:                                              ; preds = %160
  %168 = load i8*, i8** @DECISION_COND_SUCC, align 8
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi i8* [ %166, %165 ], [ %168, %167 ]
  %171 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %172 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %171, i32 0, i32 2
  store i8* %170, i8** %172, align 8
  %173 = load %struct.eap_aka_data*, %struct.eap_aka_data** %10, align 8
  %174 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %169
  %178 = load i64, i64* @METHOD_DONE, align 8
  br label %181

179:                                              ; preds = %169
  %180 = load i64, i64* @METHOD_MAY_CONT, align 8
  br label %181

181:                                              ; preds = %179, %177
  %182 = phi i64 [ %178, %177 ], [ %180, %179 ]
  %183 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %184 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %183, i32 0, i32 0
  store i64 %182, i64* %184, align 8
  br label %196

185:                                              ; preds = %154
  %186 = load %struct.eap_aka_data*, %struct.eap_aka_data** %10, align 8
  %187 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @RESULT_SUCCESS, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %185
  %192 = load i64, i64* @METHOD_CONT, align 8
  %193 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %194 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %193, i32 0, i32 0
  store i64 %192, i64* %194, align 8
  br label %195

195:                                              ; preds = %191, %185
  br label %196

196:                                              ; preds = %195, %181
  br label %197

197:                                              ; preds = %196, %147
  %198 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %199 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @METHOD_DONE, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %197
  %204 = load i8*, i8** @FALSE, align 8
  %205 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %206 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %205, i32 0, i32 1
  store i8* %204, i8** %206, align 8
  br label %207

207:                                              ; preds = %203, %197
  %208 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  store %struct.wpabuf* %208, %struct.wpabuf** %5, align 8
  br label %209

209:                                              ; preds = %207, %46, %26
  %210 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %210
}

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i32* @eap_get_config_identity(%struct.eap_sm*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_sm_request_identity(%struct.eap_sm*) #1

declare dso_local i32* @eap_hdr_validate(i32, i64, %struct.wpabuf*, i64*) #1

declare dso_local %struct.eap_hdr* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i64 @be_to_host16(i32) #1

declare dso_local i64 @eap_sim_parse_attr(i32*, i64, %struct.eap_sim_attrs*, i32, i32) #1

declare dso_local i64 @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @eap_aka_client_error(%struct.eap_aka_data*, i32, i32) #1

declare dso_local %struct.wpabuf* @eap_aka_process_identity(%struct.eap_sm*, %struct.eap_aka_data*, i32, %struct.wpabuf*, %struct.eap_sim_attrs*) #1

declare dso_local %struct.wpabuf* @eap_aka_process_challenge(%struct.eap_sm*, %struct.eap_aka_data*, i32, %struct.wpabuf*, %struct.eap_sim_attrs*) #1

declare dso_local %struct.wpabuf* @eap_aka_process_notification(%struct.eap_sm*, %struct.eap_aka_data*, i32, %struct.wpabuf*, %struct.eap_sim_attrs*) #1

declare dso_local %struct.wpabuf* @eap_aka_process_reauthentication(%struct.eap_sm*, %struct.eap_aka_data*, i32, %struct.wpabuf*, %struct.eap_sim_attrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
