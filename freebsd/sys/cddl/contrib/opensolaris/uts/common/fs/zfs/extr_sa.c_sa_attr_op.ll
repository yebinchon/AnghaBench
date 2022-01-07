; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_sa.c_sa_attr_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_sa.c_sa_attr_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_14__*, i32, %struct.TYPE_14__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i64, i64, i64, i32*, i32, i32* }

@SA_BONUS = common dso_local global i32 0, align 4
@SA_SPILL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ECKSUM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SA_REPLACE = common dso_local global i32 0, align 4
@SA_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sa_attr_op(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %377, %5
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %380

29:                                               ; preds = %25
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ule i64 %35, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 5
  store i32* null, i32** %50, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = icmp ne %struct.TYPE_14__* %53, null
  br i1 %54, label %55, label %109

55:                                               ; preds = %29
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %60, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @TOC_ATTR_PRESENT(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %109

71:                                               ; preds = %55
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %77 = load i32, i32* @SA_BONUS, align 4
  %78 = call i32 @SA_GET_HDR(%struct.TYPE_17__* %76, i32 %77)
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i64 %87
  %89 = load i32, i32* @SA_BONUS, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %91 = call i32 @SA_ATTR_INFO(%struct.TYPE_16__* %72, %struct.TYPE_14__* %75, i32 %78, i64 %84, %struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %88, i32 %89, %struct.TYPE_17__* %90)
  %92 = load i32*, i32** %11, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %108

94:                                               ; preds = %71
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* @SA_BONUS, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %94
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = call i32 @dmu_buf_will_dirty(i32 %102, i32* %103)
  %105 = load i32, i32* @SA_BONUS, align 4
  %106 = load i32, i32* %15, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %15, align 4
  br label %108

108:                                              ; preds = %99, %94, %71
  br label %109

109:                                              ; preds = %108, %55, %29
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %190

117:                                              ; preds = %109
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %119 = call i32 @sa_get_spill(%struct.TYPE_17__* %118)
  store i32 %119, i32* %14, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %190

121:                                              ; preds = %117
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i32, i32* %126, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @TOC_ATTR_PRESENT(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %189

137:                                              ; preds = %121
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %143 = load i32, i32* @SA_SPILL, align 4
  %144 = call i32 @SA_GET_HDR(%struct.TYPE_17__* %142, i32 %143)
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i64 %153
  %155 = load i32, i32* @SA_SPILL, align 4
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %157 = call i32 @SA_ATTR_INFO(%struct.TYPE_16__* %138, %struct.TYPE_14__* %141, i32 %144, i64 %150, %struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %154, i32 %155, %struct.TYPE_17__* %156)
  %158 = load i32*, i32** %11, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %188

160:                                              ; preds = %137
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* @SA_SPILL, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %188, label %165

165:                                              ; preds = %160
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %171, %177
  br i1 %178, label %179, label %188

179:                                              ; preds = %165
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32*, i32** %11, align 8
  %184 = call i32 @dmu_buf_will_dirty(i32 %182, i32* %183)
  %185 = load i32, i32* @SA_SPILL, align 4
  %186 = load i32, i32* %15, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %15, align 4
  br label %188

188:                                              ; preds = %179, %165, %160, %137
  br label %189

189:                                              ; preds = %188, %121
  br label %190

190:                                              ; preds = %189, %117, %109
  %191 = load i32, i32* %14, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %207

193:                                              ; preds = %190
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* @ENOENT, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %207

197:                                              ; preds = %193
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* @ECKSUM, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = load i32, i32* @EIO, align 4
  br label %205

203:                                              ; preds = %197
  %204 = load i32, i32* %14, align 4
  br label %205

205:                                              ; preds = %203, %201
  %206 = phi i32 [ %202, %201 ], [ %204, %203 ]
  store i32 %206, i32* %6, align 4
  br label %382

207:                                              ; preds = %193, %190
  %208 = load i32, i32* %10, align 4
  switch i32 %208, label %376 [
    i32 129, label %209
    i32 128, label %255
  ]

209:                                              ; preds = %207
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %211 = load i32, i32* %13, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 5
  %215 = load i32*, i32** %214, align 8
  %216 = icmp eq i32* %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %209
  %218 = load i32, i32* @ENOENT, align 4
  %219 = call i32 @SET_ERROR(i32 %218)
  store i32 %219, i32* %6, align 4
  br label %382

220:                                              ; preds = %209
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %222 = load i32, i32* %13, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 3
  %226 = load i32*, i32** %225, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %254

228:                                              ; preds = %220
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %230 = load i32, i32* %13, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %236 = load i32, i32* %13, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 5
  %240 = load i32*, i32** %239, align 8
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %242 = load i32, i32* %13, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 3
  %246 = load i32*, i32** %245, align 8
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %248 = load i32, i32* %13, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = call i32 @SA_COPY_DATA(i32 %234, i32* %240, i32* %246, i64 %252)
  br label %254

254:                                              ; preds = %228, %220
  br label %377

255:                                              ; preds = %207
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %257 = load i32, i32* %13, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 5
  %261 = load i32*, i32** %260, align 8
  %262 = icmp ne i32* %261, null
  br i1 %262, label %263, label %303

263:                                              ; preds = %255
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %265 = load i32, i32* %13, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %271 = load i32, i32* %13, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 2
  %275 = load i64, i64* %274, align 8
  %276 = icmp eq i64 %269, %275
  br i1 %276, label %277, label %303

277:                                              ; preds = %263
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %279 = load i32, i32* %13, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %285 = load i32, i32* %13, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 3
  %289 = load i32*, i32** %288, align 8
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %291 = load i32, i32* %13, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i32 0, i32 5
  %295 = load i32*, i32** %294, align 8
  %296 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %297 = load i32, i32* %13, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %299, i32 0, i32 2
  %301 = load i64, i64* %300, align 8
  %302 = call i32 @SA_COPY_DATA(i32 %283, i32* %289, i32* %295, i64 %301)
  br label %377

303:                                              ; preds = %263, %255
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %305 = load i32, i32* %13, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %307, i32 0, i32 5
  %309 = load i32*, i32** %308, align 8
  %310 = icmp ne i32* %309, null
  br i1 %310, label %311, label %340

311:                                              ; preds = %303
  %312 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %313 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %314 = load i32, i32* %13, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = load i32, i32* @SA_REPLACE, align 4
  %320 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %321 = load i32, i32* %13, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %327 = load i32, i32* %13, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %329, i32 0, i32 3
  %331 = load i32*, i32** %330, align 8
  %332 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %333 = load i32, i32* %13, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %332, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %335, i32 0, i32 2
  %337 = load i64, i64* %336, align 8
  %338 = load i32*, i32** %11, align 8
  %339 = call i32 @sa_modify_attrs(%struct.TYPE_17__* %312, i64 %318, i32 %319, i32 %325, i32* %331, i64 %337, i32* %338)
  store i32 %339, i32* %14, align 4
  br label %369

340:                                              ; preds = %303
  %341 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %342 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %343 = load i32, i32* %13, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = load i32, i32* @SA_ADD, align 4
  %349 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %350 = load i32, i32* %13, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %349, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %356 = load i32, i32* %13, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %355, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %358, i32 0, i32 3
  %360 = load i32*, i32** %359, align 8
  %361 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %362 = load i32, i32* %13, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %361, i64 %363
  %365 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %364, i32 0, i32 2
  %366 = load i64, i64* %365, align 8
  %367 = load i32*, i32** %11, align 8
  %368 = call i32 @sa_modify_attrs(%struct.TYPE_17__* %341, i64 %347, i32 %348, i32 %354, i32* %360, i64 %366, i32* %367)
  store i32 %368, i32* %14, align 4
  br label %369

369:                                              ; preds = %340, %311
  br label %370

370:                                              ; preds = %369
  %371 = load i32, i32* %14, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %375

373:                                              ; preds = %370
  %374 = load i32, i32* %14, align 4
  store i32 %374, i32* %6, align 4
  br label %382

375:                                              ; preds = %370
  br label %376

376:                                              ; preds = %207, %375
  br label %377

377:                                              ; preds = %376, %277, %254
  %378 = load i32, i32* %13, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %13, align 4
  br label %25

380:                                              ; preds = %25
  %381 = load i32, i32* %14, align 4
  store i32 %381, i32* %6, align 4
  br label %382

382:                                              ; preds = %380, %373, %217, %205
  %383 = load i32, i32* %6, align 4
  ret i32 %383
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @TOC_ATTR_PRESENT(i32) #1

declare dso_local i32 @SA_ATTR_INFO(%struct.TYPE_16__*, %struct.TYPE_14__*, i32, i64, %struct.TYPE_18__* byval(%struct.TYPE_18__) align 8, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @SA_GET_HDR(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @dmu_buf_will_dirty(i32, i32*) #1

declare dso_local i32 @sa_get_spill(%struct.TYPE_17__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @SA_COPY_DATA(i32, i32*, i32*, i64) #1

declare dso_local i32 @sa_modify_attrs(%struct.TYPE_17__*, i64, i32, i32, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
