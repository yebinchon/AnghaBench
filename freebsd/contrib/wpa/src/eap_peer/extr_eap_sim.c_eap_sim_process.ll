; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_method_ret = type { i64, i8*, i8*, i8* }
%struct.wpabuf = type { i32 }
%struct.eap_sim_data = type { i64, i64 }
%struct.eap_hdr = type { i32, i32 }
%struct.eap_sim_attrs = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"EAP-SIM: EAP data\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"EAP-SIM: Identity not configured\00", align 1
@TRUE = common dso_local global i8* null, align 8
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_SIM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@METHOD_MAY_CONT = common dso_local global i64 0, align 8
@DECISION_FAIL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"EAP-SIM: Subtype=%d\00", align 1
@EAP_SIM_UNABLE_TO_PROCESS_PACKET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"EAP-SIM: subtype Client-Error\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"EAP-SIM: Unknown subtype=%d\00", align 1
@FAILURE = common dso_local global i64 0, align 8
@METHOD_DONE = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i64 0, align 8
@DECISION_UNCOND_SUCC = common dso_local global i8* null, align 8
@DECISION_COND_SUCC = common dso_local global i8* null, align 8
@RESULT_SUCCESS = common dso_local global i64 0, align 8
@METHOD_CONT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_sim_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sim_process(%struct.eap_sm* %0, i8* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.eap_sim_data*, align 8
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
  %19 = bitcast i8* %18 to %struct.eap_sim_data*
  store %struct.eap_sim_data* %19, %struct.eap_sim_data** %10, align 8
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
  br label %199

34:                                               ; preds = %4
  %35 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %36 = load i32, i32* @EAP_TYPE_SIM, align 4
  %37 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %38 = call i32* @eap_hdr_validate(i32 %35, i32 %36, %struct.wpabuf* %37, i64* %17)
  store i32* %38, i32** %15, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i64, i64* %17, align 8
  %43 = icmp ult i64 %42, 3
  br i1 %43, label %44, label %48

44:                                               ; preds = %41, %34
  %45 = load i8*, i8** @TRUE, align 8
  %46 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %47 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %199

48:                                               ; preds = %41
  %49 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %50 = call %struct.eap_hdr* @wpabuf_head(%struct.wpabuf* %49)
  store %struct.eap_hdr* %50, %struct.eap_hdr** %11, align 8
  %51 = load %struct.eap_hdr*, %struct.eap_hdr** %11, align 8
  %52 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %13, align 4
  %54 = load %struct.eap_hdr*, %struct.eap_hdr** %11, align 8
  %55 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @be_to_host16(i32 %56)
  store i64 %57, i64* %17, align 8
  %58 = load i8*, i8** @FALSE, align 8
  %59 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %60 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load i64, i64* @METHOD_MAY_CONT, align 8
  %62 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %63 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i8*, i8** @DECISION_FAIL, align 8
  %65 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %66 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load i8*, i8** @TRUE, align 8
  %68 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %69 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %15, align 8
  %72 = load i32, i32* %70, align 4
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* @MSG_DEBUG, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 (i32, i8*, ...) @wpa_printf(i32 %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32*, i32** %15, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  store i32* %77, i32** %15, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %80 = call i64 @wpabuf_head_u8(%struct.wpabuf* %79)
  %81 = load i64, i64* %17, align 8
  %82 = add i64 %80, %81
  %83 = call i64 @eap_sim_parse_attr(i32* %78, i64 %82, %struct.eap_sim_attrs* %16, i32 0, i32 0)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %48
  %86 = load %struct.eap_sim_data*, %struct.eap_sim_data** %10, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @EAP_SIM_UNABLE_TO_PROCESS_PACKET, align 4
  %89 = call %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data* %86, i32 %87, i32 %88)
  store %struct.wpabuf* %89, %struct.wpabuf** %14, align 8
  br label %131

90:                                               ; preds = %48
  %91 = load i32, i32* %12, align 4
  switch i32 %91, label %122 [
    i32 128, label %92
    i32 132, label %97
    i32 130, label %103
    i32 129, label %109
    i32 131, label %115
  ]

92:                                               ; preds = %90
  %93 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %94 = load %struct.eap_sim_data*, %struct.eap_sim_data** %10, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call %struct.wpabuf* @eap_sim_process_start(%struct.eap_sm* %93, %struct.eap_sim_data* %94, i32 %95, %struct.eap_sim_attrs* %16)
  store %struct.wpabuf* %96, %struct.wpabuf** %14, align 8
  br label %130

97:                                               ; preds = %90
  %98 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %99 = load %struct.eap_sim_data*, %struct.eap_sim_data** %10, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %102 = call %struct.wpabuf* @eap_sim_process_challenge(%struct.eap_sm* %98, %struct.eap_sim_data* %99, i32 %100, %struct.wpabuf* %101, %struct.eap_sim_attrs* %16)
  store %struct.wpabuf* %102, %struct.wpabuf** %14, align 8
  br label %130

103:                                              ; preds = %90
  %104 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %105 = load %struct.eap_sim_data*, %struct.eap_sim_data** %10, align 8
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %108 = call %struct.wpabuf* @eap_sim_process_notification(%struct.eap_sm* %104, %struct.eap_sim_data* %105, i32 %106, %struct.wpabuf* %107, %struct.eap_sim_attrs* %16)
  store %struct.wpabuf* %108, %struct.wpabuf** %14, align 8
  br label %130

109:                                              ; preds = %90
  %110 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %111 = load %struct.eap_sim_data*, %struct.eap_sim_data** %10, align 8
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %114 = call %struct.wpabuf* @eap_sim_process_reauthentication(%struct.eap_sm* %110, %struct.eap_sim_data* %111, i32 %112, %struct.wpabuf* %113, %struct.eap_sim_attrs* %16)
  store %struct.wpabuf* %114, %struct.wpabuf** %14, align 8
  br label %130

115:                                              ; preds = %90
  %116 = load i32, i32* @MSG_DEBUG, align 4
  %117 = call i32 (i32, i8*, ...) @wpa_printf(i32 %116, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %118 = load %struct.eap_sim_data*, %struct.eap_sim_data** %10, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @EAP_SIM_UNABLE_TO_PROCESS_PACKET, align 4
  %121 = call %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data* %118, i32 %119, i32 %120)
  store %struct.wpabuf* %121, %struct.wpabuf** %14, align 8
  br label %130

122:                                              ; preds = %90
  %123 = load i32, i32* @MSG_DEBUG, align 4
  %124 = load i32, i32* %12, align 4
  %125 = call i32 (i32, i8*, ...) @wpa_printf(i32 %123, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  %126 = load %struct.eap_sim_data*, %struct.eap_sim_data** %10, align 8
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* @EAP_SIM_UNABLE_TO_PROCESS_PACKET, align 4
  %129 = call %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data* %126, i32 %127, i32 %128)
  store %struct.wpabuf* %129, %struct.wpabuf** %14, align 8
  br label %130

130:                                              ; preds = %122, %115, %109, %103, %97, %92
  br label %131

131:                                              ; preds = %130, %85
  %132 = load %struct.eap_sim_data*, %struct.eap_sim_data** %10, align 8
  %133 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @FAILURE, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load i8*, i8** @DECISION_FAIL, align 8
  %139 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %140 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %139, i32 0, i32 2
  store i8* %138, i8** %140, align 8
  %141 = load i64, i64* @METHOD_DONE, align 8
  %142 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %143 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  br label %187

144:                                              ; preds = %131
  %145 = load %struct.eap_sim_data*, %struct.eap_sim_data** %10, align 8
  %146 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @SUCCESS, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %175

150:                                              ; preds = %144
  %151 = load %struct.eap_sim_data*, %struct.eap_sim_data** %10, align 8
  %152 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = load i8*, i8** @DECISION_UNCOND_SUCC, align 8
  br label %159

157:                                              ; preds = %150
  %158 = load i8*, i8** @DECISION_COND_SUCC, align 8
  br label %159

159:                                              ; preds = %157, %155
  %160 = phi i8* [ %156, %155 ], [ %158, %157 ]
  %161 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %162 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %161, i32 0, i32 2
  store i8* %160, i8** %162, align 8
  %163 = load %struct.eap_sim_data*, %struct.eap_sim_data** %10, align 8
  %164 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %159
  %168 = load i64, i64* @METHOD_DONE, align 8
  br label %171

169:                                              ; preds = %159
  %170 = load i64, i64* @METHOD_MAY_CONT, align 8
  br label %171

171:                                              ; preds = %169, %167
  %172 = phi i64 [ %168, %167 ], [ %170, %169 ]
  %173 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %174 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %173, i32 0, i32 0
  store i64 %172, i64* %174, align 8
  br label %186

175:                                              ; preds = %144
  %176 = load %struct.eap_sim_data*, %struct.eap_sim_data** %10, align 8
  %177 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @RESULT_SUCCESS, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %185

181:                                              ; preds = %175
  %182 = load i64, i64* @METHOD_CONT, align 8
  %183 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %184 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %183, i32 0, i32 0
  store i64 %182, i64* %184, align 8
  br label %185

185:                                              ; preds = %181, %175
  br label %186

186:                                              ; preds = %185, %171
  br label %187

187:                                              ; preds = %186, %137
  %188 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %189 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @METHOD_DONE, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = load i8*, i8** @FALSE, align 8
  %195 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %196 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %195, i32 0, i32 1
  store i8* %194, i8** %196, align 8
  br label %197

197:                                              ; preds = %193, %187
  %198 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  store %struct.wpabuf* %198, %struct.wpabuf** %5, align 8
  br label %199

199:                                              ; preds = %197, %44, %26
  %200 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %200
}

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i32* @eap_get_config_identity(%struct.eap_sm*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_sm_request_identity(%struct.eap_sm*) #1

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local %struct.eap_hdr* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i64 @be_to_host16(i32) #1

declare dso_local i64 @eap_sim_parse_attr(i32*, i64, %struct.eap_sim_attrs*, i32, i32) #1

declare dso_local i64 @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data*, i32, i32) #1

declare dso_local %struct.wpabuf* @eap_sim_process_start(%struct.eap_sm*, %struct.eap_sim_data*, i32, %struct.eap_sim_attrs*) #1

declare dso_local %struct.wpabuf* @eap_sim_process_challenge(%struct.eap_sm*, %struct.eap_sim_data*, i32, %struct.wpabuf*, %struct.eap_sim_attrs*) #1

declare dso_local %struct.wpabuf* @eap_sim_process_notification(%struct.eap_sm*, %struct.eap_sim_data*, i32, %struct.wpabuf*, %struct.eap_sim_attrs*) #1

declare dso_local %struct.wpabuf* @eap_sim_process_reauthentication(%struct.eap_sm*, %struct.eap_sim_data*, i32, %struct.wpabuf*, %struct.eap_sim_attrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
