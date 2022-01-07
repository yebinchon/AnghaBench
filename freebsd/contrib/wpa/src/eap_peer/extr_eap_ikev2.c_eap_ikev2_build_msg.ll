; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ikev2.c_eap_ikev2_build_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ikev2.c_eap_ikev2_build_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_ikev2_data = type { i64, i32, i32, %struct.wpabuf*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.eap_method_ret = type { i8*, i8*, i32, i32 }
%struct.ikev2_integ_alg = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"EAP-IKEV2: Generating Response\00", align 1
@TRUE = common dso_local global i32 0, align 4
@IKEV2_FLAGS_MORE_FRAGMENTS = common dso_local global i32 0, align 4
@IKEV2_FLAGS_LENGTH_INCLUDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"EAP-IKEV2: Add Integrity Checksum Data\00", align 1
@IKEV2_FLAGS_ICV_INCLUDED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"EAP-IKEV2: Unknown INTEG transform / cannot generate ICV\00", align 1
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_IKEV2 = common dso_local global i32 0, align 4
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@METHOD_MAY_CONT = common dso_local global i8* null, align 8
@DECISION_FAIL = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [59 x i8] c"EAP-IKEV2: Sending out %lu bytes (message sent completely)\00", align 1
@METHOD_DONE = common dso_local global i8* null, align 8
@FAIL = common dso_local global i32 0, align 4
@DECISION_COND_SUCC = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [49 x i8] c"EAP-IKEV2: Authentication completed successfully\00", align 1
@DONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"EAP-IKEV2: Authentication failed\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"EAP-IKEV2: Sending out %lu bytes (%lu more to send)\00", align 1
@WAIT_FRAG_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_ikev2_data*, %struct.eap_method_ret*, i32)* @eap_ikev2_build_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_ikev2_build_msg(%struct.eap_ikev2_data* %0, %struct.eap_method_ret* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_ikev2_data*, align 8
  %6 = alloca %struct.eap_method_ret*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ikev2_integ_alg*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store %struct.eap_ikev2_data* %0, %struct.eap_ikev2_data** %5, align 8
  store %struct.eap_method_ret* %1, %struct.eap_method_ret** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %12, align 8
  %16 = load i32, i32* @FALSE, align 4
  %17 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %18 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @TRUE, align 4
  %22 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %23 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  store i32 0, i32* %9, align 4
  %24 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %25 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %24, i32 0, i32 3
  %26 = load %struct.wpabuf*, %struct.wpabuf** %25, align 8
  %27 = call i64 @wpabuf_len(%struct.wpabuf* %26)
  %28 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %29 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %27, %30
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = add i64 1, %32
  %34 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %35 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = icmp ugt i64 %33, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %3
  %40 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %41 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %10, align 8
  %45 = load i32, i32* @IKEV2_FLAGS_MORE_FRAGMENTS, align 4
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %49 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %39
  %53 = load i32, i32* @IKEV2_FLAGS_LENGTH_INCLUDED, align 4
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i64, i64* %10, align 8
  %57 = sub i64 %56, 4
  store i64 %57, i64* %10, align 8
  br label %58

58:                                               ; preds = %52, %39
  br label %59

59:                                               ; preds = %58, %3
  %60 = load i64, i64* %10, align 8
  %61 = add i64 1, %60
  store i64 %61, i64* %11, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @IKEV2_FLAGS_LENGTH_INCLUDED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %67, 4
  store i64 %68, i64* %11, align 8
  br label %69

69:                                               ; preds = %66, %59
  %70 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %71 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %69
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @IKEV2_FLAGS_ICV_INCLUDED, align 4
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %9, align 4
  %80 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %81 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.ikev2_integ_alg* @ikev2_get_integ(i32 %84)
  store %struct.ikev2_integ_alg* %85, %struct.ikev2_integ_alg** %13, align 8
  %86 = load %struct.ikev2_integ_alg*, %struct.ikev2_integ_alg** %13, align 8
  %87 = icmp eq %struct.ikev2_integ_alg* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %74
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = call i32 (i32, i8*, ...) @wpa_printf(i32 %89, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %256

91:                                               ; preds = %74
  %92 = load %struct.ikev2_integ_alg*, %struct.ikev2_integ_alg** %13, align 8
  %93 = getelementptr inbounds %struct.ikev2_integ_alg, %struct.ikev2_integ_alg* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %12, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i64, i64* %11, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %11, align 8
  br label %98

98:                                               ; preds = %91, %69
  %99 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %100 = load i32, i32* @EAP_TYPE_IKEV2, align 4
  %101 = load i64, i64* %11, align 8
  %102 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call %struct.wpabuf* @eap_msg_alloc(i32 %99, i32 %100, i64 %101, i32 %102, i32 %103)
  store %struct.wpabuf* %104, %struct.wpabuf** %8, align 8
  %105 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %106 = icmp eq %struct.wpabuf* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %256

108:                                              ; preds = %98
  %109 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @wpabuf_put_u8(%struct.wpabuf* %109, i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @IKEV2_FLAGS_LENGTH_INCLUDED, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %108
  %117 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %118 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %119 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %118, i32 0, i32 3
  %120 = load %struct.wpabuf*, %struct.wpabuf** %119, align 8
  %121 = call i64 @wpabuf_len(%struct.wpabuf* %120)
  %122 = call i32 @wpabuf_put_be32(%struct.wpabuf* %117, i64 %121)
  br label %123

123:                                              ; preds = %116, %108
  %124 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %125 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %126 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %125, i32 0, i32 3
  %127 = load %struct.wpabuf*, %struct.wpabuf** %126, align 8
  %128 = call i64 @wpabuf_head_u8(%struct.wpabuf* %127)
  %129 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %130 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add i64 %128, %131
  %133 = load i64, i64* %10, align 8
  %134 = call i32 @wpabuf_put_data(%struct.wpabuf* %124, i64 %132, i64 %133)
  %135 = load i64, i64* %10, align 8
  %136 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %137 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %138, %135
  store i64 %139, i64* %137, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @IKEV2_FLAGS_ICV_INCLUDED, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %170

144:                                              ; preds = %123
  %145 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %146 = call i32* @wpabuf_head(%struct.wpabuf* %145)
  store i32* %146, i32** %14, align 8
  %147 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %148 = call i64 @wpabuf_len(%struct.wpabuf* %147)
  store i64 %148, i64* %15, align 8
  %149 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %150 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %155 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %160 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %14, align 8
  %165 = load i64, i64* %15, align 8
  %166 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %167 = load i64, i64* %12, align 8
  %168 = call i32 @wpabuf_put(%struct.wpabuf* %166, i64 %167)
  %169 = call i32 @ikev2_integ_hash(i32 %153, i32 %158, i32 %163, i32* %164, i64 %165, i32 %168)
  br label %170

170:                                              ; preds = %144, %123
  %171 = load i8*, i8** @METHOD_MAY_CONT, align 8
  %172 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %173 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %172, i32 0, i32 1
  store i8* %171, i8** %173, align 8
  %174 = load i8*, i8** @DECISION_FAIL, align 8
  %175 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %176 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %175, i32 0, i32 0
  store i8* %174, i8** %176, align 8
  %177 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %178 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %181 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %180, i32 0, i32 3
  %182 = load %struct.wpabuf*, %struct.wpabuf** %181, align 8
  %183 = call i64 @wpabuf_len(%struct.wpabuf* %182)
  %184 = icmp eq i64 %179, %183
  br i1 %184, label %185, label %239

185:                                              ; preds = %170
  %186 = load i32, i32* @MSG_DEBUG, align 4
  %187 = load i64, i64* %10, align 8
  %188 = call i32 (i32, i8*, ...) @wpa_printf(i32 %186, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i64 %187)
  %189 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %190 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %189, i32 0, i32 3
  %191 = load %struct.wpabuf*, %struct.wpabuf** %190, align 8
  %192 = call i32 @wpabuf_free(%struct.wpabuf* %191)
  %193 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %194 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %193, i32 0, i32 3
  store %struct.wpabuf* null, %struct.wpabuf** %194, align 8
  %195 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %196 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %195, i32 0, i32 0
  store i64 0, i64* %196, align 8
  %197 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %198 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %197, i32 0, i32 5
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  switch i32 %200, label %237 [
    i32 128, label %201
    i32 130, label %204
    i32 129, label %228
  ]

201:                                              ; preds = %185
  %202 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %203 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %202, i32 0, i32 2
  store i32 1, i32* %203, align 4
  br label %238

204:                                              ; preds = %185
  %205 = load i8*, i8** @METHOD_DONE, align 8
  %206 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %207 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %206, i32 0, i32 1
  store i8* %205, i8** %207, align 8
  %208 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %209 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @FAIL, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %204
  br label %238

214:                                              ; preds = %204
  %215 = load i8*, i8** @DECISION_COND_SUCC, align 8
  %216 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %217 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %216, i32 0, i32 0
  store i8* %215, i8** %217, align 8
  %218 = load i32, i32* @MSG_DEBUG, align 4
  %219 = call i32 (i32, i8*, ...) @wpa_printf(i32 %218, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %220 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %221 = call i32 @eap_ikev2_peer_keymat(%struct.eap_ikev2_data* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %214
  br label %238

224:                                              ; preds = %214
  %225 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %226 = load i32, i32* @DONE, align 4
  %227 = call i32 @eap_ikev2_state(%struct.eap_ikev2_data* %225, i32 %226)
  br label %238

228:                                              ; preds = %185
  %229 = load i32, i32* @MSG_DEBUG, align 4
  %230 = call i32 (i32, i8*, ...) @wpa_printf(i32 %229, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %231 = load i8*, i8** @METHOD_DONE, align 8
  %232 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %233 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %232, i32 0, i32 1
  store i8* %231, i8** %233, align 8
  %234 = load i8*, i8** @DECISION_FAIL, align 8
  %235 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %236 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %235, i32 0, i32 0
  store i8* %234, i8** %236, align 8
  br label %238

237:                                              ; preds = %185
  br label %238

238:                                              ; preds = %237, %228, %224, %223, %213, %201
  br label %254

239:                                              ; preds = %170
  %240 = load i32, i32* @MSG_DEBUG, align 4
  %241 = load i64, i64* %10, align 8
  %242 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %243 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %242, i32 0, i32 3
  %244 = load %struct.wpabuf*, %struct.wpabuf** %243, align 8
  %245 = call i64 @wpabuf_len(%struct.wpabuf* %244)
  %246 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %247 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = sub i64 %245, %248
  %250 = call i32 (i32, i8*, ...) @wpa_printf(i32 %240, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i64 %241, i64 %249)
  %251 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %5, align 8
  %252 = load i32, i32* @WAIT_FRAG_ACK, align 4
  %253 = call i32 @eap_ikev2_state(%struct.eap_ikev2_data* %251, i32 %252)
  br label %254

254:                                              ; preds = %239, %238
  %255 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %255, %struct.wpabuf** %4, align 8
  br label %256

256:                                              ; preds = %254, %107, %88
  %257 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %257
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local %struct.ikev2_integ_alg* @ikev2_get_integ(i32) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be32(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i64, i64) #1

declare dso_local i64 @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @ikev2_integ_hash(i32, i32, i32, i32*, i64, i32) #1

declare dso_local i32 @wpabuf_put(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @eap_ikev2_peer_keymat(%struct.eap_ikev2_data*) #1

declare dso_local i32 @eap_ikev2_state(%struct.eap_ikev2_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
