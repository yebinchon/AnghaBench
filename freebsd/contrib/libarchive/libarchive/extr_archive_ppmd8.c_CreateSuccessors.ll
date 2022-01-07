; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_ppmd8.c_CreateSuccessors.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_ppmd8.c_CreateSuccessors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i64, i64*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i8*, i32 }
%struct.TYPE_21__ = type { i64, i32, i64, i8* }

@PPMD8_MAX_ORDER = common dso_local global i32 0, align 4
@MAX_FREQ = common dso_local global i32 0, align 4
@UNIT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_23__*, i32, %struct.TYPE_22__*, %struct.TYPE_21__*)* @CreateSuccessors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @CreateSuccessors(%struct.TYPE_23__* %0, i32 %1, %struct.TYPE_22__* %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_22__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_22__*, align 8
  %22 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %9, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %26 = call i64 @SUCCESSOR(%struct.TYPE_22__* %25)
  store i64 %26, i64* %12, align 8
  %27 = load i32, i32* @PPMD8_MAX_ORDER, align 4
  %28 = add nsw i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %13, align 8
  %31 = alloca %struct.TYPE_22__*, i64 %29, align 16
  store i64 %29, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %4
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  %38 = load i32, i32* %15, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %15, align 4
  %40 = zext i32 %38 to i64
  %41 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %31, i64 %40
  store %struct.TYPE_22__* %37, %struct.TYPE_22__** %41, align 8
  br label %42

42:                                               ; preds = %34, %4
  br label %43

43:                                               ; preds = %134, %42
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %140

48:                                               ; preds = %43
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %50 = call %struct.TYPE_21__* @SUFFIX(%struct.TYPE_21__* %49)
  store %struct.TYPE_21__* %50, %struct.TYPE_21__** %9, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %52 = icmp ne %struct.TYPE_22__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %54, %struct.TYPE_22__** %17, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %8, align 8
  br label %120

55:                                               ; preds = %48
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %94

60:                                               ; preds = %55
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %62 = call %struct.TYPE_22__* @STATS(%struct.TYPE_21__* %61)
  store %struct.TYPE_22__* %62, %struct.TYPE_22__** %17, align 8
  br label %63

63:                                               ; preds = %74, %60
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %66, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 1
  store %struct.TYPE_22__* %76, %struct.TYPE_22__** %17, align 8
  br label %63

77:                                               ; preds = %63
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MAX_FREQ, align 4
  %82 = sub nsw i32 %81, 9
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %84, %77
  br label %119

94:                                               ; preds = %55
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %96 = call %struct.TYPE_22__* @ONE_STATE(%struct.TYPE_21__* %95)
  store %struct.TYPE_22__* %96, %struct.TYPE_22__** %17, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %101 = call %struct.TYPE_21__* @SUFFIX(%struct.TYPE_21__* %100)
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %109, 24
  %111 = zext i1 %110 to i32
  %112 = and i32 %106, %111
  %113 = add nsw i32 %99, %112
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  %116 = ptrtoint i8* %115 to i32
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %94, %93
  br label %120

120:                                              ; preds = %119, %53
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %122 = call i64 @SUCCESSOR(%struct.TYPE_22__* %121)
  store i64 %122, i64* %16, align 8
  %123 = load i64, i64* %16, align 8
  %124 = load i64, i64* %12, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %120
  %127 = load i64, i64* %16, align 8
  %128 = call %struct.TYPE_21__* @CTX(i64 %127)
  store %struct.TYPE_21__* %128, %struct.TYPE_21__** %9, align 8
  %129 = load i32, i32* %15, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_21__* %132, %struct.TYPE_21__** %5, align 8
  store i32 1, i32* %18, align 4
  br label %296

133:                                              ; preds = %126
  br label %140

134:                                              ; preds = %120
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %136 = load i32, i32* %15, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %15, align 4
  %138 = zext i32 %136 to i64
  %139 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %31, i64 %138
  store %struct.TYPE_22__* %135, %struct.TYPE_22__** %139, align 8
  br label %43

140:                                              ; preds = %133, %43
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %142 = load i64, i64* %12, align 8
  %143 = call i64 @Ppmd8_GetPtr(%struct.TYPE_23__* %141, i64 %142)
  %144 = inttoptr i64 %143 to i8**
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i8* %145, i8** %146, align 8
  %147 = load i64, i64* %12, align 8
  %148 = add nsw i64 %147, 1
  %149 = call i32 @SetSuccessor(%struct.TYPE_22__* %10, i64 %148)
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 3
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = icmp uge i8* %154, inttoptr (i64 64 to i8*)
  %156 = zext i1 %155 to i32
  %157 = mul nsw i32 16, %156
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = icmp uge i8* %159, inttoptr (i64 64 to i8*)
  %161 = zext i1 %160 to i32
  %162 = mul nsw i32 8, %161
  %163 = add nsw i32 %157, %162
  %164 = sext i32 %163 to i64
  %165 = inttoptr i64 %164 to i8*
  store i8* %165, i8** %11, align 8
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %140
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %172 = call %struct.TYPE_22__* @ONE_STATE(%struct.TYPE_21__* %171)
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  store i32 %174, i32* %175, align 8
  br label %232

176:                                              ; preds = %140
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %178 = call %struct.TYPE_22__* @STATS(%struct.TYPE_21__* %177)
  store %struct.TYPE_22__* %178, %struct.TYPE_22__** %21, align 8
  br label %179

179:                                              ; preds = %187, %176
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = icmp ne i8* %182, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %179
  br label %187

187:                                              ; preds = %186
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 1
  store %struct.TYPE_22__* %189, %struct.TYPE_22__** %21, align 8
  br label %179

190:                                              ; preds = %179
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = sub nsw i32 %193, 1
  store i32 %194, i32* %19, align 4
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = sub nsw i64 %198, %201
  %203 = load i32, i32* %19, align 4
  %204 = sext i32 %203 to i64
  %205 = sub nsw i64 %202, %204
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %20, align 4
  %207 = load i32, i32* %19, align 4
  %208 = mul nsw i32 2, %207
  %209 = load i32, i32* %20, align 4
  %210 = icmp sle i32 %208, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %190
  %212 = load i32, i32* %19, align 4
  %213 = mul nsw i32 5, %212
  %214 = load i32, i32* %20, align 4
  %215 = icmp sgt i32 %213, %214
  %216 = zext i1 %215 to i32
  br label %225

217:                                              ; preds = %190
  %218 = load i32, i32* %19, align 4
  %219 = load i32, i32* %20, align 4
  %220 = mul nsw i32 2, %219
  %221 = add nsw i32 %218, %220
  %222 = sub nsw i32 %221, 3
  %223 = load i32, i32* %20, align 4
  %224 = sdiv i32 %222, %223
  br label %225

225:                                              ; preds = %217, %211
  %226 = phi i32 [ %216, %211 ], [ %224, %217 ]
  %227 = add nsw i32 1, %226
  %228 = sext i32 %227 to i64
  %229 = inttoptr i64 %228 to i8*
  %230 = ptrtoint i8* %229 to i32
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  store i32 %230, i32* %231, align 8
  br label %232

232:                                              ; preds = %225, %170
  br label %233

233:                                              ; preds = %291, %232
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %236, %239
  br i1 %240, label %241, label %248

241:                                              ; preds = %233
  %242 = load i64, i64* @UNIT_SIZE, align 8
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = sub nsw i64 %245, %242
  store i64 %246, i64* %244, align 8
  %247 = inttoptr i64 %246 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %247, %struct.TYPE_21__** %22, align 8
  br label %268

248:                                              ; preds = %233
  %249 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 2
  %251 = load i64*, i64** %250, align 8
  %252 = getelementptr inbounds i64, i64* %251, i64 0
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %248
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %257 = call i64 @RemoveNode(%struct.TYPE_23__* %256, i32 0)
  %258 = inttoptr i64 %257 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %258, %struct.TYPE_21__** %22, align 8
  br label %267

259:                                              ; preds = %248
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %261 = call i64 @AllocUnitsRare(%struct.TYPE_23__* %260, i32 0)
  %262 = inttoptr i64 %261 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %262, %struct.TYPE_21__** %22, align 8
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %264 = icmp ne %struct.TYPE_21__* %263, null
  br i1 %264, label %266, label %265

265:                                              ; preds = %259
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  store i32 1, i32* %18, align 4
  br label %296

266:                                              ; preds = %259
  br label %267

267:                                              ; preds = %266, %255
  br label %268

268:                                              ; preds = %267, %241
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %269, i32 0, i32 0
  store i64 0, i64* %270, align 8
  %271 = load i8*, i8** %11, align 8
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %273 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %272, i32 0, i32 3
  store i8* %271, i8** %273, align 8
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %275 = call %struct.TYPE_22__* @ONE_STATE(%struct.TYPE_21__* %274)
  %276 = bitcast %struct.TYPE_22__* %275 to i8*
  %277 = bitcast %struct.TYPE_22__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %276, i8* align 8 %277, i64 16, i1 false)
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %279 = call i64 @REF(%struct.TYPE_21__* %278)
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 2
  store i64 %279, i64* %281, align 8
  %282 = load i32, i32* %15, align 4
  %283 = add i32 %282, -1
  store i32 %283, i32* %15, align 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %31, i64 %284
  %286 = load %struct.TYPE_22__*, %struct.TYPE_22__** %285, align 8
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %288 = call i64 @REF(%struct.TYPE_21__* %287)
  %289 = call i32 @SetSuccessor(%struct.TYPE_22__* %286, i64 %288)
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  store %struct.TYPE_21__* %290, %struct.TYPE_21__** %9, align 8
  br label %291

291:                                              ; preds = %268
  %292 = load i32, i32* %15, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %233, label %294

294:                                              ; preds = %291
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_21__* %295, %struct.TYPE_21__** %5, align 8
  store i32 1, i32* %18, align 4
  br label %296

296:                                              ; preds = %294, %265, %131
  %297 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %297)
  %298 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  ret %struct.TYPE_21__* %298
}

declare dso_local i64 @SUCCESSOR(%struct.TYPE_22__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_21__* @SUFFIX(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @STATS(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @ONE_STATE(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @CTX(i64) #1

declare dso_local i64 @Ppmd8_GetPtr(%struct.TYPE_23__*, i64) #1

declare dso_local i32 @SetSuccessor(%struct.TYPE_22__*, i64) #1

declare dso_local i64 @RemoveNode(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @AllocUnitsRare(%struct.TYPE_23__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @REF(%struct.TYPE_21__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
