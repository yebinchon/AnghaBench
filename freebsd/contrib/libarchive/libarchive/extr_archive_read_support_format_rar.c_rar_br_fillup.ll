; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_rar_br_fillup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_rar_br_fillup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.rar_br = type { i32, i32, i32, i32* }
%struct.rar = type { i64, i64 }

@CACHE_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.rar_br*)* @rar_br_fillup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rar_br_fillup(%struct.archive_read* %0, %struct.rar_br* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.rar_br*, align 8
  %6 = alloca %struct.rar*, align 8
  %7 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.rar_br* %1, %struct.rar_br** %5, align 8
  %8 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %9 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.rar*
  store %struct.rar* %13, %struct.rar** %6, align 8
  %14 = load i32, i32* @CACHE_BITS, align 4
  %15 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %16 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %14, %17
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %300, %2
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 3
  switch i32 %21, label %261 [
    i32 8, label %22
    i32 7, label %105
    i32 6, label %186
    i32 0, label %260
  ]

22:                                               ; preds = %19
  %23 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %24 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 8
  br i1 %26, label %27, label %104

27:                                               ; preds = %22
  %28 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %29 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 56
  %34 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %35 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 48
  %40 = or i32 %33, %39
  %41 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %42 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 40
  %47 = or i32 %40, %46
  %48 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %49 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 32
  %54 = or i32 %47, %53
  %55 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %56 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 24
  %61 = or i32 %54, %60
  %62 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %63 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 5
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 16
  %68 = or i32 %61, %67
  %69 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %70 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 6
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 8
  %75 = or i32 %68, %74
  %76 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %77 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 7
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %75, %80
  %82 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %83 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %85 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 8
  store i32* %87, i32** %85, align 8
  %88 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %89 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 8
  store i32 %91, i32* %89, align 4
  %92 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %93 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 64
  store i32 %95, i32* %93, align 8
  %96 = load %struct.rar*, %struct.rar** %6, align 8
  %97 = getelementptr inbounds %struct.rar, %struct.rar* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 8
  store i64 %99, i64* %97, align 8
  %100 = load %struct.rar*, %struct.rar** %6, align 8
  %101 = getelementptr inbounds %struct.rar, %struct.rar* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %102, 8
  store i64 %103, i64* %101, align 8
  store i32 1, i32* %3, align 4
  br label %331

104:                                              ; preds = %22
  br label %262

105:                                              ; preds = %19
  %106 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %107 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp sge i32 %108, 7
  br i1 %109, label %110, label %185

110:                                              ; preds = %105
  %111 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %112 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = shl i32 %113, 56
  %115 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %116 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 48
  %121 = or i32 %114, %120
  %122 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %123 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 40
  %128 = or i32 %121, %127
  %129 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %130 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32, i32* %132, align 4
  %134 = shl i32 %133, 32
  %135 = or i32 %128, %134
  %136 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %137 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 3
  %140 = load i32, i32* %139, align 4
  %141 = shl i32 %140, 24
  %142 = or i32 %135, %141
  %143 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %144 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 4
  %147 = load i32, i32* %146, align 4
  %148 = shl i32 %147, 16
  %149 = or i32 %142, %148
  %150 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %151 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 5
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 %154, 8
  %156 = or i32 %149, %155
  %157 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %158 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 6
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %156, %161
  %163 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %164 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %166 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 7
  store i32* %168, i32** %166, align 8
  %169 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %170 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 %171, 7
  store i32 %172, i32* %170, align 4
  %173 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %174 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 56
  store i32 %176, i32* %174, align 8
  %177 = load %struct.rar*, %struct.rar** %6, align 8
  %178 = getelementptr inbounds %struct.rar, %struct.rar* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, 7
  store i64 %180, i64* %178, align 8
  %181 = load %struct.rar*, %struct.rar** %6, align 8
  %182 = getelementptr inbounds %struct.rar, %struct.rar* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = sub nsw i64 %183, 7
  store i64 %184, i64* %182, align 8
  store i32 1, i32* %3, align 4
  br label %331

185:                                              ; preds = %105
  br label %262

186:                                              ; preds = %19
  %187 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %188 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp sge i32 %189, 6
  br i1 %190, label %191, label %259

191:                                              ; preds = %186
  %192 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %193 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = shl i32 %194, 48
  %196 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %197 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = shl i32 %200, 40
  %202 = or i32 %195, %201
  %203 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %204 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %203, i32 0, i32 3
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = shl i32 %207, 32
  %209 = or i32 %202, %208
  %210 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %211 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %210, i32 0, i32 3
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 2
  %214 = load i32, i32* %213, align 4
  %215 = shl i32 %214, 24
  %216 = or i32 %209, %215
  %217 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %218 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %217, i32 0, i32 3
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 3
  %221 = load i32, i32* %220, align 4
  %222 = shl i32 %221, 16
  %223 = or i32 %216, %222
  %224 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %225 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %224, i32 0, i32 3
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 4
  %228 = load i32, i32* %227, align 4
  %229 = shl i32 %228, 8
  %230 = or i32 %223, %229
  %231 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %232 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %231, i32 0, i32 3
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 5
  %235 = load i32, i32* %234, align 4
  %236 = or i32 %230, %235
  %237 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %238 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %237, i32 0, i32 2
  store i32 %236, i32* %238, align 8
  %239 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %240 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %239, i32 0, i32 3
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 6
  store i32* %242, i32** %240, align 8
  %243 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %244 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = sub nsw i32 %245, 6
  store i32 %246, i32* %244, align 4
  %247 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %248 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = add nsw i32 %249, 48
  store i32 %250, i32* %248, align 8
  %251 = load %struct.rar*, %struct.rar** %6, align 8
  %252 = getelementptr inbounds %struct.rar, %struct.rar* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = add nsw i64 %253, 6
  store i64 %254, i64* %252, align 8
  %255 = load %struct.rar*, %struct.rar** %6, align 8
  %256 = getelementptr inbounds %struct.rar, %struct.rar* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = sub nsw i64 %257, 6
  store i64 %258, i64* %256, align 8
  store i32 1, i32* %3, align 4
  br label %331

259:                                              ; preds = %186
  br label %262

260:                                              ; preds = %19
  store i32 1, i32* %3, align 4
  br label %331

261:                                              ; preds = %19
  br label %262

262:                                              ; preds = %261, %259, %185, %104
  %263 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %264 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = icmp sle i32 %265, 0
  br i1 %266, label %267, label %300

267:                                              ; preds = %262
  %268 = load %struct.rar*, %struct.rar** %6, align 8
  %269 = getelementptr inbounds %struct.rar, %struct.rar* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = icmp sgt i64 %270, 0
  br i1 %271, label %272, label %280

272:                                              ; preds = %267
  %273 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %274 = load %struct.rar*, %struct.rar** %6, align 8
  %275 = getelementptr inbounds %struct.rar, %struct.rar* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = call i32 @__archive_read_consume(%struct.archive_read* %273, i64 %276)
  %278 = load %struct.rar*, %struct.rar** %6, align 8
  %279 = getelementptr inbounds %struct.rar, %struct.rar* %278, i32 0, i32 0
  store i64 0, i64* %279, align 8
  br label %280

280:                                              ; preds = %272, %267
  %281 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %282 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %283 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %282, i32 0, i32 1
  %284 = bitcast i32* %283 to i64*
  %285 = call i32* @rar_read_ahead(%struct.archive_read* %281, i32 1, i64* %284)
  %286 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %287 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %286, i32 0, i32 3
  store i32* %285, i32** %287, align 8
  %288 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %289 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %288, i32 0, i32 3
  %290 = load i32*, i32** %289, align 8
  %291 = icmp eq i32* %290, null
  br i1 %291, label %292, label %293

292:                                              ; preds = %280
  store i32 0, i32* %3, align 4
  br label %331

293:                                              ; preds = %280
  %294 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %295 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %293
  store i32 0, i32* %3, align 4
  br label %331

299:                                              ; preds = %293
  br label %300

300:                                              ; preds = %299, %262
  %301 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %302 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = shl i32 %303, 8
  %305 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %306 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %305, i32 0, i32 3
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i32 1
  store i32* %308, i32** %306, align 8
  %309 = load i32, i32* %307, align 4
  %310 = or i32 %304, %309
  %311 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %312 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %311, i32 0, i32 2
  store i32 %310, i32* %312, align 8
  %313 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %314 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = add nsw i32 %315, -1
  store i32 %316, i32* %314, align 4
  %317 = load %struct.rar_br*, %struct.rar_br** %5, align 8
  %318 = getelementptr inbounds %struct.rar_br, %struct.rar_br* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = add nsw i32 %319, 8
  store i32 %320, i32* %318, align 8
  %321 = load i32, i32* %7, align 4
  %322 = sub nsw i32 %321, 8
  store i32 %322, i32* %7, align 4
  %323 = load %struct.rar*, %struct.rar** %6, align 8
  %324 = getelementptr inbounds %struct.rar, %struct.rar* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = add nsw i64 %325, 1
  store i64 %326, i64* %324, align 8
  %327 = load %struct.rar*, %struct.rar** %6, align 8
  %328 = getelementptr inbounds %struct.rar, %struct.rar* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = add nsw i64 %329, -1
  store i64 %330, i64* %328, align 8
  br label %19

331:                                              ; preds = %298, %292, %260, %191, %110, %27
  %332 = load i32, i32* %3, align 4
  ret i32 %332
}

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i32* @rar_read_ahead(%struct.archive_read*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
