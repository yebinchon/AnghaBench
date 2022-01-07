; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-egp.c_egp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-egp.c_egp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.egp_packet = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[|egp]\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"EGPv%u, AS %u, seq %u, length %u\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"EGPv%u, length %u\00", align 1
@EGP_VERSION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"[version %d]\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" acquire\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@egp_acquire_codes = common dso_local global i32* null, align 8
@egp_acquire_status = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c" [status %d]\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c" hello:%d poll:%d\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"[status %d]\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"[code %d]\00", align 1
@egp_reach_codes = common dso_local global i32* null, align 8
@EGPS_DOWN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c" state:%s\00", align 1
@egp_status_updown = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [16 x i8] c"[reach code %d]\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c" poll\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c" net:%s\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c" update\00", align 1
@EGPS_UNSOL = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c" unsolicited\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c" %s int %d ext %d\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c" error\00", align 1
@EGPR_UVERSION = common dso_local global i64 0, align 8
@egp_reasons = common dso_local global i32* null, align 8
@.str.18 = private unnamed_addr constant [13 x i8] c" [reason %d]\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"[type %d]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @egp_print(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.egp_packet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to %struct.egp_packet*
  store %struct.egp_packet* %12, %struct.egp_packet** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 56
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load %struct.egp_packet*, %struct.egp_packet** %7, align 8
  %18 = call i32 @ND_TTEST(%struct.egp_packet* byval(%struct.egp_packet) align 8 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([7 x i8]* @.str to %struct.TYPE_6__*))
  br label %336

23:                                               ; preds = %16
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = load %struct.egp_packet*, %struct.egp_packet** %7, align 8
  %31 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.egp_packet*, %struct.egp_packet** %7, align 8
  %34 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %33, i32 0, i32 11
  %35 = call i64 @EXTRACT_16BITS(i32* %34)
  %36 = load %struct.egp_packet*, %struct.egp_packet** %7, align 8
  %37 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %36, i32 0, i32 10
  %38 = call i64 @EXTRACT_16BITS(i32* %37)
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to %struct.TYPE_6__*
  %42 = call i32 @ND_PRINT(%struct.TYPE_6__* %41)
  br label %336

43:                                               ; preds = %23
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = load %struct.egp_packet*, %struct.egp_packet** %7, align 8
  %46 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to %struct.TYPE_6__*
  %51 = call i32 @ND_PRINT(%struct.TYPE_6__* %50)
  br label %52

52:                                               ; preds = %43
  %53 = load %struct.egp_packet*, %struct.egp_packet** %7, align 8
  %54 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @EGP_VERSION, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = load %struct.egp_packet*, %struct.egp_packet** %7, align 8
  %61 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.TYPE_6__*
  %64 = call i32 @ND_PRINT(%struct.TYPE_6__* %63)
  br label %336

65:                                               ; preds = %52
  %66 = load %struct.egp_packet*, %struct.egp_packet** %7, align 8
  %67 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %10, align 4
  %69 = load %struct.egp_packet*, %struct.egp_packet** %7, align 8
  %70 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  %72 = load %struct.egp_packet*, %struct.egp_packet** %7, align 8
  %73 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %10, align 4
  switch i32 %75, label %330 [
    i32 132, label %76
    i32 129, label %152
    i32 130, label %191
    i32 128, label %224
    i32 131, label %283
  ]

76:                                               ; preds = %65
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([9 x i8]* @.str.4 to %struct.TYPE_6__*))
  %79 = load i32, i32* %9, align 4
  switch i32 %79, label %145 [
    i32 141, label %80
    i32 145, label %80
    i32 142, label %117
    i32 147, label %117
    i32 146, label %117
  ]

80:                                               ; preds = %76, %76
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = load i32*, i32** @egp_acquire_codes, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to %struct.TYPE_6__*
  %89 = call i32 @ND_PRINT(%struct.TYPE_6__* %88)
  %90 = load i32, i32* %8, align 4
  switch i32 %90, label %101 [
    i32 133, label %91
    i32 140, label %91
    i32 135, label %91
  ]

91:                                               ; preds = %80, %80, %80
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = load i32*, i32** @egp_acquire_status, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to %struct.TYPE_6__*
  %100 = call i32 @ND_PRINT(%struct.TYPE_6__* %99)
  br label %107

101:                                              ; preds = %80
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to %struct.TYPE_6__*
  %106 = call i32 @ND_PRINT(%struct.TYPE_6__* %105)
  br label %107

107:                                              ; preds = %101, %91
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %109 = load %struct.egp_packet*, %struct.egp_packet** %7, align 8
  %110 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %109, i32 0, i32 9
  %111 = call i64 @EXTRACT_16BITS(i32* %110)
  %112 = load %struct.egp_packet*, %struct.egp_packet** %7, align 8
  %113 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %112, i32 0, i32 8
  %114 = call i64 @EXTRACT_16BITS(i32* %113)
  %115 = inttoptr i64 %114 to %struct.TYPE_6__*
  %116 = call i32 @ND_PRINT(%struct.TYPE_6__* %115)
  br label %151

117:                                              ; preds = %76, %76, %76
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = load i32*, i32** @egp_acquire_codes, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to %struct.TYPE_6__*
  %126 = call i32 @ND_PRINT(%struct.TYPE_6__* %125)
  %127 = load i32, i32* %8, align 4
  switch i32 %127, label %138 [
    i32 133, label %128
    i32 137, label %128
    i32 139, label %128
    i32 138, label %128
    i32 136, label %128
    i32 134, label %128
  ]

128:                                              ; preds = %117, %117, %117, %117, %117, %117
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %130 = load i32*, i32** @egp_acquire_status, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to %struct.TYPE_6__*
  %137 = call i32 @ND_PRINT(%struct.TYPE_6__* %136)
  br label %144

138:                                              ; preds = %117
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to %struct.TYPE_6__*
  %143 = call i32 @ND_PRINT(%struct.TYPE_6__* %142)
  br label %144

144:                                              ; preds = %138, %128
  br label %151

145:                                              ; preds = %76
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to %struct.TYPE_6__*
  %150 = call i32 @ND_PRINT(%struct.TYPE_6__* %149)
  br label %151

151:                                              ; preds = %145, %144, %107
  br label %336

152:                                              ; preds = %65
  %153 = load i32, i32* %9, align 4
  switch i32 %153, label %184 [
    i32 143, label %154
    i32 144, label %154
  ]

154:                                              ; preds = %152, %152
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %156 = load i32*, i32** @egp_reach_codes, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to %struct.TYPE_6__*
  %163 = call i32 @ND_PRINT(%struct.TYPE_6__* %162)
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* @EGPS_DOWN, align 4
  %166 = icmp sle i32 %164, %165
  br i1 %166, label %167, label %177

167:                                              ; preds = %154
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %169 = load i32*, i32** @egp_status_updown, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = inttoptr i64 %174 to %struct.TYPE_6__*
  %176 = call i32 @ND_PRINT(%struct.TYPE_6__* %175)
  br label %183

177:                                              ; preds = %154
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = inttoptr i64 %180 to %struct.TYPE_6__*
  %182 = call i32 @ND_PRINT(%struct.TYPE_6__* %181)
  br label %183

183:                                              ; preds = %177, %167
  br label %190

184:                                              ; preds = %152
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to %struct.TYPE_6__*
  %189 = call i32 @ND_PRINT(%struct.TYPE_6__* %188)
  br label %190

190:                                              ; preds = %184, %183
  br label %336

191:                                              ; preds = %65
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %193 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([6 x i8]* @.str.12 to %struct.TYPE_6__*))
  %194 = load %struct.egp_packet*, %struct.egp_packet** %7, align 8
  %195 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @EGPS_DOWN, align 4
  %198 = icmp sle i32 %196, %197
  br i1 %198, label %199, label %209

199:                                              ; preds = %191
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %201 = load i32*, i32** @egp_status_updown, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = inttoptr i64 %206 to %struct.TYPE_6__*
  %208 = call i32 @ND_PRINT(%struct.TYPE_6__* %207)
  br label %215

209:                                              ; preds = %191
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = inttoptr i64 %212 to %struct.TYPE_6__*
  %214 = call i32 @ND_PRINT(%struct.TYPE_6__* %213)
  br label %215

215:                                              ; preds = %209, %199
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %218 = load %struct.egp_packet*, %struct.egp_packet** %7, align 8
  %219 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %218, i32 0, i32 7
  %220 = call i32 @ipaddr_string(%struct.TYPE_6__* %217, i32* %219)
  %221 = sext i32 %220 to i64
  %222 = inttoptr i64 %221 to %struct.TYPE_6__*
  %223 = call i32 @ND_PRINT(%struct.TYPE_6__* %222)
  br label %336

224:                                              ; preds = %65
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %226 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([8 x i8]* @.str.14 to %struct.TYPE_6__*))
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* @EGPS_UNSOL, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %224
  %232 = load i32, i32* @EGPS_UNSOL, align 4
  %233 = xor i32 %232, -1
  %234 = load i32, i32* %8, align 4
  %235 = and i32 %234, %233
  store i32 %235, i32* %8, align 4
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %237 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([13 x i8]* @.str.15 to %struct.TYPE_6__*))
  br label %238

238:                                              ; preds = %231, %224
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* @EGPS_DOWN, align 4
  %241 = icmp sle i32 %239, %240
  br i1 %241, label %242, label %252

242:                                              ; preds = %238
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %244 = load i32*, i32** @egp_status_updown, align 8
  %245 = load i32, i32* %8, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = inttoptr i64 %249 to %struct.TYPE_6__*
  %251 = call i32 @ND_PRINT(%struct.TYPE_6__* %250)
  br label %258

252:                                              ; preds = %238
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %254 = load i32, i32* %8, align 4
  %255 = sext i32 %254 to i64
  %256 = inttoptr i64 %255 to %struct.TYPE_6__*
  %257 = call i32 @ND_PRINT(%struct.TYPE_6__* %256)
  br label %258

258:                                              ; preds = %252, %242
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %261 = load %struct.egp_packet*, %struct.egp_packet** %7, align 8
  %262 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %261, i32 0, i32 7
  %263 = call i32 @ipaddr_string(%struct.TYPE_6__* %260, i32* %262)
  %264 = load %struct.egp_packet*, %struct.egp_packet** %7, align 8
  %265 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.egp_packet*, %struct.egp_packet** %7, align 8
  %268 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 8
  %270 = sext i32 %269 to i64
  %271 = inttoptr i64 %270 to %struct.TYPE_6__*
  %272 = call i32 @ND_PRINT(%struct.TYPE_6__* %271)
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %258
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %279 = load %struct.egp_packet*, %struct.egp_packet** %7, align 8
  %280 = load i32, i32* %6, align 4
  %281 = call i32 @egpnrprint(%struct.TYPE_6__* %278, %struct.egp_packet* %279, i32 %280)
  br label %282

282:                                              ; preds = %277, %258
  br label %336

283:                                              ; preds = %65
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %285 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([7 x i8]* @.str.17 to %struct.TYPE_6__*))
  %286 = load i32, i32* %8, align 4
  %287 = load i32, i32* @EGPS_DOWN, align 4
  %288 = icmp sle i32 %286, %287
  br i1 %288, label %289, label %299

289:                                              ; preds = %283
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %291 = load i32*, i32** @egp_status_updown, align 8
  %292 = load i32, i32* %8, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  %297 = inttoptr i64 %296 to %struct.TYPE_6__*
  %298 = call i32 @ND_PRINT(%struct.TYPE_6__* %297)
  br label %305

299:                                              ; preds = %283
  %300 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %301 = load i32, i32* %8, align 4
  %302 = sext i32 %301 to i64
  %303 = inttoptr i64 %302 to %struct.TYPE_6__*
  %304 = call i32 @ND_PRINT(%struct.TYPE_6__* %303)
  br label %305

305:                                              ; preds = %299, %289
  %306 = load %struct.egp_packet*, %struct.egp_packet** %7, align 8
  %307 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %306, i32 0, i32 4
  %308 = call i64 @EXTRACT_16BITS(i32* %307)
  %309 = load i64, i64* @EGPR_UVERSION, align 8
  %310 = icmp ule i64 %308, %309
  br i1 %310, label %311, label %322

311:                                              ; preds = %305
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %313 = load i32*, i32** @egp_reasons, align 8
  %314 = load %struct.egp_packet*, %struct.egp_packet** %7, align 8
  %315 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %314, i32 0, i32 4
  %316 = call i64 @EXTRACT_16BITS(i32* %315)
  %317 = getelementptr inbounds i32, i32* %313, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = sext i32 %318 to i64
  %320 = inttoptr i64 %319 to %struct.TYPE_6__*
  %321 = call i32 @ND_PRINT(%struct.TYPE_6__* %320)
  br label %329

322:                                              ; preds = %305
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %324 = load %struct.egp_packet*, %struct.egp_packet** %7, align 8
  %325 = getelementptr inbounds %struct.egp_packet, %struct.egp_packet* %324, i32 0, i32 4
  %326 = call i64 @EXTRACT_16BITS(i32* %325)
  %327 = inttoptr i64 %326 to %struct.TYPE_6__*
  %328 = call i32 @ND_PRINT(%struct.TYPE_6__* %327)
  br label %329

329:                                              ; preds = %322, %311
  br label %336

330:                                              ; preds = %65
  %331 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %332 = load i32, i32* %10, align 4
  %333 = sext i32 %332 to i64
  %334 = inttoptr i64 %333 to %struct.TYPE_6__*
  %335 = call i32 @ND_PRINT(%struct.TYPE_6__* %334)
  br label %336

336:                                              ; preds = %20, %28, %58, %330, %329, %282, %215, %190, %151
  ret void
}

declare dso_local i32 @ND_TTEST(%struct.egp_packet* byval(%struct.egp_packet) align 8) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i64 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ipaddr_string(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @egpnrprint(%struct.TYPE_6__*, %struct.egp_packet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
