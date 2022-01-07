; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ikev2.c_eap_ikev2_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ikev2.c_eap_ikev2_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_method_ret = type { i8* }
%struct.wpabuf = type { i32 }
%struct.eap_ikev2_data = type { i64, i64, i32*, i32, %struct.wpabuf* }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_IKEV2 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@WAIT_FRAG_ACK = common dso_local global i64 0, align 8
@IKEV2_FLAGS_LENGTH_INCLUDED = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"EAP-IKEV2: Message underflow\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"EAP-IKEV2: Invalid Message Length (%d; %ld remaining in this msg)\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"EAP-IKEV2: Received packet: Flags 0x%x Message Length %u\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"EAP-IKEV2: Unexpected payload in WAIT_FRAG_ACK state\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"EAP-IKEV2: Fragment acknowledged\00", align 1
@PROC_MSG = common dso_local global i32 0, align 4
@IKEV2_FLAGS_MORE_FRAGMENTS = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"EAP-IKEV2: Failed to generate IKEv2 message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_ikev2_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_ikev2_process(%struct.eap_sm* %0, i8* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.eap_ikev2_data*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.wpabuf, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.eap_ikev2_data*
  store %struct.eap_ikev2_data* %20, %struct.eap_ikev2_data** %10, align 8
  store i32 0, i32* %17, align 4
  %21 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %22 = load i32, i32* @EAP_TYPE_IKEV2, align 4
  %23 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %24 = call i32* @eap_hdr_validate(i32 %21, i32 %22, %struct.wpabuf* %23, i64* %14)
  store i32* %24, i32** %12, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load i8*, i8** @TRUE, align 8
  %29 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %30 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %262

31:                                               ; preds = %4
  %32 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %33 = call i32 @eap_get_id(%struct.wpabuf* %32)
  store i32 %33, i32* %16, align 4
  %34 = load i32*, i32** %12, align 8
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i64, i64* %14, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %13, align 8
  %38 = load i64, i64* %14, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 0, i32* %15, align 4
  br label %45

41:                                               ; preds = %31
  %42 = load i32*, i32** %12, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %12, align 8
  %44 = load i32, i32* %42, align 4
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %41, %40
  %46 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %47 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %48 = load i32, i32* %15, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %51 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @WAIT_FRAG_ACK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i64, i64* %14, align 8
  %57 = icmp eq i64 %56, 0
  br label %58

58:                                               ; preds = %55, %45
  %59 = phi i1 [ false, %45 ], [ %57, %55 ]
  %60 = zext i1 %59 to i32
  %61 = call i64 @eap_ikev2_process_icv(%struct.eap_ikev2_data* %46, %struct.wpabuf* %47, i32 %48, i32* %49, i32** %13, i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i8*, i8** @TRUE, align 8
  %65 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %66 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %262

67:                                               ; preds = %58
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* @IKEV2_FLAGS_LENGTH_INCLUDED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %114

72:                                               ; preds = %67
  %73 = load i32*, i32** %13, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = ptrtoint i32* %73 to i64
  %76 = ptrtoint i32* %74 to i64
  %77 = sub i64 %75, %76
  %78 = sdiv exact i64 %77, 4
  %79 = icmp slt i64 %78, 4
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load i32, i32* @MSG_DEBUG, align 4
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %83 = load i8*, i8** @TRUE, align 8
  %84 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %85 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %262

86:                                               ; preds = %72
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @WPA_GET_BE32(i32* %87)
  store i32 %88, i32* %17, align 4
  %89 = load i32*, i32** %12, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  store i32* %90, i32** %12, align 8
  %91 = load i32, i32* %17, align 4
  %92 = load i32*, i32** %13, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = ptrtoint i32* %92 to i64
  %95 = ptrtoint i32* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = icmp slt i32 %91, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %86
  %101 = load i32, i32* @MSG_DEBUG, align 4
  %102 = load i32, i32* %17, align 4
  %103 = load i32*, i32** %13, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = ptrtoint i32* %103 to i64
  %106 = ptrtoint i32* %104 to i64
  %107 = sub i64 %105, %106
  %108 = sdiv exact i64 %107, 4
  %109 = call i32 (i32, i8*, ...) @wpa_printf(i32 %101, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %102, i64 %108)
  %110 = load i8*, i8** @TRUE, align 8
  %111 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %112 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %262

113:                                              ; preds = %86
  br label %114

114:                                              ; preds = %113, %67
  %115 = load i32, i32* @MSG_DEBUG, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %17, align 4
  %118 = call i32 (i32, i8*, ...) @wpa_printf(i32 %115, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %116, i32 %117)
  %119 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %120 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @WAIT_FRAG_ACK, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %143

124:                                              ; preds = %114
  %125 = load i64, i64* %14, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load i32, i32* @MSG_DEBUG, align 4
  %129 = call i32 (i32, i8*, ...) @wpa_printf(i32 %128, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %130 = load i8*, i8** @TRUE, align 8
  %131 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %132 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %131, i32 0, i32 0
  store i8* %130, i8** %132, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %262

133:                                              ; preds = %124
  %134 = load i32, i32* @MSG_DEBUG, align 4
  %135 = call i32 (i32, i8*, ...) @wpa_printf(i32 %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %136 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %137 = load i32, i32* @PROC_MSG, align 4
  %138 = call i32 @eap_ikev2_state(%struct.eap_ikev2_data* %136, i32 %137)
  %139 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %140 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %141 = load i32, i32* %16, align 4
  %142 = call %struct.wpabuf* @eap_ikev2_build_msg(%struct.eap_ikev2_data* %139, %struct.eap_method_ret* %140, i32 %141)
  store %struct.wpabuf* %142, %struct.wpabuf** %5, align 8
  br label %262

143:                                              ; preds = %114
  %144 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %145 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %144, i32 0, i32 4
  %146 = load %struct.wpabuf*, %struct.wpabuf** %145, align 8
  %147 = icmp ne %struct.wpabuf* %146, null
  br i1 %147, label %148, label %164

148:                                              ; preds = %143
  %149 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %150 = load i32*, i32** %12, align 8
  %151 = load i32*, i32** %13, align 8
  %152 = load i32*, i32** %12, align 8
  %153 = ptrtoint i32* %151 to i64
  %154 = ptrtoint i32* %152 to i64
  %155 = sub i64 %153, %154
  %156 = sdiv exact i64 %155, 4
  %157 = trunc i64 %156 to i32
  %158 = call i64 @eap_ikev2_process_cont(%struct.eap_ikev2_data* %149, i32* %150, i32 %157)
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %148
  %161 = load i8*, i8** @TRUE, align 8
  %162 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %163 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %162, i32 0, i32 0
  store i8* %161, i8** %163, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %262

164:                                              ; preds = %148, %143
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* @IKEV2_FLAGS_MORE_FRAGMENTS, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %184

169:                                              ; preds = %164
  %170 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %171 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %17, align 4
  %175 = load i32*, i32** %12, align 8
  %176 = load i32*, i32** %13, align 8
  %177 = load i32*, i32** %12, align 8
  %178 = ptrtoint i32* %176 to i64
  %179 = ptrtoint i32* %177 to i64
  %180 = sub i64 %178, %179
  %181 = sdiv exact i64 %180, 4
  %182 = trunc i64 %181 to i32
  %183 = call %struct.wpabuf* @eap_ikev2_process_fragment(%struct.eap_ikev2_data* %170, %struct.eap_method_ret* %171, i32 %172, i32 %173, i32 %174, i32* %175, i32 %182)
  store %struct.wpabuf* %183, %struct.wpabuf** %5, align 8
  br label %262

184:                                              ; preds = %164
  %185 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %186 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %185, i32 0, i32 4
  %187 = load %struct.wpabuf*, %struct.wpabuf** %186, align 8
  %188 = icmp eq %struct.wpabuf* %187, null
  br i1 %188, label %189, label %201

189:                                              ; preds = %184
  %190 = load i32*, i32** %12, align 8
  %191 = load i32*, i32** %13, align 8
  %192 = load i32*, i32** %12, align 8
  %193 = ptrtoint i32* %191 to i64
  %194 = ptrtoint i32* %192 to i64
  %195 = sub i64 %193, %194
  %196 = sdiv exact i64 %195, 4
  %197 = trunc i64 %196 to i32
  %198 = call i32 @wpabuf_set(%struct.wpabuf* %18, i32* %190, i32 %197)
  %199 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %200 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %199, i32 0, i32 4
  store %struct.wpabuf* %18, %struct.wpabuf** %200, align 8
  br label %201

201:                                              ; preds = %189, %184
  %202 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %203 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %202, i32 0, i32 3
  %204 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %205 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %204, i32 0, i32 4
  %206 = load %struct.wpabuf*, %struct.wpabuf** %205, align 8
  %207 = call i64 @ikev2_responder_process(i32* %203, %struct.wpabuf* %206)
  %208 = icmp slt i64 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %201
  %210 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %211 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %210, i32 0, i32 4
  %212 = load %struct.wpabuf*, %struct.wpabuf** %211, align 8
  %213 = icmp eq %struct.wpabuf* %212, %18
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %216 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %215, i32 0, i32 4
  store %struct.wpabuf* null, %struct.wpabuf** %216, align 8
  br label %217

217:                                              ; preds = %214, %209
  %218 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %219 = load i32, i32* @FAIL, align 4
  %220 = call i32 @eap_ikev2_state(%struct.eap_ikev2_data* %218, i32 %219)
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %262

221:                                              ; preds = %201
  %222 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %223 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %222, i32 0, i32 4
  %224 = load %struct.wpabuf*, %struct.wpabuf** %223, align 8
  %225 = icmp ne %struct.wpabuf* %224, %18
  br i1 %225, label %226, label %231

226:                                              ; preds = %221
  %227 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %228 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %227, i32 0, i32 4
  %229 = load %struct.wpabuf*, %struct.wpabuf** %228, align 8
  %230 = call i32 @wpabuf_free(%struct.wpabuf* %229)
  br label %231

231:                                              ; preds = %226, %221
  %232 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %233 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %232, i32 0, i32 4
  store %struct.wpabuf* null, %struct.wpabuf** %233, align 8
  %234 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %235 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = icmp eq i32* %236, null
  br i1 %237, label %238, label %254

238:                                              ; preds = %231
  %239 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %240 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %239, i32 0, i32 3
  %241 = call i32* @ikev2_responder_build(i32* %240)
  %242 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %243 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %242, i32 0, i32 2
  store i32* %241, i32** %243, align 8
  %244 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %245 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %244, i32 0, i32 2
  %246 = load i32*, i32** %245, align 8
  %247 = icmp eq i32* %246, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %238
  %249 = load i32, i32* @MSG_DEBUG, align 4
  %250 = call i32 (i32, i8*, ...) @wpa_printf(i32 %249, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %262

251:                                              ; preds = %238
  %252 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %253 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %252, i32 0, i32 1
  store i64 0, i64* %253, align 8
  br label %254

254:                                              ; preds = %251, %231
  %255 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %256 = load i32, i32* @PROC_MSG, align 4
  %257 = call i32 @eap_ikev2_state(%struct.eap_ikev2_data* %255, i32 %256)
  %258 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %10, align 8
  %259 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %260 = load i32, i32* %16, align 4
  %261 = call %struct.wpabuf* @eap_ikev2_build_msg(%struct.eap_ikev2_data* %258, %struct.eap_method_ret* %259, i32 %260)
  store %struct.wpabuf* %261, %struct.wpabuf** %5, align 8
  br label %262

262:                                              ; preds = %254, %248, %217, %169, %160, %133, %127, %100, %80, %63, %27
  %263 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %263
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @eap_get_id(%struct.wpabuf*) #1

declare dso_local i64 @eap_ikev2_process_icv(%struct.eap_ikev2_data*, %struct.wpabuf*, i32, i32*, i32**, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @WPA_GET_BE32(i32*) #1

declare dso_local i32 @eap_ikev2_state(%struct.eap_ikev2_data*, i32) #1

declare dso_local %struct.wpabuf* @eap_ikev2_build_msg(%struct.eap_ikev2_data*, %struct.eap_method_ret*, i32) #1

declare dso_local i64 @eap_ikev2_process_cont(%struct.eap_ikev2_data*, i32*, i32) #1

declare dso_local %struct.wpabuf* @eap_ikev2_process_fragment(%struct.eap_ikev2_data*, %struct.eap_method_ret*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @wpabuf_set(%struct.wpabuf*, i32*, i32) #1

declare dso_local i64 @ikev2_responder_process(i32*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32* @ikev2_responder_build(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
