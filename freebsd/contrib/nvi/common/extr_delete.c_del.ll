; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_delete.c_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_delete.c_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_16__ = type { i32, i64 }

@L_DELETED = common dso_local global i64 0, align 8
@INTERRUPT_CHECK = common dso_local global i32 0, align 4
@DBG_FATAL = common dso_local global i32 0, align 4
@ENTIRE_LINE = common dso_local global i64 0, align 8
@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"002|Line length overflow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @del(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %15, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %55, %21
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %26, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %25
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @db_delete(%struct.TYPE_15__* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %409

37:                                               ; preds = %31
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @L_DELETED, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @INTERRUPT_CHECK, align 4
  %47 = srem i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = call i64 @INTERRUPTED(%struct.TYPE_15__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %58

54:                                               ; preds = %49, %37
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %10, align 4
  br label %25

58:                                               ; preds = %53, %25
  br label %396

59:                                               ; preds = %4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = call i64 @db_last(%struct.TYPE_15__* %60, i32* %10)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 1, i32* %5, align 4
  br label %409

64:                                               ; preds = %59
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %176

70:                                               ; preds = %64
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %99

76:                                               ; preds = %70
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @DBG_FATAL, align 4
  %80 = call i64 @db_get(%struct.TYPE_15__* %77, i32 %78, i32 %79, i32** %16, i64* %12)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 1, i32* %5, align 4
  br label %409

83:                                               ; preds = %76
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @ENTIRE_LINE, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %12, align 8
  %94 = icmp uge i64 %92, %93
  br label %95

95:                                               ; preds = %89, %83
  %96 = phi i1 [ false, %83 ], [ %94, %89 ]
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 1, i32 0
  store i32 %98, i32* %17, align 4
  br label %100

99:                                               ; preds = %70
  store i32 1, i32* %17, align 4
  br label %100

100:                                              ; preds = %99, %95
  %101 = load i32, i32* %17, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %175

103:                                              ; preds = %100
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %137, %103
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp sgt i32 %108, %111
  br i1 %112, label %113, label %140

113:                                              ; preds = %107
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %115 = load i32, i32* %10, align 4
  %116 = call i64 @db_delete(%struct.TYPE_15__* %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i32 1, i32* %5, align 4
  br label %409

119:                                              ; preds = %113
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* @L_DELETED, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @INTERRUPT_CHECK, align 4
  %129 = srem i32 %127, %128
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %119
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %133 = call i64 @INTERRUPTED(%struct.TYPE_15__* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  br label %140

136:                                              ; preds = %131, %119
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %10, align 4
  br label %107

140:                                              ; preds = %135, %107
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @DBG_FATAL, align 4
  %146 = call i64 @db_get(%struct.TYPE_15__* %141, i32 %144, i32 %145, i32** %16, i64* %12)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  store i32 1, i32* %5, align 4
  br label %409

149:                                              ; preds = %140
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %151 = load i32*, i32** %15, align 8
  %152 = load i64, i64* %11, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @GET_SPACE_RETW(%struct.TYPE_15__* %150, i32* %151, i64 %152, i64 %155)
  %157 = load i32*, i32** %15, align 8
  %158 = load i32*, i32** %16, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @MEMCPY(i32* %157, i32* %158, i64 %161)
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32*, i32** %15, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = call i64 @db_set(%struct.TYPE_15__* %163, i32 %166, i32* %167, i64 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %149
  store i32 1, i32* %5, align 4
  br label %409

174:                                              ; preds = %149
  br label %396

175:                                              ; preds = %100
  br label %176

176:                                              ; preds = %175, %64
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp eq i32 %179, %182
  br i1 %183, label %184, label %248

184:                                              ; preds = %176
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @DBG_FATAL, align 4
  %190 = call i64 @db_get(%struct.TYPE_15__* %185, i32 %188, i32 %189, i32** %16, i64* %12)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %184
  store i32 1, i32* %5, align 4
  br label %409

193:                                              ; preds = %184
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %195 = load i32*, i32** %15, align 8
  %196 = load i64, i64* %11, align 8
  %197 = load i64, i64* %12, align 8
  %198 = call i32 @GET_SPACE_RETW(%struct.TYPE_15__* %194, i32* %195, i64 %196, i64 %197)
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %193
  %204 = load i32*, i32** %15, align 8
  %205 = load i32*, i32** %16, align 8
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @MEMCPY(i32* %204, i32* %205, i64 %208)
  br label %210

210:                                              ; preds = %203, %193
  %211 = load i32*, i32** %15, align 8
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds i32, i32* %211, i64 %214
  %216 = load i32*, i32** %16, align 8
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = add i64 %219, 1
  %221 = getelementptr inbounds i32, i32* %216, i64 %220
  %222 = load i64, i64* %12, align 8
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = add i64 %225, 1
  %227 = sub i64 %222, %226
  %228 = call i32 @MEMCPY(i32* %215, i32* %221, i64 %227)
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32*, i32** %15, align 8
  %234 = load i64, i64* %12, align 8
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = sub i64 %237, %240
  %242 = add i64 %241, 1
  %243 = sub i64 %234, %242
  %244 = call i64 @db_set(%struct.TYPE_15__* %229, i32 %232, i32* %233, i64 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %210
  br label %398

247:                                              ; preds = %210
  br label %396

248:                                              ; preds = %176
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %14, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %273

253:                                              ; preds = %248
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @DBG_FATAL, align 4
  %259 = call i64 @db_get(%struct.TYPE_15__* %254, i32 %257, i32 %258, i32** %16, i64* null)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %253
  store i32 1, i32* %5, align 4
  br label %409

262:                                              ; preds = %253
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %264 = load i32*, i32** %15, align 8
  %265 = load i64, i64* %11, align 8
  %266 = load i64, i64* %14, align 8
  %267 = add i64 %266, 256
  %268 = call i32 @GET_SPACE_RETW(%struct.TYPE_15__* %263, i32* %264, i64 %265, i64 %267)
  %269 = load i32*, i32** %15, align 8
  %270 = load i32*, i32** %16, align 8
  %271 = load i64, i64* %14, align 8
  %272 = call i32 @MEMCPY(i32* %269, i32* %270, i64 %271)
  br label %273

273:                                              ; preds = %262, %248
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @DBG_FATAL, align 4
  %279 = call i64 @db_get(%struct.TYPE_15__* %274, i32 %277, i32 %278, i32** %16, i64* %12)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %273
  br label %398

282:                                              ; preds = %273
  %283 = load i64, i64* %12, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %348

285:                                              ; preds = %282
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* %12, align 8
  %290 = sub i64 %289, 1
  %291 = icmp ne i64 %288, %290
  br i1 %291, label %292, label %348

292:                                              ; preds = %285
  %293 = load i64, i64* %12, align 8
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = add i64 %296, 1
  %298 = sub i64 %293, %297
  %299 = load i64, i64* %14, align 8
  %300 = add i64 %298, %299
  store i64 %300, i64* %13, align 8
  %301 = load i64, i64* %14, align 8
  %302 = load i64, i64* %13, align 8
  %303 = icmp ugt i64 %301, %302
  br i1 %303, label %304, label %308

304:                                              ; preds = %292
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %306 = load i32, i32* @M_ERR, align 4
  %307 = call i32 @msgq(%struct.TYPE_15__* %305, i32 %306, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %398

308:                                              ; preds = %292
  %309 = load i64, i64* %14, align 8
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %317

311:                                              ; preds = %308
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %313 = load i32*, i32** %15, align 8
  %314 = load i64, i64* %11, align 8
  %315 = load i64, i64* %13, align 8
  %316 = call i32 @GET_SPACE_RETW(%struct.TYPE_15__* %312, i32* %313, i64 %314, i64 %315)
  br label %323

317:                                              ; preds = %308
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %319 = load i32*, i32** %15, align 8
  %320 = load i64, i64* %11, align 8
  %321 = load i64, i64* %13, align 8
  %322 = call i32 @ADD_SPACE_RETW(%struct.TYPE_15__* %318, i32* %319, i64 %320, i64 %321)
  br label %323

323:                                              ; preds = %317, %311
  %324 = load i32*, i32** %15, align 8
  %325 = load i64, i64* %14, align 8
  %326 = getelementptr inbounds i32, i32* %324, i64 %325
  %327 = load i32*, i32** %16, align 8
  %328 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = add i64 %330, 1
  %332 = getelementptr inbounds i32, i32* %327, i64 %331
  %333 = load i64, i64* %12, align 8
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = add i64 %336, 1
  %338 = sub i64 %333, %337
  %339 = call i32 @MEMCPY(i32* %326, i32* %332, i64 %338)
  %340 = load i64, i64* %12, align 8
  %341 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = add i64 %343, 1
  %345 = sub i64 %340, %344
  %346 = load i64, i64* %14, align 8
  %347 = add i64 %346, %345
  store i64 %347, i64* %14, align 8
  br label %348

348:                                              ; preds = %323, %285, %282
  %349 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %350 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load i32*, i32** %15, align 8
  %354 = load i64, i64* %14, align 8
  %355 = call i64 @db_set(%struct.TYPE_15__* %349, i32 %352, i32* %353, i64 %354)
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %348
  br label %398

358:                                              ; preds = %348
  %359 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %360 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  store i32 %361, i32* %10, align 4
  br label %362

362:                                              ; preds = %392, %358
  %363 = load i32, i32* %10, align 4
  %364 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %365 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = icmp sgt i32 %363, %366
  br i1 %367, label %368, label %395

368:                                              ; preds = %362
  %369 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %370 = load i32, i32* %10, align 4
  %371 = call i64 @db_delete(%struct.TYPE_15__* %369, i32 %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %368
  br label %398

374:                                              ; preds = %368
  %375 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %375, i32 0, i32 0
  %377 = load i32*, i32** %376, align 8
  %378 = load i64, i64* @L_DELETED, align 8
  %379 = getelementptr inbounds i32, i32* %377, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %379, align 4
  %382 = load i32, i32* %10, align 4
  %383 = load i32, i32* @INTERRUPT_CHECK, align 4
  %384 = srem i32 %382, %383
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %391

386:                                              ; preds = %374
  %387 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %388 = call i64 @INTERRUPTED(%struct.TYPE_15__* %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %391

390:                                              ; preds = %386
  br label %395

391:                                              ; preds = %386, %374
  br label %392

392:                                              ; preds = %391
  %393 = load i32, i32* %10, align 4
  %394 = add nsw i32 %393, -1
  store i32 %394, i32* %10, align 4
  br label %362

395:                                              ; preds = %390, %362
  br label %396

396:                                              ; preds = %395, %247, %174, %58
  store i32 0, i32* %18, align 4
  br i1 false, label %397, label %399

397:                                              ; preds = %396
  br label %398

398:                                              ; preds = %397, %373, %357, %304, %281, %246
  store i32 1, i32* %18, align 4
  br label %399

399:                                              ; preds = %398, %396
  %400 = load i32*, i32** %15, align 8
  %401 = icmp ne i32* %400, null
  br i1 %401, label %402, label %407

402:                                              ; preds = %399
  %403 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %404 = load i32*, i32** %15, align 8
  %405 = load i64, i64* %11, align 8
  %406 = call i32 @FREE_SPACEW(%struct.TYPE_15__* %403, i32* %404, i64 %405)
  br label %407

407:                                              ; preds = %402, %399
  %408 = load i32, i32* %18, align 4
  store i32 %408, i32* %5, align 4
  br label %409

409:                                              ; preds = %407, %261, %192, %173, %148, %118, %82, %63, %36
  %410 = load i32, i32* %5, align 4
  ret i32 %410
}

declare dso_local i64 @db_delete(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @INTERRUPTED(%struct.TYPE_15__*) #1

declare dso_local i64 @db_last(%struct.TYPE_15__*, i32*) #1

declare dso_local i64 @db_get(%struct.TYPE_15__*, i32, i32, i32**, i64*) #1

declare dso_local i32 @GET_SPACE_RETW(%struct.TYPE_15__*, i32*, i64, i64) #1

declare dso_local i32 @MEMCPY(i32*, i32*, i64) #1

declare dso_local i64 @db_set(%struct.TYPE_15__*, i32, i32*, i64) #1

declare dso_local i32 @msgq(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @ADD_SPACE_RETW(%struct.TYPE_15__*, i32*, i64, i64) #1

declare dso_local i32 @FREE_SPACEW(%struct.TYPE_15__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
