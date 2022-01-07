; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_Field_Grown.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_frm_driver.c_Field_Grown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_15__*, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32*, %struct.TYPE_15__* }

@FALSE = common dso_local global i32 0, align 4
@_POSTED = common dso_local global i32 0, align 4
@_MAY_GROW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"fieldcell %p\00", align 1
@myBLANK = common dso_local global i32 0, align 4
@myZEROS = common dso_local global i32 0, align 4
@ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @Field_Grown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Field_Grown(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %24 = icmp ne %struct.TYPE_15__* %23, null
  br i1 %24, label %25, label %405

25:                                               ; preds = %2
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = call i64 @Growable(%struct.TYPE_15__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %405

29:                                               ; preds = %25
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = call i32 @Single_Line_Field(%struct.TYPE_15__* %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = call i32 @Buffer_Length(%struct.TYPE_15__* %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %9, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 7
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %11, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 10
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %14, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %47 = icmp ne %struct.TYPE_14__* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %29
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @_POSTED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %60 = icmp eq %struct.TYPE_15__* %58, %59
  br label %61

61:                                               ; preds = %55, %48, %29
  %62 = phi i1 [ false, %48 ], [ false, %29 ], [ %60, %55 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %68 = call i32 @Synchronize_Buffer(%struct.TYPE_14__* %67)
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %110

72:                                               ; preds = %69
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = mul nsw i32 %75, %76
  store i32 %77, i32* %13, align 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %72
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %85, %88
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @Minimum(i32 %89, i32 %90)
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %82, %72
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %100, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %92
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %107 = load i32, i32* @_MAY_GROW, align 4
  %108 = call i32 @ClrStatus(%struct.TYPE_15__* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %92
  br label %152

110:                                              ; preds = %69
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %113, %116
  %118 = load i32, i32* %4, align 4
  %119 = mul nsw i32 %117, %118
  store i32 %119, i32* %13, align 4
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %110
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %127, %130
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @Minimum(i32 %131, i32 %132)
  store i32 %133, i32* %13, align 4
  br label %134

134:                                              ; preds = %124, %110
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %142, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %134
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %149 = load i32, i32* @_MAY_GROW, align 4
  %150 = call i32 @ClrStatus(%struct.TYPE_15__* %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %134
  br label %152

152:                                              ; preds = %151, %109
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %154 = call i32 @Buffer_Length(%struct.TYPE_15__* %153)
  store i32 %154, i32* %8, align 4
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %156 = call i32 @Total_Buffer_Size(%struct.TYPE_15__* %155)
  %157 = call i64 @malloc(i32 %156)
  %158 = inttoptr i64 %157 to i32*
  store i32* %158, i32** %12, align 8
  %159 = load i32*, i32** %12, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %194, label %161

161:                                              ; preds = %152
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* %10, align 4
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %161
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %173, %176
  br i1 %177, label %189, label %178

178:                                              ; preds = %170, %161
  %179 = load i32, i32* %6, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %193, label %181

181:                                              ; preds = %178
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %184, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %181, %170
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %191 = load i32, i32* @_MAY_GROW, align 4
  %192 = call i32 @SetStatus(%struct.TYPE_15__* %190, i32 %191)
  br label %193

193:                                              ; preds = %189, %181, %178
  br label %404

194:                                              ; preds = %152
  %195 = load i32, i32* @TRUE, align 4
  store i32 %195, i32* %5, align 4
  %196 = call i32 @T_CREATE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %197 = load i32*, i32** %12, align 8
  %198 = bitcast i32* %197 to i8*
  %199 = ptrtoint i8* %198 to i32
  %200 = call i32 @T(i32 %199)
  %201 = load i32*, i32** %12, align 8
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 7
  store i32* %201, i32** %203, align 8
  store i32 0, i32* %16, align 4
  br label %204

204:                                              ; preds = %256, %194
  %205 = load i32, i32* %16, align 4
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = icmp sle i32 %205, %208
  br i1 %209, label %210, label %259

210:                                              ; preds = %204
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %212 = load i32, i32* %16, align 4
  %213 = call i32* @Address_Of_Nth_Buffer(%struct.TYPE_15__* %211, i32 %212)
  store i32* %213, i32** %19, align 8
  %214 = load i32*, i32** %11, align 8
  %215 = load i32, i32* %16, align 4
  %216 = load i32, i32* %7, align 4
  %217 = add nsw i32 1, %216
  %218 = mul nsw i32 %215, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %214, i64 %219
  store i32* %220, i32** %18, align 8
  store i32 0, i32* %17, align 4
  br label %221

221:                                              ; preds = %235, %210
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* %7, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %238

225:                                              ; preds = %221
  %226 = load i32*, i32** %18, align 8
  %227 = load i32, i32* %17, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** %19, align 8
  %232 = load i32, i32* %17, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  store i32 %230, i32* %234, align 4
  br label %235

235:                                              ; preds = %225
  %236 = load i32, i32* %17, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %17, align 4
  br label %221

238:                                              ; preds = %221
  br label %239

239:                                              ; preds = %243, %238
  %240 = load i32, i32* %17, align 4
  %241 = load i32, i32* %8, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %250

243:                                              ; preds = %239
  %244 = load i32, i32* @myBLANK, align 4
  %245 = load i32*, i32** %19, align 8
  %246 = load i32, i32* %17, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %17, align 4
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  store i32 %244, i32* %249, align 4
  br label %239

250:                                              ; preds = %239
  %251 = load i32, i32* @myZEROS, align 4
  %252 = load i32*, i32** %19, align 8
  %253 = load i32, i32* %8, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  store i32 %251, i32* %255, align 4
  br label %256

256:                                              ; preds = %250
  %257 = load i32, i32* %16, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %16, align 4
  br label %204

259:                                              ; preds = %204
  %260 = load i32, i32* %15, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %324

262:                                              ; preds = %259
  %263 = load i32, i32* %5, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %324

265:                                              ; preds = %262
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = call i32* @newpad(i32 %268, i32 %271)
  store i32* %272, i32** %20, align 8
  %273 = load i32*, i32** %20, align 8
  %274 = icmp ne i32* %273, null
  br i1 %274, label %275, label %321

275:                                              ; preds = %265
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %277 = icmp ne %struct.TYPE_14__* %276, null
  %278 = zext i1 %277 to i32
  %279 = call i32 @assert(i32 %278)
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 3
  %282 = load i32*, i32** %281, align 8
  %283 = icmp ne i32* %282, null
  br i1 %283, label %284, label %289

284:                                              ; preds = %275
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 3
  %287 = load i32*, i32** %286, align 8
  %288 = call i32 @delwin(i32* %287)
  br label %289

289:                                              ; preds = %284, %275
  %290 = load i32*, i32** %20, align 8
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 3
  store i32* %290, i32** %292, align 8
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 3
  %296 = load i32*, i32** %295, align 8
  %297 = call i32 @Set_Field_Window_Attributes(%struct.TYPE_15__* %293, i32* %296)
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 3
  %300 = load i32*, i32** %299, align 8
  %301 = call i32 @werase(i32* %300)
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 3
  %305 = load i32*, i32** %304, align 8
  %306 = call i32 @Buffer_To_Window(%struct.TYPE_15__* %302, i32* %305)
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 3
  %309 = load i32*, i32** %308, align 8
  %310 = call i32 @untouchwin(i32* %309)
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 3
  %313 = load i32*, i32** %312, align 8
  %314 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @wmove(i32* %313, i32 %316, i32 %319)
  br label %323

321:                                              ; preds = %265
  %322 = load i32, i32* @FALSE, align 4
  store i32 %322, i32* %5, align 4
  br label %323

323:                                              ; preds = %321, %289
  br label %324

324:                                              ; preds = %323, %262, %259
  %325 = load i32, i32* %5, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %365

327:                                              ; preds = %324
  %328 = load i32*, i32** %11, align 8
  %329 = call i32 @free(i32* %328)
  %330 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %331 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 8
  %333 = load %struct.TYPE_15__*, %struct.TYPE_15__** %332, align 8
  %334 = icmp ne %struct.TYPE_15__* %330, %333
  br i1 %334, label %335, label %364

335:                                              ; preds = %327
  %336 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %336, i32 0, i32 8
  %338 = load %struct.TYPE_15__*, %struct.TYPE_15__** %337, align 8
  store %struct.TYPE_15__* %338, %struct.TYPE_15__** %21, align 8
  br label %339

339:                                              ; preds = %359, %335
  %340 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %342 = icmp ne %struct.TYPE_15__* %340, %341
  br i1 %342, label %343, label %363

343:                                              ; preds = %339
  %344 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %344, i32 0, i32 7
  %346 = load i32*, i32** %345, align 8
  %347 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %347, i32 0, i32 7
  store i32* %346, i32** %348, align 8
  %349 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i32 0, i32 1
  store i32 %351, i32* %353, align 4
  %354 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %358 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %357, i32 0, i32 0
  store i32 %356, i32* %358, align 8
  br label %359

359:                                              ; preds = %343
  %360 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %361 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %360, i32 0, i32 8
  %362 = load %struct.TYPE_15__*, %struct.TYPE_15__** %361, align 8
  store %struct.TYPE_15__* %362, %struct.TYPE_15__** %21, align 8
  br label %339

363:                                              ; preds = %339
  br label %364

364:                                              ; preds = %363, %327
  br label %403

365:                                              ; preds = %324
  %366 = load i32, i32* %9, align 4
  %367 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i32 0, i32 0
  store i32 %366, i32* %368, align 8
  %369 = load i32, i32* %10, align 4
  %370 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %370, i32 0, i32 1
  store i32 %369, i32* %371, align 4
  %372 = load i32*, i32** %11, align 8
  %373 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %374 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %373, i32 0, i32 7
  store i32* %372, i32** %374, align 8
  %375 = load i32, i32* %6, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %385

377:                                              ; preds = %365
  %378 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 4
  %384 = icmp ne i32 %380, %383
  br i1 %384, label %396, label %385

385:                                              ; preds = %377, %365
  %386 = load i32, i32* %6, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %400, label %388

388:                                              ; preds = %385
  %389 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %390 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %392, i32 0, i32 3
  %394 = load i32, i32* %393, align 4
  %395 = icmp ne i32 %391, %394
  br i1 %395, label %396, label %400

396:                                              ; preds = %388, %377
  %397 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %398 = load i32, i32* @_MAY_GROW, align 4
  %399 = call i32 @SetStatus(%struct.TYPE_15__* %397, i32 %398)
  br label %400

400:                                              ; preds = %396, %388, %385
  %401 = load i32*, i32** %12, align 8
  %402 = call i32 @free(i32* %401)
  br label %403

403:                                              ; preds = %400, %364
  br label %404

404:                                              ; preds = %403, %193
  br label %405

405:                                              ; preds = %404, %25, %2
  %406 = load i32, i32* %5, align 4
  ret i32 %406
}

declare dso_local i64 @Growable(%struct.TYPE_15__*) #1

declare dso_local i32 @Single_Line_Field(%struct.TYPE_15__*) #1

declare dso_local i32 @Buffer_Length(%struct.TYPE_15__*) #1

declare dso_local i32 @Synchronize_Buffer(%struct.TYPE_14__*) #1

declare dso_local i32 @Minimum(i32, i32) #1

declare dso_local i32 @ClrStatus(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @Total_Buffer_Size(%struct.TYPE_15__*) #1

declare dso_local i32 @SetStatus(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @T(i32) #1

declare dso_local i32 @T_CREATE(i8*) #1

declare dso_local i32* @Address_Of_Nth_Buffer(%struct.TYPE_15__*, i32) #1

declare dso_local i32* @newpad(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @delwin(i32*) #1

declare dso_local i32 @Set_Field_Window_Attributes(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @werase(i32*) #1

declare dso_local i32 @Buffer_To_Window(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @untouchwin(i32*) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
