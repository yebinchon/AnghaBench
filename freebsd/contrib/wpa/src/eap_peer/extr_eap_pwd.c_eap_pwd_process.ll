; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_pwd.c_eap_pwd_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_pwd.c_eap_pwd_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_method_ret = type { i8*, i8*, i8*, i8* }
%struct.wpabuf = type { i32 }
%struct.eap_pwd_data = type { i64, i64, i64, i64, %struct.wpabuf*, %struct.wpabuf* }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_PWD = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"EAP-pwd: Got a frame but pos is %s and len is %d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"not NULL\00", align 1
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@METHOD_MAY_CONT = common dso_local global i8* null, align 8
@DECISION_FAIL = common dso_local global i8* null, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Bad Response! Fragmenting but not an ACK\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"EAP-pwd: Got an ACK for a fragment\00", align 1
@EAP_PWD_HDR_SIZE = common dso_local global i64 0, align 8
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"Unable to allocate memory for next fragment!\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"EAP-pwd: Send %s fragment of %d bytes\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@SUCCESS_ON_FRAG_COMPLETION = common dso_local global i64 0, align 8
@METHOD_DONE = common dso_local global i8* null, align 8
@DECISION_UNCOND_SUCC = common dso_local global i8* null, align 8
@SUCCESS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [55 x i8] c"EAP-pwd: Frame too short to contain Total-Length field\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"EAP-pwd: Incoming fragments whose total length = %d\00", align 1
@.str.11 = private unnamed_addr constant [78 x i8] c"EAP-pwd: Unexpected new fragment start when previous fragment is still in use\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Out of memory to buffer fragments!\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"EAP-pwd: No buffer for reassembly\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"EAP-pwd: Buffer overflow attack detected (%d vs. %d)!\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"EAP-pwd: ACKing a %d byte fragment\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"EAP-pwd: Last fragment, %d bytes\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"EAP-pwd: processing frame: exch %d, len %d\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"EAP-pwd: Ignoring message with unknown opcode %d\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"EAP-pwd: Fragmenting output, total length = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_pwd_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_pwd_process(%struct.eap_sm* %0, i8* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.eap_pwd_data*, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.eap_pwd_data*
  store %struct.eap_pwd_data* %18, %struct.eap_pwd_data** %10, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %11, align 8
  store i32 0, i32* %15, align 4
  %19 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %20 = load i32, i32* @EAP_TYPE_PWD, align 4
  %21 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %22 = call i32* @eap_hdr_validate(i32 %19, i32 %20, %struct.wpabuf* %21, i64* %14)
  store i32* %22, i32** %12, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i64, i64* %14, align 8
  %27 = icmp ult i64 %26, 1
  br i1 %27, label %28, label %40

28:                                               ; preds = %25, %4
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = icmp eq i32* %30, null
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %34 = load i64, i64* %14, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %35)
  %37 = load i8*, i8** @TRUE, align 8
  %38 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %39 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %511

40:                                               ; preds = %25
  %41 = load i8*, i8** @FALSE, align 8
  %42 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %43 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @METHOD_MAY_CONT, align 8
  %45 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %46 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @DECISION_FAIL, align 8
  %48 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %49 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @FALSE, align 8
  %51 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %52 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %16, align 4
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %12, align 8
  %57 = load i64, i64* %14, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %14, align 8
  %59 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %60 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %176

63:                                               ; preds = %40
  %64 = load i64, i64* %14, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @MSG_INFO, align 4
  %68 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* @MSG_DEBUG, align 4
  %71 = call i32 (i32, i8*, ...) @wpa_printf(i32 %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %72 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %73 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %72, i32 0, i32 4
  %74 = load %struct.wpabuf*, %struct.wpabuf** %73, align 8
  %75 = call i64 @wpabuf_len(%struct.wpabuf* %74)
  %76 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %77 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 %75, %78
  store i64 %79, i64* %14, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* @EAP_PWD_HDR_SIZE, align 8
  %82 = add i64 %80, %81
  %83 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %84 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ugt i64 %82, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %69
  %88 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %89 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @EAP_PWD_HDR_SIZE, align 8
  %92 = sub nsw i64 %90, %91
  store i64 %92, i64* %14, align 8
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @EAP_PWD_SET_MORE_BIT(i32 %93)
  br label %95

95:                                               ; preds = %87, %69
  %96 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %97 = load i32, i32* @EAP_TYPE_PWD, align 4
  %98 = load i64, i64* @EAP_PWD_HDR_SIZE, align 8
  %99 = load i64, i64* %14, align 8
  %100 = add i64 %98, %99
  %101 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %102 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %103 = call i32 @eap_get_id(%struct.wpabuf* %102)
  %104 = call %struct.wpabuf* @eap_msg_alloc(i32 %96, i32 %97, i64 %100, i32 %101, i32 %103)
  store %struct.wpabuf* %104, %struct.wpabuf** %11, align 8
  %105 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %106 = icmp eq %struct.wpabuf* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %95
  %108 = load i32, i32* @MSG_INFO, align 4
  %109 = call i32 (i32, i8*, ...) @wpa_printf(i32 %108, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %511

110:                                              ; preds = %95
  %111 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @wpabuf_put_u8(%struct.wpabuf* %111, i32 %112)
  %114 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %115 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %114, i32 0, i32 4
  %116 = load %struct.wpabuf*, %struct.wpabuf** %115, align 8
  %117 = call i32* @wpabuf_head_u8(%struct.wpabuf* %116)
  store i32* %117, i32** %13, align 8
  %118 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %121 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i64, i64* %14, align 8
  %125 = call i32 @wpabuf_put_data(%struct.wpabuf* %118, i32* %123, i64 %124)
  %126 = load i64, i64* %14, align 8
  %127 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %128 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %129, %126
  store i64 %130, i64* %128, align 8
  %131 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %132 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %135 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %134, i32 0, i32 4
  %136 = load %struct.wpabuf*, %struct.wpabuf** %135, align 8
  %137 = call i64 @wpabuf_len(%struct.wpabuf* %136)
  %138 = icmp uge i64 %133, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %110
  %140 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %141 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %140, i32 0, i32 4
  %142 = load %struct.wpabuf*, %struct.wpabuf** %141, align 8
  %143 = call i32 @wpabuf_free(%struct.wpabuf* %142)
  %144 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %145 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %144, i32 0, i32 4
  store %struct.wpabuf* null, %struct.wpabuf** %145, align 8
  %146 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %147 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %146, i32 0, i32 0
  store i64 0, i64* %147, align 8
  br label %148

148:                                              ; preds = %139, %110
  %149 = load i32, i32* @MSG_DEBUG, align 4
  %150 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %151 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  %156 = load i64, i64* %14, align 8
  %157 = trunc i64 %156 to i32
  %158 = call i32 (i32, i8*, ...) @wpa_printf(i32 %149, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %155, i32 %157)
  %159 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %160 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @SUCCESS_ON_FRAG_COMPLETION, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %148
  %165 = load i8*, i8** @METHOD_DONE, align 8
  %166 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %167 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %166, i32 0, i32 1
  store i8* %165, i8** %167, align 8
  %168 = load i8*, i8** @DECISION_UNCOND_SUCC, align 8
  %169 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %170 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %169, i32 0, i32 0
  store i8* %168, i8** %170, align 8
  %171 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %172 = load i32, i32* @SUCCESS, align 4
  %173 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %171, i32 %172)
  br label %174

174:                                              ; preds = %164, %148
  %175 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  store %struct.wpabuf* %175, %struct.wpabuf** %5, align 8
  br label %511

176:                                              ; preds = %40
  %177 = load i32, i32* %16, align 4
  %178 = call i64 @EAP_PWD_GET_LENGTH_BIT(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %228

180:                                              ; preds = %176
  %181 = load i64, i64* %14, align 8
  %182 = icmp ult i64 %181, 2
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load i32, i32* @MSG_DEBUG, align 4
  %185 = call i32 (i32, i8*, ...) @wpa_printf(i32 %184, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0))
  %186 = load i8*, i8** @TRUE, align 8
  %187 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %188 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %187, i32 0, i32 2
  store i8* %186, i8** %188, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %511

189:                                              ; preds = %180
  %190 = load i32*, i32** %12, align 8
  %191 = call i32 @WPA_GET_BE16(i32* %190)
  store i32 %191, i32* %15, align 4
  %192 = load i32, i32* @MSG_DEBUG, align 4
  %193 = load i32, i32* %15, align 4
  %194 = call i32 (i32, i8*, ...) @wpa_printf(i32 %192, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i32 %193)
  %195 = load i32, i32* %15, align 4
  %196 = icmp sgt i32 %195, 15000
  br i1 %196, label %197, label %198

197:                                              ; preds = %189
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %511

198:                                              ; preds = %189
  %199 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %200 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %199, i32 0, i32 5
  %201 = load %struct.wpabuf*, %struct.wpabuf** %200, align 8
  %202 = icmp ne %struct.wpabuf* %201, null
  br i1 %202, label %203, label %209

203:                                              ; preds = %198
  %204 = load i32, i32* @MSG_DEBUG, align 4
  %205 = call i32 (i32, i8*, ...) @wpa_printf(i32 %204, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.11, i64 0, i64 0))
  %206 = load i8*, i8** @TRUE, align 8
  %207 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %208 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %207, i32 0, i32 2
  store i8* %206, i8** %208, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %511

209:                                              ; preds = %198
  %210 = load i32, i32* %15, align 4
  %211 = call %struct.wpabuf* @wpabuf_alloc(i32 %210)
  %212 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %213 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %212, i32 0, i32 5
  store %struct.wpabuf* %211, %struct.wpabuf** %213, align 8
  %214 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %215 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %214, i32 0, i32 5
  %216 = load %struct.wpabuf*, %struct.wpabuf** %215, align 8
  %217 = icmp eq %struct.wpabuf* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %209
  %219 = load i32, i32* @MSG_INFO, align 4
  %220 = call i32 (i32, i8*, ...) @wpa_printf(i32 %219, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %511

221:                                              ; preds = %209
  %222 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %223 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %222, i32 0, i32 3
  store i64 0, i64* %223, align 8
  %224 = load i32*, i32** %12, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 4
  store i32* %225, i32** %12, align 8
  %226 = load i64, i64* %14, align 8
  %227 = sub i64 %226, 4
  store i64 %227, i64* %14, align 8
  br label %228

228:                                              ; preds = %221, %176
  %229 = load i32, i32* %16, align 4
  %230 = call i64 @EAP_PWD_GET_MORE_BIT(i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %237, label %232

232:                                              ; preds = %228
  %233 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %234 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %292

237:                                              ; preds = %232, %228
  %238 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %239 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %238, i32 0, i32 5
  %240 = load %struct.wpabuf*, %struct.wpabuf** %239, align 8
  %241 = icmp ne %struct.wpabuf* %240, null
  br i1 %241, label %251, label %242

242:                                              ; preds = %237
  %243 = load i32, i32* @MSG_DEBUG, align 4
  %244 = call i32 (i32, i8*, ...) @wpa_printf(i32 %243, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  %245 = load i8*, i8** @METHOD_DONE, align 8
  %246 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %247 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %246, i32 0, i32 1
  store i8* %245, i8** %247, align 8
  %248 = load i8*, i8** @DECISION_FAIL, align 8
  %249 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %250 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %249, i32 0, i32 0
  store i8* %248, i8** %250, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %511

251:                                              ; preds = %237
  %252 = load i64, i64* %14, align 8
  %253 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %254 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = add i64 %255, %252
  store i64 %256, i64* %254, align 8
  %257 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %258 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %257, i32 0, i32 3
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %261 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %260, i32 0, i32 5
  %262 = load %struct.wpabuf*, %struct.wpabuf** %261, align 8
  %263 = call i64 @wpabuf_size(%struct.wpabuf* %262)
  %264 = icmp ugt i64 %259, %263
  br i1 %264, label %265, label %285

265:                                              ; preds = %251
  %266 = load i32, i32* @MSG_INFO, align 4
  %267 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %268 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = trunc i64 %269 to i32
  %271 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %272 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %271, i32 0, i32 5
  %273 = load %struct.wpabuf*, %struct.wpabuf** %272, align 8
  %274 = call i64 @wpabuf_len(%struct.wpabuf* %273)
  %275 = trunc i64 %274 to i32
  %276 = call i32 (i32, i8*, ...) @wpa_printf(i32 %266, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0), i32 %270, i32 %275)
  %277 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %278 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %277, i32 0, i32 5
  %279 = load %struct.wpabuf*, %struct.wpabuf** %278, align 8
  %280 = call i32 @wpabuf_free(%struct.wpabuf* %279)
  %281 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %282 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %281, i32 0, i32 5
  store %struct.wpabuf* null, %struct.wpabuf** %282, align 8
  %283 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %284 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %283, i32 0, i32 3
  store i64 0, i64* %284, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %511

285:                                              ; preds = %251
  %286 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %287 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %286, i32 0, i32 5
  %288 = load %struct.wpabuf*, %struct.wpabuf** %287, align 8
  %289 = load i32*, i32** %12, align 8
  %290 = load i64, i64* %14, align 8
  %291 = call i32 @wpabuf_put_data(%struct.wpabuf* %288, i32* %289, i64 %290)
  br label %292

292:                                              ; preds = %285, %232
  %293 = load i32, i32* %16, align 4
  %294 = call i64 @EAP_PWD_GET_MORE_BIT(i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %317

296:                                              ; preds = %292
  %297 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %298 = load i32, i32* @EAP_TYPE_PWD, align 4
  %299 = load i64, i64* @EAP_PWD_HDR_SIZE, align 8
  %300 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %301 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %302 = call i32 @eap_get_id(%struct.wpabuf* %301)
  %303 = call %struct.wpabuf* @eap_msg_alloc(i32 %297, i32 %298, i64 %299, i32 %300, i32 %302)
  store %struct.wpabuf* %303, %struct.wpabuf** %11, align 8
  %304 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %305 = icmp ne %struct.wpabuf* %304, null
  br i1 %305, label %306, label %311

306:                                              ; preds = %296
  %307 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %308 = load i32, i32* %16, align 4
  %309 = call i32 @EAP_PWD_GET_EXCHANGE(i32 %308)
  %310 = call i32 @wpabuf_put_u8(%struct.wpabuf* %307, i32 %309)
  br label %311

311:                                              ; preds = %306, %296
  %312 = load i32, i32* @MSG_DEBUG, align 4
  %313 = load i64, i64* %14, align 8
  %314 = trunc i64 %313 to i32
  %315 = call i32 (i32, i8*, ...) @wpa_printf(i32 %312, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i32 %314)
  %316 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  store %struct.wpabuf* %316, %struct.wpabuf** %5, align 8
  br label %511

317:                                              ; preds = %292
  %318 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %319 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %318, i32 0, i32 3
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %339

322:                                              ; preds = %317
  %323 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %324 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %323, i32 0, i32 5
  %325 = load %struct.wpabuf*, %struct.wpabuf** %324, align 8
  %326 = icmp ne %struct.wpabuf* %325, null
  br i1 %326, label %327, label %339

327:                                              ; preds = %322
  %328 = load i32, i32* @MSG_DEBUG, align 4
  %329 = load i64, i64* %14, align 8
  %330 = trunc i64 %329 to i32
  %331 = call i32 (i32, i8*, ...) @wpa_printf(i32 %328, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i32 %330)
  %332 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %333 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %332, i32 0, i32 5
  %334 = load %struct.wpabuf*, %struct.wpabuf** %333, align 8
  %335 = call i32* @wpabuf_head_u8(%struct.wpabuf* %334)
  store i32* %335, i32** %12, align 8
  %336 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %337 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %336, i32 0, i32 3
  %338 = load i64, i64* %337, align 8
  store i64 %338, i64* %14, align 8
  br label %339

339:                                              ; preds = %327, %322, %317
  %340 = load i32, i32* @MSG_DEBUG, align 4
  %341 = load i32, i32* %16, align 4
  %342 = call i32 @EAP_PWD_GET_EXCHANGE(i32 %341)
  %343 = load i64, i64* %14, align 8
  %344 = trunc i64 %343 to i32
  %345 = call i32 (i32, i8*, ...) @wpa_printf(i32 %340, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0), i32 %342, i32 %344)
  %346 = load i32, i32* %16, align 4
  %347 = call i32 @EAP_PWD_GET_EXCHANGE(i32 %346)
  switch i32 %347, label %372 [
    i32 128, label %348
    i32 130, label %356
    i32 129, label %364
  ]

348:                                              ; preds = %339
  %349 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %350 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %351 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %352 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %353 = load i32*, i32** %12, align 8
  %354 = load i64, i64* %14, align 8
  %355 = call i32 @eap_pwd_perform_id_exchange(%struct.eap_sm* %349, %struct.eap_pwd_data* %350, %struct.eap_method_ret* %351, %struct.wpabuf* %352, i32* %353, i64 %354)
  br label %376

356:                                              ; preds = %339
  %357 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %358 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %359 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %360 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %361 = load i32*, i32** %12, align 8
  %362 = load i64, i64* %14, align 8
  %363 = call i32 @eap_pwd_perform_commit_exchange(%struct.eap_sm* %357, %struct.eap_pwd_data* %358, %struct.eap_method_ret* %359, %struct.wpabuf* %360, i32* %361, i64 %362)
  br label %376

364:                                              ; preds = %339
  %365 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %366 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %367 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %368 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %369 = load i32*, i32** %12, align 8
  %370 = load i64, i64* %14, align 8
  %371 = call i32 @eap_pwd_perform_confirm_exchange(%struct.eap_sm* %365, %struct.eap_pwd_data* %366, %struct.eap_method_ret* %367, %struct.wpabuf* %368, i32* %369, i64 %370)
  br label %376

372:                                              ; preds = %339
  %373 = load i32, i32* @MSG_INFO, align 4
  %374 = load i32, i32* %16, align 4
  %375 = call i32 (i32, i8*, ...) @wpa_printf(i32 %373, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0), i32 %374)
  br label %376

376:                                              ; preds = %372, %364, %356, %348
  %377 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %378 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %377, i32 0, i32 3
  %379 = load i64, i64* %378, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %390

381:                                              ; preds = %376
  %382 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %383 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %382, i32 0, i32 5
  %384 = load %struct.wpabuf*, %struct.wpabuf** %383, align 8
  %385 = call i32 @wpabuf_free(%struct.wpabuf* %384)
  %386 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %387 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %386, i32 0, i32 5
  store %struct.wpabuf* null, %struct.wpabuf** %387, align 8
  %388 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %389 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %388, i32 0, i32 3
  store i64 0, i64* %389, align 8
  br label %390

390:                                              ; preds = %381, %376
  %391 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %392 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %391, i32 0, i32 4
  %393 = load %struct.wpabuf*, %struct.wpabuf** %392, align 8
  %394 = icmp eq %struct.wpabuf* %393, null
  br i1 %394, label %395, label %402

395:                                              ; preds = %390
  %396 = load i8*, i8** @METHOD_DONE, align 8
  %397 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %398 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %397, i32 0, i32 1
  store i8* %396, i8** %398, align 8
  %399 = load i8*, i8** @DECISION_FAIL, align 8
  %400 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %401 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %400, i32 0, i32 0
  store i8* %399, i8** %401, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %511

402:                                              ; preds = %390
  %403 = load i32, i32* %16, align 4
  %404 = call i32 @EAP_PWD_GET_EXCHANGE(i32 %403)
  store i32 %404, i32* %16, align 4
  %405 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %406 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %405, i32 0, i32 4
  %407 = load %struct.wpabuf*, %struct.wpabuf** %406, align 8
  %408 = call i64 @wpabuf_len(%struct.wpabuf* %407)
  store i64 %408, i64* %14, align 8
  %409 = load i64, i64* %14, align 8
  %410 = load i64, i64* @EAP_PWD_HDR_SIZE, align 8
  %411 = add i64 %409, %410
  %412 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %413 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %412, i32 0, i32 1
  %414 = load i64, i64* %413, align 8
  %415 = icmp ugt i64 %411, %414
  br i1 %415, label %416, label %441

416:                                              ; preds = %402
  %417 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %418 = load i32, i32* @EAP_TYPE_PWD, align 4
  %419 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %420 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %419, i32 0, i32 1
  %421 = load i64, i64* %420, align 8
  %422 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %423 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %424 = call i32 @eap_get_id(%struct.wpabuf* %423)
  %425 = call %struct.wpabuf* @eap_msg_alloc(i32 %417, i32 %418, i64 %421, i32 %422, i32 %424)
  store %struct.wpabuf* %425, %struct.wpabuf** %11, align 8
  %426 = load i32, i32* %16, align 4
  %427 = call i32 @EAP_PWD_SET_LENGTH_BIT(i32 %426)
  %428 = load i32, i32* %16, align 4
  %429 = call i32 @EAP_PWD_SET_MORE_BIT(i32 %428)
  %430 = load i64, i64* %14, align 8
  %431 = trunc i64 %430 to i32
  store i32 %431, i32* %15, align 4
  %432 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %433 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %432, i32 0, i32 1
  %434 = load i64, i64* %433, align 8
  %435 = load i64, i64* @EAP_PWD_HDR_SIZE, align 8
  %436 = sub nsw i64 %434, %435
  %437 = sub i64 %436, 4
  store i64 %437, i64* %14, align 8
  %438 = load i32, i32* @MSG_DEBUG, align 4
  %439 = load i32, i32* %15, align 4
  %440 = call i32 (i32, i8*, ...) @wpa_printf(i32 %438, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0), i32 %439)
  br label %451

441:                                              ; preds = %402
  %442 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %443 = load i32, i32* @EAP_TYPE_PWD, align 4
  %444 = load i64, i64* @EAP_PWD_HDR_SIZE, align 8
  %445 = load i64, i64* %14, align 8
  %446 = add i64 %444, %445
  %447 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %448 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %449 = call i32 @eap_get_id(%struct.wpabuf* %448)
  %450 = call %struct.wpabuf* @eap_msg_alloc(i32 %442, i32 %443, i64 %446, i32 %447, i32 %449)
  store %struct.wpabuf* %450, %struct.wpabuf** %11, align 8
  br label %451

451:                                              ; preds = %441, %416
  %452 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %453 = icmp eq %struct.wpabuf* %452, null
  br i1 %453, label %454, label %455

454:                                              ; preds = %451
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %511

455:                                              ; preds = %451
  %456 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %457 = load i32, i32* %16, align 4
  %458 = call i32 @wpabuf_put_u8(%struct.wpabuf* %456, i32 %457)
  %459 = load i32, i32* %16, align 4
  %460 = call i64 @EAP_PWD_GET_LENGTH_BIT(i32 %459)
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %471

462:                                              ; preds = %455
  %463 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %464 = load i32, i32* %15, align 4
  %465 = call i32 @wpabuf_put_be16(%struct.wpabuf* %463, i32 %464)
  %466 = load i64, i64* %14, align 8
  %467 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %468 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %467, i32 0, i32 0
  %469 = load i64, i64* %468, align 8
  %470 = add i64 %469, %466
  store i64 %470, i64* %468, align 8
  br label %471

471:                                              ; preds = %462, %455
  %472 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %473 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %472, i32 0, i32 4
  %474 = load %struct.wpabuf*, %struct.wpabuf** %473, align 8
  %475 = call i32* @wpabuf_head_u8(%struct.wpabuf* %474)
  store i32* %475, i32** %13, align 8
  %476 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %477 = load i32*, i32** %13, align 8
  %478 = load i64, i64* %14, align 8
  %479 = call i32 @wpabuf_put_data(%struct.wpabuf* %476, i32* %477, i64 %478)
  %480 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %481 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %480, i32 0, i32 0
  %482 = load i64, i64* %481, align 8
  %483 = icmp eq i64 %482, 0
  br i1 %483, label %484, label %509

484:                                              ; preds = %471
  %485 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %486 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %485, i32 0, i32 4
  %487 = load %struct.wpabuf*, %struct.wpabuf** %486, align 8
  %488 = call i32 @wpabuf_free(%struct.wpabuf* %487)
  %489 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %490 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %489, i32 0, i32 4
  store %struct.wpabuf* null, %struct.wpabuf** %490, align 8
  %491 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %492 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %491, i32 0, i32 0
  store i64 0, i64* %492, align 8
  %493 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %494 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %493, i32 0, i32 2
  %495 = load i64, i64* %494, align 8
  %496 = load i64, i64* @SUCCESS_ON_FRAG_COMPLETION, align 8
  %497 = icmp eq i64 %495, %496
  br i1 %497, label %498, label %508

498:                                              ; preds = %484
  %499 = load i8*, i8** @METHOD_DONE, align 8
  %500 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %501 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %500, i32 0, i32 1
  store i8* %499, i8** %501, align 8
  %502 = load i8*, i8** @DECISION_UNCOND_SUCC, align 8
  %503 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %504 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %503, i32 0, i32 0
  store i8* %502, i8** %504, align 8
  %505 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %10, align 8
  %506 = load i32, i32* @SUCCESS, align 4
  %507 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %505, i32 %506)
  br label %508

508:                                              ; preds = %498, %484
  br label %509

509:                                              ; preds = %508, %471
  %510 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  store %struct.wpabuf* %510, %struct.wpabuf** %5, align 8
  br label %511

511:                                              ; preds = %509, %454, %395, %311, %265, %242, %218, %203, %197, %183, %174, %107, %28
  %512 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %512
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @EAP_PWD_SET_MORE_BIT(i32) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @eap_get_id(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32* @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i64) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @eap_pwd_state(%struct.eap_pwd_data*, i32) #1

declare dso_local i64 @EAP_PWD_GET_LENGTH_BIT(i32) #1

declare dso_local i32 @WPA_GET_BE16(i32*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i64 @EAP_PWD_GET_MORE_BIT(i32) #1

declare dso_local i64 @wpabuf_size(%struct.wpabuf*) #1

declare dso_local i32 @EAP_PWD_GET_EXCHANGE(i32) #1

declare dso_local i32 @eap_pwd_perform_id_exchange(%struct.eap_sm*, %struct.eap_pwd_data*, %struct.eap_method_ret*, %struct.wpabuf*, i32*, i64) #1

declare dso_local i32 @eap_pwd_perform_commit_exchange(%struct.eap_sm*, %struct.eap_pwd_data*, %struct.eap_method_ret*, %struct.wpabuf*, i32*, i64) #1

declare dso_local i32 @eap_pwd_perform_confirm_exchange(%struct.eap_sm*, %struct.eap_pwd_data*, %struct.eap_method_ret*, %struct.wpabuf*, i32*, i64) #1

declare dso_local i32 @EAP_PWD_SET_LENGTH_BIT(i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
