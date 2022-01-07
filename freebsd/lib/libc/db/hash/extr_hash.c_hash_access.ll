; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash.c_hash_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash.c_hash_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32* }
%struct.TYPE_26__ = type { i32, i64 }

@ERROR = common dso_local global i32 0, align 4
@BUF_PIN = common dso_local global i32 0, align 4
@REAL_KEY = common dso_local global i32 0, align 4
@OVFLPAGE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@ABNORMAL = common dso_local global i32 0, align 4
@hash_accesses = common dso_local global i32 0, align 4
@hash_collisions = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, i32, %struct.TYPE_25__*, %struct.TYPE_25__*)* @hash_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_access(%struct.TYPE_24__* %0, i32 %1, %struct.TYPE_25__* %2, %struct.TYPE_25__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %8, align 8
  store %struct.TYPE_25__* %3, %struct.TYPE_25__** %9, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %16, align 4
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %17, align 4
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = bitcast i32* %28 to i8*
  store i8* %29, i8** %18, align 8
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %32 = load i8*, i8** %18, align 8
  %33 = load i32, i32* %17, align 4
  %34 = call i32 @__call_hash(%struct.TYPE_24__* %31, i8* %32, i32 %33)
  %35 = call %struct.TYPE_26__* @__get_buf(%struct.TYPE_24__* %30, i32 %34, %struct.TYPE_26__* null, i32 0)
  store %struct.TYPE_26__* %35, %struct.TYPE_26__** %10, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %37 = icmp ne %struct.TYPE_26__* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %4
  %39 = load i32, i32* @ERROR, align 4
  store i32 %39, i32* %5, align 4
  br label %326

40:                                               ; preds = %4
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  store %struct.TYPE_26__* %41, %struct.TYPE_26__** %12, align 8
  %42 = load i32, i32* @BUF_PIN, align 4
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %13, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %13, align 8
  %53 = load i32, i32* %51, align 4
  store i32 %53, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %54

54:                                               ; preds = %187, %40
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %188

58:                                               ; preds = %54
  %59 = load i32*, i32** %13, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @REAL_KEY, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %92

64:                                               ; preds = %58
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32*, i32** %13, align 8
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %66, %68
  %70 = icmp eq i32 %65, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %64
  %72 = load i8*, i8** %18, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %75, %78
  %80 = load i32, i32* %17, align 4
  %81 = call i64 @memcmp(i8* %72, i64 %79, i32 %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %222

84:                                               ; preds = %71, %64
  %85 = load i32*, i32** %13, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %16, align 4
  %88 = load i32*, i32** %13, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  store i32* %89, i32** %13, align 8
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, 2
  store i32 %91, i32* %15, align 4
  br label %187

92:                                               ; preds = %58
  %93 = load i32*, i32** %13, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @OVFLPAGE, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %125

98:                                               ; preds = %92
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %103 = call %struct.TYPE_26__* @__get_buf(%struct.TYPE_24__* %99, i32 %101, %struct.TYPE_26__* %102, i32 0)
  store %struct.TYPE_26__* %103, %struct.TYPE_26__** %10, align 8
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %105 = icmp ne %struct.TYPE_26__* %104, null
  br i1 %105, label %114, label %106

106:                                              ; preds = %98
  %107 = load i32, i32* @BUF_PIN, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load i32, i32* @ERROR, align 4
  store i32 %113, i32* %5, align 4
  br label %326

114:                                              ; preds = %98
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i32*
  store i32* %118, i32** %13, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %13, align 8
  %121 = load i32, i32* %119, align 4
  store i32 %121, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %16, align 4
  br label %186

125:                                              ; preds = %92
  %126 = load i32*, i32** %13, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @REAL_KEY, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %185

131:                                              ; preds = %125
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %134 = load i32, i32* %15, align 4
  %135 = load i8*, i8** %18, align 8
  %136 = load i32, i32* %17, align 4
  %137 = call i32 @__find_bigpair(%struct.TYPE_24__* %132, %struct.TYPE_26__* %133, i32 %134, i8* %135, i32 %136)
  store i32 %137, i32* %15, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  br label %222

140:                                              ; preds = %131
  %141 = load i32, i32* %15, align 4
  %142 = icmp eq i32 %141, -2
  br i1 %142, label %143, label %176

143:                                              ; preds = %140
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  store %struct.TYPE_26__* %144, %struct.TYPE_26__** %11, align 8
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %146 = call i32 @__find_last_page(%struct.TYPE_24__* %145, %struct.TYPE_26__** %11)
  store i32 %146, i32* %19, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %143
  store i32 0, i32* %15, align 4
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %149, %struct.TYPE_26__** %10, align 8
  br label %188

150:                                              ; preds = %143
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %152 = load i32, i32* %19, align 4
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %154 = call %struct.TYPE_26__* @__get_buf(%struct.TYPE_24__* %151, i32 %152, %struct.TYPE_26__* %153, i32 0)
  store %struct.TYPE_26__* %154, %struct.TYPE_26__** %10, align 8
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %156 = icmp ne %struct.TYPE_26__* %155, null
  br i1 %156, label %165, label %157

157:                                              ; preds = %150
  %158 = load i32, i32* @BUF_PIN, align 4
  %159 = xor i32 %158, -1
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load i32, i32* @ERROR, align 4
  store i32 %164, i32* %5, align 4
  br label %326

165:                                              ; preds = %150
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to i32*
  store i32* %169, i32** %13, align 8
  %170 = load i32*, i32** %13, align 8
  %171 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %171, i32** %13, align 8
  %172 = load i32, i32* %170, align 4
  store i32 %172, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %16, align 4
  br label %184

176:                                              ; preds = %140
  %177 = load i32, i32* @BUF_PIN, align 4
  %178 = xor i32 %177, -1
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = and i32 %181, %178
  store i32 %182, i32* %180, align 8
  %183 = load i32, i32* @ERROR, align 4
  store i32 %183, i32* %5, align 4
  br label %326

184:                                              ; preds = %165
  br label %185

185:                                              ; preds = %184, %125
  br label %186

186:                                              ; preds = %185, %114
  br label %187

187:                                              ; preds = %186, %84
  br label %54

188:                                              ; preds = %148, %54
  %189 = load i32, i32* %7, align 4
  switch i32 %189, label %214 [
    i32 129, label %190
    i32 128, label %190
    i32 130, label %213
    i32 131, label %213
  ]

190:                                              ; preds = %188, %188
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %195 = call i32 @__addel(%struct.TYPE_24__* %191, %struct.TYPE_26__* %192, %struct.TYPE_25__* %193, %struct.TYPE_25__* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %190
  %198 = load i32, i32* @BUF_PIN, align 4
  %199 = xor i32 %198, -1
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = and i32 %202, %199
  store i32 %203, i32* %201, align 8
  %204 = load i32, i32* @ERROR, align 4
  store i32 %204, i32* %5, align 4
  br label %326

205:                                              ; preds = %190
  %206 = load i32, i32* @BUF_PIN, align 4
  %207 = xor i32 %206, -1
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = and i32 %210, %207
  store i32 %211, i32* %209, align 8
  %212 = load i32, i32* @SUCCESS, align 4
  store i32 %212, i32* %5, align 4
  br label %326

213:                                              ; preds = %188, %188
  br label %214

214:                                              ; preds = %188, %213
  %215 = load i32, i32* @BUF_PIN, align 4
  %216 = xor i32 %215, -1
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = and i32 %219, %216
  store i32 %220, i32* %218, align 8
  %221 = load i32, i32* @ABNORMAL, align 4
  store i32 %221, i32* %5, align 4
  br label %326

222:                                              ; preds = %139, %83
  %223 = load i32, i32* %7, align 4
  switch i32 %223, label %316 [
    i32 128, label %224
    i32 130, label %232
    i32 129, label %285
    i32 131, label %307
  ]

224:                                              ; preds = %222
  %225 = load i32, i32* @BUF_PIN, align 4
  %226 = xor i32 %225, -1
  %227 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = and i32 %229, %226
  store i32 %230, i32* %228, align 8
  %231 = load i32, i32* @ABNORMAL, align 4
  store i32 %231, i32* %5, align 4
  br label %326

232:                                              ; preds = %222
  %233 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = inttoptr i64 %235 to i32*
  store i32* %236, i32** %13, align 8
  %237 = load i32*, i32** %13, align 8
  %238 = load i32, i32* %15, align 4
  %239 = add nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @REAL_KEY, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %255

245:                                              ; preds = %232
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %247 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %248 = load i32, i32* %15, align 4
  %249 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %250 = call i32 @__big_return(%struct.TYPE_24__* %246, %struct.TYPE_26__* %247, i32 %248, %struct.TYPE_25__* %249, i32 0)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %245
  %253 = load i32, i32* @ERROR, align 4
  store i32 %253, i32* %5, align 4
  br label %326

254:                                              ; preds = %245
  br label %284

255:                                              ; preds = %232
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %257 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = inttoptr i64 %258 to i32*
  %260 = load i32*, i32** %13, align 8
  %261 = load i32, i32* %15, align 4
  %262 = add nsw i32 %261, 1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %260, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %259, i64 %266
  %268 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %268, i32 0, i32 1
  store i32* %267, i32** %269, align 8
  %270 = load i32*, i32** %13, align 8
  %271 = load i32, i32* %15, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load i32*, i32** %13, align 8
  %276 = load i32, i32* %15, align 4
  %277 = add nsw i32 %276, 1
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %275, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = sub nsw i32 %274, %280
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %283 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %282, i32 0, i32 0
  store i32 %281, i32* %283, align 8
  br label %284

284:                                              ; preds = %255, %254
  br label %318

285:                                              ; preds = %222
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %287 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %288 = load i32, i32* %15, align 4
  %289 = call i32 @__delpair(%struct.TYPE_24__* %286, %struct.TYPE_26__* %287, i32 %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %298, label %291

291:                                              ; preds = %285
  %292 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %293 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %294 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %295 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %296 = call i32 @__addel(%struct.TYPE_24__* %292, %struct.TYPE_26__* %293, %struct.TYPE_25__* %294, %struct.TYPE_25__* %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %306

298:                                              ; preds = %291, %285
  %299 = load i32, i32* @BUF_PIN, align 4
  %300 = xor i32 %299, -1
  %301 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %302 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = and i32 %303, %300
  store i32 %304, i32* %302, align 8
  %305 = load i32, i32* @ERROR, align 4
  store i32 %305, i32* %5, align 4
  br label %326

306:                                              ; preds = %291
  br label %318

307:                                              ; preds = %222
  %308 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %310 = load i32, i32* %15, align 4
  %311 = call i32 @__delpair(%struct.TYPE_24__* %308, %struct.TYPE_26__* %309, i32 %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %307
  %314 = load i32, i32* @ERROR, align 4
  store i32 %314, i32* %5, align 4
  br label %326

315:                                              ; preds = %307
  br label %318

316:                                              ; preds = %222
  %317 = call i32 (...) @abort() #3
  unreachable

318:                                              ; preds = %315, %306, %284
  %319 = load i32, i32* @BUF_PIN, align 4
  %320 = xor i32 %319, -1
  %321 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %322 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = and i32 %323, %320
  store i32 %324, i32* %322, align 8
  %325 = load i32, i32* @SUCCESS, align 4
  store i32 %325, i32* %5, align 4
  br label %326

326:                                              ; preds = %318, %313, %298, %252, %224, %214, %205, %197, %176, %157, %106, %38
  %327 = load i32, i32* %5, align 4
  ret i32 %327
}

declare dso_local %struct.TYPE_26__* @__get_buf(%struct.TYPE_24__*, i32, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @__call_hash(%struct.TYPE_24__*, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i64, i32) #1

declare dso_local i32 @__find_bigpair(%struct.TYPE_24__*, %struct.TYPE_26__*, i32, i8*, i32) #1

declare dso_local i32 @__find_last_page(%struct.TYPE_24__*, %struct.TYPE_26__**) #1

declare dso_local i32 @__addel(%struct.TYPE_24__*, %struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @__big_return(%struct.TYPE_24__*, %struct.TYPE_26__*, i32, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @__delpair(%struct.TYPE_24__*, %struct.TYPE_26__*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
