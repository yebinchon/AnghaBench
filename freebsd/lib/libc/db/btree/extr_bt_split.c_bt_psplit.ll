; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_split.c_bt_psplit.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_split.c_bt_psplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_22__ = type { i32, i32*, i32, i32, i64 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32 }

@BTDATAOFF = common dso_local global i32 0, align 4
@P_TYPE = common dso_local global i32 0, align 4
@P_BIGKEY = common dso_local global i32 0, align 4
@NRINTERNAL = common dso_local global i32 0, align 4
@CURS_INIT = common dso_local global i32 0, align 4
@MAX_PAGE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_24__*, %struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*, i32*, i64)* @bt_psplit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @bt_psplit(%struct.TYPE_24__* %0, %struct.TYPE_22__* %1, %struct.TYPE_22__* %2, %struct.TYPE_22__* %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %27, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %23, align 4
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BTDATAOFF, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* %19, align 4
  %37 = sdiv i32 %36, 2
  store i32 %37, i32* %20, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %39 = call i32 @NEXTINDEX(%struct.TYPE_22__* %38)
  store i32 %39, i32* %24, align 4
  br label %40

40:                                               ; preds = %170, %6
  %41 = load i32, i32* %21, align 4
  %42 = load i32, i32* %24, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %173

44:                                               ; preds = %40
  %45 = load i32, i32* %23, align 4
  %46 = load i32, i32* %22, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i64, i64* %12, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %26, align 4
  store i32 0, i32* %28, align 4
  br label %98

51:                                               ; preds = %44
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @P_TYPE, align 4
  %56 = and i32 %54, %55
  switch i32 %56, label %95 [
    i32 131, label %57
    i32 130, label %71
    i32 129, label %83
    i32 128, label %88
  ]

57:                                               ; preds = %51
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %59 = load i32, i32* %21, align 4
  %60 = call %struct.TYPE_26__* @GETBINTERNAL(%struct.TYPE_22__* %58, i32 %59)
  store %struct.TYPE_26__* %60, %struct.TYPE_26__** %13, align 8
  %61 = bitcast %struct.TYPE_26__* %60 to i8*
  store i8* %61, i8** %18, align 8
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @NBINTERNAL(i32 %64)
  store i32 %65, i32* %26, align 4
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @P_BIGKEY, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %28, align 4
  br label %97

71:                                               ; preds = %51
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %73 = load i32, i32* %21, align 4
  %74 = call %struct.TYPE_25__* @GETBLEAF(%struct.TYPE_22__* %72, i32 %73)
  store %struct.TYPE_25__* %74, %struct.TYPE_25__** %14, align 8
  %75 = bitcast %struct.TYPE_25__* %74 to i8*
  store i8* %75, i8** %18, align 8
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %77 = call i32 @NBLEAF(%struct.TYPE_25__* %76)
  store i32 %77, i32* %26, align 4
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @P_BIGKEY, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %28, align 4
  br label %97

83:                                               ; preds = %51
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %85 = load i32, i32* %21, align 4
  %86 = call i8* @GETRINTERNAL(%struct.TYPE_22__* %84, i32 %85)
  store i8* %86, i8** %18, align 8
  %87 = load i32, i32* @NRINTERNAL, align 4
  store i32 %87, i32* %26, align 4
  store i32 0, i32* %28, align 4
  br label %97

88:                                               ; preds = %51
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %90 = load i32, i32* %21, align 4
  %91 = call i32* @GETRLEAF(%struct.TYPE_22__* %89, i32 %90)
  store i32* %91, i32** %16, align 8
  %92 = bitcast i32* %91 to i8*
  store i8* %92, i8** %18, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = call i32 @NRLEAF(i32* %93)
  store i32 %94, i32* %26, align 4
  store i32 0, i32* %28, align 4
  br label %97

95:                                               ; preds = %51
  %96 = call i32 (...) @abort() #3
  unreachable

97:                                               ; preds = %88, %83, %71, %57
  br label %98

98:                                               ; preds = %97, %48
  %99 = load i32, i32* %23, align 4
  %100 = load i32, i32* %22, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %98
  %103 = load i32, i32* %25, align 4
  %104 = load i32, i32* %26, align 4
  %105 = add nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = add i64 %106, 4
  %108 = load i32, i32* %19, align 4
  %109 = sext i32 %108 to i64
  %110 = icmp uge i64 %107, %109
  br i1 %110, label %116, label %111

111:                                              ; preds = %102, %98
  %112 = load i32, i32* %21, align 4
  %113 = load i32, i32* %24, align 4
  %114 = sub nsw i32 %113, 1
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %111, %102
  %117 = load i32, i32* %22, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %22, align 4
  br label %173

119:                                              ; preds = %111
  %120 = load i32, i32* %23, align 4
  %121 = load i32, i32* %22, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %147

123:                                              ; preds = %119
  %124 = load i32, i32* %21, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %21, align 4
  %126 = load i32, i32* %26, align 4
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = sub nsw i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %22, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %130, i32* %136, align 4
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %138 = bitcast %struct.TYPE_22__* %137 to i8*
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %138, i64 %142
  %144 = load i8*, i8** %18, align 8
  %145 = load i32, i32* %26, align 4
  %146 = call i32 @memmove(i8* %143, i8* %144, i32 %145)
  br label %147

147:                                              ; preds = %123, %119
  %148 = load i32, i32* %26, align 4
  %149 = sext i32 %148 to i64
  %150 = add i64 %149, 4
  %151 = load i32, i32* %25, align 4
  %152 = sext i32 %151 to i64
  %153 = add i64 %152, %150
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %25, align 4
  %155 = load i32, i32* %25, align 4
  %156 = load i32, i32* %20, align 4
  %157 = icmp sge i32 %155, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %147
  %159 = load i32, i32* %28, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i32, i32* %27, align 4
  %163 = icmp eq i32 %162, 3
  br i1 %163, label %164, label %165

164:                                              ; preds = %161, %158
  br label %173

165:                                              ; preds = %161
  %166 = load i32, i32* %27, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %27, align 4
  br label %168

168:                                              ; preds = %165
  br label %169

169:                                              ; preds = %168, %147
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %22, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %22, align 4
  br label %40

173:                                              ; preds = %164, %116, %40
  %174 = load i32, i32* %22, align 4
  %175 = add nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = mul i64 %176, 4
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = add i64 %181, %177
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %179, align 4
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 1
  store %struct.TYPE_23__* %185, %struct.TYPE_23__** %15, align 8
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %187 = load i32, i32* @CURS_INIT, align 4
  %188 = call i64 @F_ISSET(%struct.TYPE_23__* %186, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %240

190:                                              ; preds = %173
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = icmp eq i64 %194, %197
  br i1 %198, label %199, label %240

199:                                              ; preds = %190
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %23, align 4
  %205 = icmp sge i32 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %199
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 8
  br label %212

212:                                              ; preds = %206, %199
  %213 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* %21, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %226

219:                                              ; preds = %212
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 0
  store i64 %222, i64* %225, align 8
  br label %239

226:                                              ; preds = %212
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 0
  store i64 %229, i64* %232, align 8
  %233 = load i32, i32* %21, align 4
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = sub nsw i32 %237, %233
  store i32 %238, i32* %236, align 8
  br label %239

239:                                              ; preds = %226, %219
  br label %240

240:                                              ; preds = %239, %190, %173
  %241 = load i32, i32* %23, align 4
  %242 = load i32, i32* %22, align 4
  %243 = icmp sle i32 %241, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %240
  %245 = load i32, i32* @MAX_PAGE_OFFSET, align 4
  store i32 %245, i32* %23, align 4
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_22__* %246, %struct.TYPE_22__** %17, align 8
  br label %253

247:                                              ; preds = %240
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_22__* %248, %struct.TYPE_22__** %17, align 8
  %249 = load i32, i32* %21, align 4
  %250 = load i32*, i32** %11, align 8
  %251 = load i32, i32* %250, align 4
  %252 = sub nsw i32 %251, %249
  store i32 %252, i32* %250, align 4
  br label %253

253:                                              ; preds = %247, %244
  store i32 0, i32* %22, align 4
  br label %254

254:                                              ; preds = %326, %253
  %255 = load i32, i32* %21, align 4
  %256 = load i32, i32* %24, align 4
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %329

258:                                              ; preds = %254
  %259 = load i32, i32* %23, align 4
  %260 = load i32, i32* %21, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %266

262:                                              ; preds = %258
  %263 = load i32, i32* %22, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %22, align 4
  %265 = load i32, i32* @MAX_PAGE_OFFSET, align 4
  store i32 %265, i32* %23, align 4
  br label %266

266:                                              ; preds = %262, %258
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @P_TYPE, align 4
  %271 = and i32 %269, %270
  switch i32 %271, label %300 [
    i32 131, label %272
    i32 130, label %281
    i32 129, label %288
    i32 128, label %293
  ]

272:                                              ; preds = %266
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %274 = load i32, i32* %21, align 4
  %275 = call %struct.TYPE_26__* @GETBINTERNAL(%struct.TYPE_22__* %273, i32 %274)
  store %struct.TYPE_26__* %275, %struct.TYPE_26__** %13, align 8
  %276 = bitcast %struct.TYPE_26__* %275 to i8*
  store i8* %276, i8** %18, align 8
  %277 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %278 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @NBINTERNAL(i32 %279)
  store i32 %280, i32* %26, align 4
  br label %302

281:                                              ; preds = %266
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %283 = load i32, i32* %21, align 4
  %284 = call %struct.TYPE_25__* @GETBLEAF(%struct.TYPE_22__* %282, i32 %283)
  store %struct.TYPE_25__* %284, %struct.TYPE_25__** %14, align 8
  %285 = bitcast %struct.TYPE_25__* %284 to i8*
  store i8* %285, i8** %18, align 8
  %286 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %287 = call i32 @NBLEAF(%struct.TYPE_25__* %286)
  store i32 %287, i32* %26, align 4
  br label %302

288:                                              ; preds = %266
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %290 = load i32, i32* %21, align 4
  %291 = call i8* @GETRINTERNAL(%struct.TYPE_22__* %289, i32 %290)
  store i8* %291, i8** %18, align 8
  %292 = load i32, i32* @NRINTERNAL, align 4
  store i32 %292, i32* %26, align 4
  br label %302

293:                                              ; preds = %266
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %295 = load i32, i32* %21, align 4
  %296 = call i32* @GETRLEAF(%struct.TYPE_22__* %294, i32 %295)
  store i32* %296, i32** %16, align 8
  %297 = bitcast i32* %296 to i8*
  store i8* %297, i8** %18, align 8
  %298 = load i32*, i32** %16, align 8
  %299 = call i32 @NRLEAF(i32* %298)
  store i32 %299, i32* %26, align 4
  br label %302

300:                                              ; preds = %266
  %301 = call i32 (...) @abort() #3
  unreachable

302:                                              ; preds = %293, %288, %281, %272
  %303 = load i32, i32* %21, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %21, align 4
  %305 = load i32, i32* %26, align 4
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %307 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = sub nsw i32 %308, %305
  store i32 %309, i32* %307, align 8
  %310 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %311 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %310, i32 0, i32 1
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %22, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  store i32 %309, i32* %315, align 4
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %317 = bitcast %struct.TYPE_22__* %316 to i8*
  %318 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8, i8* %317, i64 %321
  %323 = load i8*, i8** %18, align 8
  %324 = load i32, i32* %26, align 4
  %325 = call i32 @memmove(i8* %322, i8* %323, i32 %324)
  br label %326

326:                                              ; preds = %302
  %327 = load i32, i32* %22, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %22, align 4
  br label %254

329:                                              ; preds = %254
  %330 = load i32, i32* %22, align 4
  %331 = sext i32 %330 to i64
  %332 = mul i64 %331, 4
  %333 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %334 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 4
  %336 = sext i32 %335 to i64
  %337 = add i64 %336, %332
  %338 = trunc i64 %337 to i32
  store i32 %338, i32* %334, align 4
  %339 = load i32, i32* %23, align 4
  %340 = load i32, i32* %24, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %349

342:                                              ; preds = %329
  %343 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %344 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %343, i32 0, i32 3
  %345 = load i32, i32* %344, align 4
  %346 = sext i32 %345 to i64
  %347 = add i64 %346, 4
  %348 = trunc i64 %347 to i32
  store i32 %348, i32* %344, align 4
  br label %349

349:                                              ; preds = %342, %329
  %350 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  ret %struct.TYPE_22__* %350
}

declare dso_local i32 @NEXTINDEX(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_26__* @GETBINTERNAL(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @NBINTERNAL(i32) #1

declare dso_local %struct.TYPE_25__* @GETBLEAF(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @NBLEAF(%struct.TYPE_25__*) #1

declare dso_local i8* @GETRINTERNAL(%struct.TYPE_22__*, i32) #1

declare dso_local i32* @GETRLEAF(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @NRLEAF(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
