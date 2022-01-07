; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_leaf_setup_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_leaf_setup_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i64*, i64, i64 }
%struct.uni_leaf_setup_req = type { %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__*, %struct.TYPE_31__, %struct.TYPE_29__*, %struct.TYPE_27__, %struct.TYPE_25__*, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_LEAF_SETUP_REQ = common dso_local global i32 0, align 4
@UNI_NUM_IE_TNS = common dso_local global i64 0, align 8
@UNI_IE_PRESENT = common dso_local global i32 0, align 4
@UNI_IE_TNS = common dso_local global i32 0, align 4
@UNI_IE_CALLING = common dso_local global i32 0, align 4
@UNI_NUM_IE_CALLINGSUB = common dso_local global i64 0, align 8
@UNI_IE_CALLINGSUB = common dso_local global i32 0, align 4
@UNI_IE_CALLED = common dso_local global i32 0, align 4
@UNI_NUM_IE_CALLEDSUB = common dso_local global i64 0, align 8
@UNI_IE_CALLEDSUB = common dso_local global i32 0, align 4
@UNI_IE_LIJ_CALLID = common dso_local global i32 0, align 4
@UNI_IE_LIJ_SEQNO = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_msg*, %struct.uni_leaf_setup_req*, %struct.unicx*)* @encode_leaf_setup_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_leaf_setup_req(%struct.uni_msg* %0, %struct.uni_leaf_setup_req* %1, %struct.unicx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca %struct.uni_leaf_setup_req*, align 8
  %7 = alloca %struct.unicx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.uni_msg* %0, %struct.uni_msg** %5, align 8
  store %struct.uni_leaf_setup_req* %1, %struct.uni_leaf_setup_req** %6, align 8
  store %struct.unicx* %2, %struct.unicx** %7, align 8
  %10 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %11 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %6, align 8
  %12 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %11, i32 0, i32 8
  %13 = load i32, i32* @UNI_LEAF_SETUP_REQ, align 4
  %14 = load %struct.unicx*, %struct.unicx** %7, align 8
  %15 = call i64 @uni_encode_msg_hdr(%struct.uni_msg* %10, i32* %12, i32 %13, %struct.unicx* %14, i64* %8)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %273

18:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %19

19:                                               ; preds = %55, %18
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @UNI_NUM_IE_TNS, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %19
  %24 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %6, align 8
  %25 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %24, i32 0, i32 7
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @UNI_IE_PRESENT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %23
  %36 = load i32, i32* @UNI_IE_TNS, align 4
  %37 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %38 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %6, align 8
  %39 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %38, i32 0, i32 7
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i64 %41
  %43 = bitcast %struct.TYPE_25__* %42 to %union.uni_ieall*
  %44 = load %struct.unicx*, %struct.unicx** %7, align 8
  %45 = call i64 @uni_encode_ie(i32 %36, %struct.uni_msg* %37, %union.uni_ieall* %43, %struct.unicx* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %35
  %48 = load i64, i64* %9, align 8
  %49 = shl i64 %48, 16
  %50 = load i32, i32* @UNI_IE_TNS, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %49, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %273

54:                                               ; preds = %35, %23
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %9, align 8
  br label %19

58:                                               ; preds = %19
  %59 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %6, align 8
  %60 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @UNI_IE_PRESENT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %58
  %68 = load i32, i32* @UNI_IE_CALLING, align 4
  %69 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %70 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %6, align 8
  %71 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %70, i32 0, i32 6
  %72 = bitcast %struct.TYPE_27__* %71 to %union.uni_ieall*
  %73 = load %struct.unicx*, %struct.unicx** %7, align 8
  %74 = call i64 @uni_encode_ie(i32 %68, %struct.uni_msg* %69, %union.uni_ieall* %72, %struct.unicx* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* @UNI_IE_CALLING, align 4
  store i32 %77, i32* %4, align 4
  br label %273

78:                                               ; preds = %67, %58
  store i64 0, i64* %9, align 8
  br label %79

79:                                               ; preds = %115, %78
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* @UNI_NUM_IE_CALLINGSUB, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %118

83:                                               ; preds = %79
  %84 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %6, align 8
  %85 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %84, i32 0, i32 5
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @UNI_IE_PRESENT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %83
  %96 = load i32, i32* @UNI_IE_CALLINGSUB, align 4
  %97 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %98 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %6, align 8
  %99 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %98, i32 0, i32 5
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i64 %101
  %103 = bitcast %struct.TYPE_29__* %102 to %union.uni_ieall*
  %104 = load %struct.unicx*, %struct.unicx** %7, align 8
  %105 = call i64 @uni_encode_ie(i32 %96, %struct.uni_msg* %97, %union.uni_ieall* %103, %struct.unicx* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %95
  %108 = load i64, i64* %9, align 8
  %109 = shl i64 %108, 16
  %110 = load i32, i32* @UNI_IE_CALLINGSUB, align 4
  %111 = sext i32 %110 to i64
  %112 = add i64 %109, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %4, align 4
  br label %273

114:                                              ; preds = %95, %83
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %9, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %9, align 8
  br label %79

118:                                              ; preds = %79
  %119 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %6, align 8
  %120 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @UNI_IE_PRESENT, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %118
  %128 = load i32, i32* @UNI_IE_CALLED, align 4
  %129 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %130 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %6, align 8
  %131 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %130, i32 0, i32 4
  %132 = bitcast %struct.TYPE_31__* %131 to %union.uni_ieall*
  %133 = load %struct.unicx*, %struct.unicx** %7, align 8
  %134 = call i64 @uni_encode_ie(i32 %128, %struct.uni_msg* %129, %union.uni_ieall* %132, %struct.unicx* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %127
  %137 = load i32, i32* @UNI_IE_CALLED, align 4
  store i32 %137, i32* %4, align 4
  br label %273

138:                                              ; preds = %127, %118
  store i64 0, i64* %9, align 8
  br label %139

139:                                              ; preds = %175, %138
  %140 = load i64, i64* %9, align 8
  %141 = load i64, i64* @UNI_NUM_IE_CALLEDSUB, align 8
  %142 = icmp ult i64 %140, %141
  br i1 %142, label %143, label %178

143:                                              ; preds = %139
  %144 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %6, align 8
  %145 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %144, i32 0, i32 3
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = load i64, i64* %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @UNI_IE_PRESENT, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %174

155:                                              ; preds = %143
  %156 = load i32, i32* @UNI_IE_CALLEDSUB, align 4
  %157 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %158 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %6, align 8
  %159 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %158, i32 0, i32 3
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %159, align 8
  %161 = load i64, i64* %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i64 %161
  %163 = bitcast %struct.TYPE_17__* %162 to %union.uni_ieall*
  %164 = load %struct.unicx*, %struct.unicx** %7, align 8
  %165 = call i64 @uni_encode_ie(i32 %156, %struct.uni_msg* %157, %union.uni_ieall* %163, %struct.unicx* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %155
  %168 = load i64, i64* %9, align 8
  %169 = shl i64 %168, 16
  %170 = load i32, i32* @UNI_IE_CALLEDSUB, align 4
  %171 = sext i32 %170 to i64
  %172 = add i64 %169, %171
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %4, align 4
  br label %273

174:                                              ; preds = %155, %143
  br label %175

175:                                              ; preds = %174
  %176 = load i64, i64* %9, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %9, align 8
  br label %139

178:                                              ; preds = %139
  %179 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %6, align 8
  %180 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @UNI_IE_PRESENT, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %198

187:                                              ; preds = %178
  %188 = load i32, i32* @UNI_IE_LIJ_CALLID, align 4
  %189 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %190 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %6, align 8
  %191 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %190, i32 0, i32 2
  %192 = bitcast %struct.TYPE_19__* %191 to %union.uni_ieall*
  %193 = load %struct.unicx*, %struct.unicx** %7, align 8
  %194 = call i64 @uni_encode_ie(i32 %188, %struct.uni_msg* %189, %union.uni_ieall* %192, %struct.unicx* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %187
  %197 = load i32, i32* @UNI_IE_LIJ_CALLID, align 4
  store i32 %197, i32* %4, align 4
  br label %273

198:                                              ; preds = %187, %178
  %199 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %6, align 8
  %200 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @UNI_IE_PRESENT, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %198
  %208 = load i32, i32* @UNI_IE_LIJ_SEQNO, align 4
  %209 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %210 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %6, align 8
  %211 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %210, i32 0, i32 1
  %212 = bitcast %struct.TYPE_21__* %211 to %union.uni_ieall*
  %213 = load %struct.unicx*, %struct.unicx** %7, align 8
  %214 = call i64 @uni_encode_ie(i32 %208, %struct.uni_msg* %209, %union.uni_ieall* %212, %struct.unicx* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %207
  %217 = load i32, i32* @UNI_IE_LIJ_SEQNO, align 4
  store i32 %217, i32* %4, align 4
  br label %273

218:                                              ; preds = %207, %198
  %219 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %6, align 8
  %220 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @UNI_IE_PRESENT, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %218
  %228 = load i32, i32* @UNI_IE_UNREC, align 4
  %229 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %230 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %6, align 8
  %231 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %230, i32 0, i32 0
  %232 = bitcast %struct.TYPE_23__* %231 to %union.uni_ieall*
  %233 = load %struct.unicx*, %struct.unicx** %7, align 8
  %234 = call i64 @uni_encode_ie(i32 %228, %struct.uni_msg* %229, %union.uni_ieall* %232, %struct.unicx* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %227
  %237 = load i32, i32* @UNI_IE_UNREC, align 4
  store i32 %237, i32* %4, align 4
  br label %273

238:                                              ; preds = %227, %218
  %239 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %240 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %243 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = sub i64 %241, %244
  %246 = load i64, i64* %8, align 8
  %247 = sub i64 %245, %246
  %248 = sub i64 %247, 2
  %249 = lshr i64 %248, 8
  %250 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %251 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %250, i32 0, i32 0
  %252 = load i64*, i64** %251, align 8
  %253 = load i64, i64* %8, align 8
  %254 = add i64 %253, 0
  %255 = getelementptr inbounds i64, i64* %252, i64 %254
  store i64 %249, i64* %255, align 8
  %256 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %257 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %260 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = sub i64 %258, %261
  %263 = load i64, i64* %8, align 8
  %264 = sub i64 %262, %263
  %265 = sub i64 %264, 2
  %266 = lshr i64 %265, 0
  %267 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %268 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %267, i32 0, i32 0
  %269 = load i64*, i64** %268, align 8
  %270 = load i64, i64* %8, align 8
  %271 = add i64 %270, 1
  %272 = getelementptr inbounds i64, i64* %269, i64 %271
  store i64 %266, i64* %272, align 8
  store i32 0, i32* %4, align 4
  br label %273

273:                                              ; preds = %238, %236, %216, %196, %167, %136, %107, %76, %47, %17
  %274 = load i32, i32* %4, align 4
  ret i32 %274
}

declare dso_local i64 @uni_encode_msg_hdr(%struct.uni_msg*, i32*, i32, %struct.unicx*, i64*) #1

declare dso_local i64 @uni_encode_ie(i32, %struct.uni_msg*, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
