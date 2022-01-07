; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_mm.c_AddFree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_mm.c_AddFree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_7__* }

@MM_MAX_ALIGNMENT = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i64)* @AddFree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AddFree(%struct.TYPE_6__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %286, %3
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* @MM_MAX_ALIGNMENT, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %289

18:                                               ; preds = %14
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %20, align 8
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %21, i64 %23
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %8, align 8
  %26 = load i32, i32* %12, align 4
  %27 = shl i32 1, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @MAKE_ALIGNED(i64 %29, i64 %30)
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %18
  br label %286

36:                                               ; preds = %18
  br label %37

37:                                               ; preds = %212, %36
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = icmp ne %struct.TYPE_7__* %38, null
  br i1 %39, label %40, label %213

40:                                               ; preds = %37
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %41, %44
  br i1 %45, label %46, label %207

46:                                               ; preds = %40
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %114

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %68, %52
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = icmp ne %struct.TYPE_7__* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %59, %64
  br label %66

66:                                               ; preds = %58, %53
  %67 = phi i1 [ false, %53 ], [ %65, %58 ]
  br i1 %67, label %68, label %81

68:                                               ; preds = %66
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  store %struct.TYPE_7__* %71, %struct.TYPE_7__** %13, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %78, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %80 = call i32 @XX_Free(%struct.TYPE_7__* %79)
  br label %53

81:                                               ; preds = %66
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %13, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %86 = icmp ne %struct.TYPE_7__* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %89 = icmp ne %struct.TYPE_7__* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = load i64, i64* %6, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %91, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90, %81
  %97 = load i64, i64* %6, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  br label %113

100:                                              ; preds = %90, %87
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  store %struct.TYPE_7__* %108, %struct.TYPE_7__** %110, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %112 = call i32 @XX_Free(%struct.TYPE_7__* %111)
  br label %113

113:                                              ; preds = %100, %96
  br label %158

114:                                              ; preds = %46
  %115 = load i64, i64* %6, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp slt i64 %115, %118
  br i1 %119, label %120, label %157

120:                                              ; preds = %114
  %121 = load i64, i64* %6, align 8
  %122 = load i64, i64* %11, align 8
  %123 = sub nsw i64 %121, %122
  %124 = load i64, i64* %10, align 8
  %125 = icmp sge i64 %123, %124
  br i1 %125, label %126, label %157

126:                                              ; preds = %120
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %6, align 8
  %129 = load i64, i64* %11, align 8
  %130 = sub nsw i64 %128, %129
  %131 = call %struct.TYPE_7__* @CreateFreeBlock(i64 %127, i64 %130)
  store %struct.TYPE_7__* %131, %struct.TYPE_7__** %9, align 8
  %132 = icmp eq %struct.TYPE_7__* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = load i32, i32* @MAJOR, align 4
  %135 = load i32, i32* @E_NO_MEMORY, align 4
  %136 = load i32, i32* @NO_MSG, align 4
  %137 = call i32 @RETURN_ERROR(i32 %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %133, %126
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  store %struct.TYPE_7__* %139, %struct.TYPE_7__** %141, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %143 = icmp ne %struct.TYPE_7__* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  store %struct.TYPE_7__* %145, %struct.TYPE_7__** %147, align 8
  br label %156

148:                                              ; preds = %138
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %152, i64 %154
  store %struct.TYPE_7__* %149, %struct.TYPE_7__** %155, align 8
  br label %156

156:                                              ; preds = %148, %144
  br label %213

157:                                              ; preds = %120, %114
  br label %158

158:                                              ; preds = %157, %113
  %159 = load i64, i64* %11, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp slt i64 %159, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %158
  %165 = load i64, i64* %6, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp sge i64 %165, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = load i64, i64* %11, align 8
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  store i64 %171, i64* %173, align 8
  br label %174

174:                                              ; preds = %170, %164, %158
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = sub nsw i64 %177, %180
  %182 = load i64, i64* %10, align 8
  %183 = icmp slt i64 %181, %182
  br i1 %183, label %184, label %206

184:                                              ; preds = %174
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %186 = icmp ne %struct.TYPE_7__* %185, null
  br i1 %186, label %187, label %193

187:                                              ; preds = %184
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 2
  store %struct.TYPE_7__* %190, %struct.TYPE_7__** %192, align 8
  br label %203

193:                                              ; preds = %184
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %195, align 8
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %198, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %199, i64 %201
  store %struct.TYPE_7__* %196, %struct.TYPE_7__** %202, align 8
  br label %203

203:                                              ; preds = %193, %187
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %205 = call i32 @XX_Free(%struct.TYPE_7__* %204)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  br label %206

206:                                              ; preds = %203, %174
  br label %213

207:                                              ; preds = %40
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %208, %struct.TYPE_7__** %7, align 8
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %210, align 8
  store %struct.TYPE_7__* %211, %struct.TYPE_7__** %8, align 8
  br label %212

212:                                              ; preds = %207
  br label %37

213:                                              ; preds = %206, %156, %37
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %215 = icmp ne %struct.TYPE_7__* %214, null
  br i1 %215, label %252, label %216

216:                                              ; preds = %213
  %217 = load i64, i64* %6, align 8
  %218 = load i64, i64* %5, align 8
  %219 = sub nsw i64 %217, %218
  %220 = load i64, i64* %10, align 8
  %221 = sub nsw i64 %220, 1
  %222 = and i64 %219, %221
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %252

224:                                              ; preds = %216
  %225 = load i64, i64* %11, align 8
  %226 = load i64, i64* %6, align 8
  %227 = load i64, i64* %5, align 8
  %228 = sub nsw i64 %226, %227
  %229 = call %struct.TYPE_7__* @CreateFreeBlock(i64 %225, i64 %228)
  store %struct.TYPE_7__* %229, %struct.TYPE_7__** %9, align 8
  %230 = icmp eq %struct.TYPE_7__* %229, null
  br i1 %230, label %231, label %236

231:                                              ; preds = %224
  %232 = load i32, i32* @MAJOR, align 4
  %233 = load i32, i32* @E_NO_MEMORY, align 4
  %234 = load i32, i32* @NO_MSG, align 4
  %235 = call i32 @RETURN_ERROR(i32 %232, i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %231, %224
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %238 = icmp ne %struct.TYPE_7__* %237, null
  br i1 %238, label %239, label %243

239:                                              ; preds = %236
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 2
  store %struct.TYPE_7__* %240, %struct.TYPE_7__** %242, align 8
  br label %251

243:                                              ; preds = %236
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %246, align 8
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %247, i64 %249
  store %struct.TYPE_7__* %244, %struct.TYPE_7__** %250, align 8
  br label %251

251:                                              ; preds = %243, %239
  br label %252

252:                                              ; preds = %251, %216, %213
  %253 = load i64, i64* %10, align 8
  %254 = icmp eq i64 %253, 1
  br i1 %254, label %255, label %285

255:                                              ; preds = %252
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %257 = icmp ne %struct.TYPE_7__* %256, null
  br i1 %257, label %285, label %258

258:                                              ; preds = %255
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %260 = icmp ne %struct.TYPE_7__* %259, null
  br i1 %260, label %261, label %271

261:                                              ; preds = %258
  %262 = load i64, i64* %5, align 8
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = icmp sgt i64 %262, %265
  br i1 %266, label %267, label %271

267:                                              ; preds = %261
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  store i64 %270, i64* %5, align 8
  br label %271

271:                                              ; preds = %267, %261, %258
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %273 = icmp ne %struct.TYPE_7__* %272, null
  br i1 %273, label %274, label %284

274:                                              ; preds = %271
  %275 = load i64, i64* %6, align 8
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = icmp slt i64 %275, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %274
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  store i64 %283, i64* %6, align 8
  br label %284

284:                                              ; preds = %280, %274, %271
  br label %285

285:                                              ; preds = %284, %255, %252
  br label %286

286:                                              ; preds = %285, %35
  %287 = load i32, i32* %12, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %12, align 4
  br label %14

289:                                              ; preds = %14
  %290 = load i32, i32* @E_OK, align 4
  ret i32 %290
}

declare dso_local i64 @MAKE_ALIGNED(i64, i64) #1

declare dso_local i32 @XX_Free(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @CreateFreeBlock(i64, i64) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
