; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/sha/extr_sha512.c_sha512_block_data_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/sha/extr_sha512.c_sha512_block_data_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@SHA_LBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i64)* @sha512_block_data_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha512_block_data_order(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca [16 x i64], align 16
  %20 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to i64*
  store i64* %22, i64** %7, align 8
  br label %23

23:                                               ; preds = %475, %3
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, -1
  store i64 %25, i64* %6, align 8
  %26 = icmp ne i64 %24, 0
  br i1 %26, label %27, label %536

27:                                               ; preds = %23
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 2
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %10, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 3
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %11, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 4
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %12, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 5
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %13, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 6
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %14, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 7
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %15, align 8
  %68 = load i64*, i64** %7, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @PULL64(i64 %70)
  %72 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 0
  store i64 %71, i64* %72, align 16
  store i64 %71, i64* %18, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %13, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %15, align 8
  %81 = call i32 @ROUND_00_15(i32 0, i64 %73, i64 %74, i64 %75, i64 %76, i64 %77, i64 %78, i64 %79, i64 %80)
  %82 = load i64*, i64** %7, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @PULL64(i64 %84)
  %86 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 1
  store i64 %85, i64* %86, align 8
  store i64 %85, i64* %18, align 8
  %87 = load i64, i64* %15, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* %13, align 8
  %94 = load i64, i64* %14, align 8
  %95 = call i32 @ROUND_00_15(i32 1, i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94)
  %96 = load i64*, i64** %7, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 2
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @PULL64(i64 %98)
  %100 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 2
  store i64 %99, i64* %100, align 16
  store i64 %99, i64* %18, align 8
  %101 = load i64, i64* %14, align 8
  %102 = load i64, i64* %15, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* %13, align 8
  %109 = call i32 @ROUND_00_15(i32 2, i64 %101, i64 %102, i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108)
  %110 = load i64*, i64** %7, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 3
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @PULL64(i64 %112)
  %114 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 3
  store i64 %113, i64* %114, align 8
  store i64 %113, i64* %18, align 8
  %115 = load i64, i64* %13, align 8
  %116 = load i64, i64* %14, align 8
  %117 = load i64, i64* %15, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* %10, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load i64, i64* %12, align 8
  %123 = call i32 @ROUND_00_15(i32 3, i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122)
  %124 = load i64*, i64** %7, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 4
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @PULL64(i64 %126)
  %128 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 4
  store i64 %127, i64* %128, align 16
  store i64 %127, i64* %18, align 8
  %129 = load i64, i64* %12, align 8
  %130 = load i64, i64* %13, align 8
  %131 = load i64, i64* %14, align 8
  %132 = load i64, i64* %15, align 8
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* %9, align 8
  %135 = load i64, i64* %10, align 8
  %136 = load i64, i64* %11, align 8
  %137 = call i32 @ROUND_00_15(i32 4, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136)
  %138 = load i64*, i64** %7, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 5
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @PULL64(i64 %140)
  %142 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 5
  store i64 %141, i64* %142, align 8
  store i64 %141, i64* %18, align 8
  %143 = load i64, i64* %11, align 8
  %144 = load i64, i64* %12, align 8
  %145 = load i64, i64* %13, align 8
  %146 = load i64, i64* %14, align 8
  %147 = load i64, i64* %15, align 8
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* %9, align 8
  %150 = load i64, i64* %10, align 8
  %151 = call i32 @ROUND_00_15(i32 5, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150)
  %152 = load i64*, i64** %7, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 6
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @PULL64(i64 %154)
  %156 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 6
  store i64 %155, i64* %156, align 16
  store i64 %155, i64* %18, align 8
  %157 = load i64, i64* %10, align 8
  %158 = load i64, i64* %11, align 8
  %159 = load i64, i64* %12, align 8
  %160 = load i64, i64* %13, align 8
  %161 = load i64, i64* %14, align 8
  %162 = load i64, i64* %15, align 8
  %163 = load i64, i64* %8, align 8
  %164 = load i64, i64* %9, align 8
  %165 = call i32 @ROUND_00_15(i32 6, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164)
  %166 = load i64*, i64** %7, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 7
  %168 = load i64, i64* %167, align 8
  %169 = call i64 @PULL64(i64 %168)
  %170 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 7
  store i64 %169, i64* %170, align 8
  store i64 %169, i64* %18, align 8
  %171 = load i64, i64* %9, align 8
  %172 = load i64, i64* %10, align 8
  %173 = load i64, i64* %11, align 8
  %174 = load i64, i64* %12, align 8
  %175 = load i64, i64* %13, align 8
  %176 = load i64, i64* %14, align 8
  %177 = load i64, i64* %15, align 8
  %178 = load i64, i64* %8, align 8
  %179 = call i32 @ROUND_00_15(i32 7, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178)
  %180 = load i64*, i64** %7, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 8
  %182 = load i64, i64* %181, align 8
  %183 = call i64 @PULL64(i64 %182)
  %184 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 8
  store i64 %183, i64* %184, align 16
  store i64 %183, i64* %18, align 8
  %185 = load i64, i64* %8, align 8
  %186 = load i64, i64* %9, align 8
  %187 = load i64, i64* %10, align 8
  %188 = load i64, i64* %11, align 8
  %189 = load i64, i64* %12, align 8
  %190 = load i64, i64* %13, align 8
  %191 = load i64, i64* %14, align 8
  %192 = load i64, i64* %15, align 8
  %193 = call i32 @ROUND_00_15(i32 8, i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192)
  %194 = load i64*, i64** %7, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 9
  %196 = load i64, i64* %195, align 8
  %197 = call i64 @PULL64(i64 %196)
  %198 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 9
  store i64 %197, i64* %198, align 8
  store i64 %197, i64* %18, align 8
  %199 = load i64, i64* %15, align 8
  %200 = load i64, i64* %8, align 8
  %201 = load i64, i64* %9, align 8
  %202 = load i64, i64* %10, align 8
  %203 = load i64, i64* %11, align 8
  %204 = load i64, i64* %12, align 8
  %205 = load i64, i64* %13, align 8
  %206 = load i64, i64* %14, align 8
  %207 = call i32 @ROUND_00_15(i32 9, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %204, i64 %205, i64 %206)
  %208 = load i64*, i64** %7, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 10
  %210 = load i64, i64* %209, align 8
  %211 = call i64 @PULL64(i64 %210)
  %212 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 10
  store i64 %211, i64* %212, align 16
  store i64 %211, i64* %18, align 8
  %213 = load i64, i64* %14, align 8
  %214 = load i64, i64* %15, align 8
  %215 = load i64, i64* %8, align 8
  %216 = load i64, i64* %9, align 8
  %217 = load i64, i64* %10, align 8
  %218 = load i64, i64* %11, align 8
  %219 = load i64, i64* %12, align 8
  %220 = load i64, i64* %13, align 8
  %221 = call i32 @ROUND_00_15(i32 10, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217, i64 %218, i64 %219, i64 %220)
  %222 = load i64*, i64** %7, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 11
  %224 = load i64, i64* %223, align 8
  %225 = call i64 @PULL64(i64 %224)
  %226 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 11
  store i64 %225, i64* %226, align 8
  store i64 %225, i64* %18, align 8
  %227 = load i64, i64* %13, align 8
  %228 = load i64, i64* %14, align 8
  %229 = load i64, i64* %15, align 8
  %230 = load i64, i64* %8, align 8
  %231 = load i64, i64* %9, align 8
  %232 = load i64, i64* %10, align 8
  %233 = load i64, i64* %11, align 8
  %234 = load i64, i64* %12, align 8
  %235 = call i32 @ROUND_00_15(i32 11, i64 %227, i64 %228, i64 %229, i64 %230, i64 %231, i64 %232, i64 %233, i64 %234)
  %236 = load i64*, i64** %7, align 8
  %237 = getelementptr inbounds i64, i64* %236, i64 12
  %238 = load i64, i64* %237, align 8
  %239 = call i64 @PULL64(i64 %238)
  %240 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 12
  store i64 %239, i64* %240, align 16
  store i64 %239, i64* %18, align 8
  %241 = load i64, i64* %12, align 8
  %242 = load i64, i64* %13, align 8
  %243 = load i64, i64* %14, align 8
  %244 = load i64, i64* %15, align 8
  %245 = load i64, i64* %8, align 8
  %246 = load i64, i64* %9, align 8
  %247 = load i64, i64* %10, align 8
  %248 = load i64, i64* %11, align 8
  %249 = call i32 @ROUND_00_15(i32 12, i64 %241, i64 %242, i64 %243, i64 %244, i64 %245, i64 %246, i64 %247, i64 %248)
  %250 = load i64*, i64** %7, align 8
  %251 = getelementptr inbounds i64, i64* %250, i64 13
  %252 = load i64, i64* %251, align 8
  %253 = call i64 @PULL64(i64 %252)
  %254 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 13
  store i64 %253, i64* %254, align 8
  store i64 %253, i64* %18, align 8
  %255 = load i64, i64* %11, align 8
  %256 = load i64, i64* %12, align 8
  %257 = load i64, i64* %13, align 8
  %258 = load i64, i64* %14, align 8
  %259 = load i64, i64* %15, align 8
  %260 = load i64, i64* %8, align 8
  %261 = load i64, i64* %9, align 8
  %262 = load i64, i64* %10, align 8
  %263 = call i32 @ROUND_00_15(i32 13, i64 %255, i64 %256, i64 %257, i64 %258, i64 %259, i64 %260, i64 %261, i64 %262)
  %264 = load i64*, i64** %7, align 8
  %265 = getelementptr inbounds i64, i64* %264, i64 14
  %266 = load i64, i64* %265, align 8
  %267 = call i64 @PULL64(i64 %266)
  %268 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 14
  store i64 %267, i64* %268, align 16
  store i64 %267, i64* %18, align 8
  %269 = load i64, i64* %10, align 8
  %270 = load i64, i64* %11, align 8
  %271 = load i64, i64* %12, align 8
  %272 = load i64, i64* %13, align 8
  %273 = load i64, i64* %14, align 8
  %274 = load i64, i64* %15, align 8
  %275 = load i64, i64* %8, align 8
  %276 = load i64, i64* %9, align 8
  %277 = call i32 @ROUND_00_15(i32 14, i64 %269, i64 %270, i64 %271, i64 %272, i64 %273, i64 %274, i64 %275, i64 %276)
  %278 = load i64*, i64** %7, align 8
  %279 = getelementptr inbounds i64, i64* %278, i64 15
  %280 = load i64, i64* %279, align 8
  %281 = call i64 @PULL64(i64 %280)
  %282 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 15
  store i64 %281, i64* %282, align 8
  store i64 %281, i64* %18, align 8
  %283 = load i64, i64* %9, align 8
  %284 = load i64, i64* %10, align 8
  %285 = load i64, i64* %11, align 8
  %286 = load i64, i64* %12, align 8
  %287 = load i64, i64* %13, align 8
  %288 = load i64, i64* %14, align 8
  %289 = load i64, i64* %15, align 8
  %290 = load i64, i64* %8, align 8
  %291 = call i32 @ROUND_00_15(i32 15, i64 %283, i64 %284, i64 %285, i64 %286, i64 %287, i64 %288, i64 %289, i64 %290)
  store i32 16, i32* %20, align 4
  br label %292

292:                                              ; preds = %472, %27
  %293 = load i32, i32* %20, align 4
  %294 = icmp slt i32 %293, 80
  br i1 %294, label %295, label %475

295:                                              ; preds = %292
  %296 = load i32, i32* %20, align 4
  %297 = load i64, i64* %8, align 8
  %298 = load i64, i64* %9, align 8
  %299 = load i64, i64* %10, align 8
  %300 = load i64, i64* %11, align 8
  %301 = load i64, i64* %12, align 8
  %302 = load i64, i64* %13, align 8
  %303 = load i64, i64* %14, align 8
  %304 = load i64, i64* %15, align 8
  %305 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 0
  %306 = call i32 @ROUND_16_80(i32 %296, i32 0, i64 %297, i64 %298, i64 %299, i64 %300, i64 %301, i64 %302, i64 %303, i64 %304, i64* %305)
  %307 = load i32, i32* %20, align 4
  %308 = load i64, i64* %15, align 8
  %309 = load i64, i64* %8, align 8
  %310 = load i64, i64* %9, align 8
  %311 = load i64, i64* %10, align 8
  %312 = load i64, i64* %11, align 8
  %313 = load i64, i64* %12, align 8
  %314 = load i64, i64* %13, align 8
  %315 = load i64, i64* %14, align 8
  %316 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 0
  %317 = call i32 @ROUND_16_80(i32 %307, i32 1, i64 %308, i64 %309, i64 %310, i64 %311, i64 %312, i64 %313, i64 %314, i64 %315, i64* %316)
  %318 = load i32, i32* %20, align 4
  %319 = load i64, i64* %14, align 8
  %320 = load i64, i64* %15, align 8
  %321 = load i64, i64* %8, align 8
  %322 = load i64, i64* %9, align 8
  %323 = load i64, i64* %10, align 8
  %324 = load i64, i64* %11, align 8
  %325 = load i64, i64* %12, align 8
  %326 = load i64, i64* %13, align 8
  %327 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 0
  %328 = call i32 @ROUND_16_80(i32 %318, i32 2, i64 %319, i64 %320, i64 %321, i64 %322, i64 %323, i64 %324, i64 %325, i64 %326, i64* %327)
  %329 = load i32, i32* %20, align 4
  %330 = load i64, i64* %13, align 8
  %331 = load i64, i64* %14, align 8
  %332 = load i64, i64* %15, align 8
  %333 = load i64, i64* %8, align 8
  %334 = load i64, i64* %9, align 8
  %335 = load i64, i64* %10, align 8
  %336 = load i64, i64* %11, align 8
  %337 = load i64, i64* %12, align 8
  %338 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 0
  %339 = call i32 @ROUND_16_80(i32 %329, i32 3, i64 %330, i64 %331, i64 %332, i64 %333, i64 %334, i64 %335, i64 %336, i64 %337, i64* %338)
  %340 = load i32, i32* %20, align 4
  %341 = load i64, i64* %12, align 8
  %342 = load i64, i64* %13, align 8
  %343 = load i64, i64* %14, align 8
  %344 = load i64, i64* %15, align 8
  %345 = load i64, i64* %8, align 8
  %346 = load i64, i64* %9, align 8
  %347 = load i64, i64* %10, align 8
  %348 = load i64, i64* %11, align 8
  %349 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 0
  %350 = call i32 @ROUND_16_80(i32 %340, i32 4, i64 %341, i64 %342, i64 %343, i64 %344, i64 %345, i64 %346, i64 %347, i64 %348, i64* %349)
  %351 = load i32, i32* %20, align 4
  %352 = load i64, i64* %11, align 8
  %353 = load i64, i64* %12, align 8
  %354 = load i64, i64* %13, align 8
  %355 = load i64, i64* %14, align 8
  %356 = load i64, i64* %15, align 8
  %357 = load i64, i64* %8, align 8
  %358 = load i64, i64* %9, align 8
  %359 = load i64, i64* %10, align 8
  %360 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 0
  %361 = call i32 @ROUND_16_80(i32 %351, i32 5, i64 %352, i64 %353, i64 %354, i64 %355, i64 %356, i64 %357, i64 %358, i64 %359, i64* %360)
  %362 = load i32, i32* %20, align 4
  %363 = load i64, i64* %10, align 8
  %364 = load i64, i64* %11, align 8
  %365 = load i64, i64* %12, align 8
  %366 = load i64, i64* %13, align 8
  %367 = load i64, i64* %14, align 8
  %368 = load i64, i64* %15, align 8
  %369 = load i64, i64* %8, align 8
  %370 = load i64, i64* %9, align 8
  %371 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 0
  %372 = call i32 @ROUND_16_80(i32 %362, i32 6, i64 %363, i64 %364, i64 %365, i64 %366, i64 %367, i64 %368, i64 %369, i64 %370, i64* %371)
  %373 = load i32, i32* %20, align 4
  %374 = load i64, i64* %9, align 8
  %375 = load i64, i64* %10, align 8
  %376 = load i64, i64* %11, align 8
  %377 = load i64, i64* %12, align 8
  %378 = load i64, i64* %13, align 8
  %379 = load i64, i64* %14, align 8
  %380 = load i64, i64* %15, align 8
  %381 = load i64, i64* %8, align 8
  %382 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 0
  %383 = call i32 @ROUND_16_80(i32 %373, i32 7, i64 %374, i64 %375, i64 %376, i64 %377, i64 %378, i64 %379, i64 %380, i64 %381, i64* %382)
  %384 = load i32, i32* %20, align 4
  %385 = load i64, i64* %8, align 8
  %386 = load i64, i64* %9, align 8
  %387 = load i64, i64* %10, align 8
  %388 = load i64, i64* %11, align 8
  %389 = load i64, i64* %12, align 8
  %390 = load i64, i64* %13, align 8
  %391 = load i64, i64* %14, align 8
  %392 = load i64, i64* %15, align 8
  %393 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 0
  %394 = call i32 @ROUND_16_80(i32 %384, i32 8, i64 %385, i64 %386, i64 %387, i64 %388, i64 %389, i64 %390, i64 %391, i64 %392, i64* %393)
  %395 = load i32, i32* %20, align 4
  %396 = load i64, i64* %15, align 8
  %397 = load i64, i64* %8, align 8
  %398 = load i64, i64* %9, align 8
  %399 = load i64, i64* %10, align 8
  %400 = load i64, i64* %11, align 8
  %401 = load i64, i64* %12, align 8
  %402 = load i64, i64* %13, align 8
  %403 = load i64, i64* %14, align 8
  %404 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 0
  %405 = call i32 @ROUND_16_80(i32 %395, i32 9, i64 %396, i64 %397, i64 %398, i64 %399, i64 %400, i64 %401, i64 %402, i64 %403, i64* %404)
  %406 = load i32, i32* %20, align 4
  %407 = load i64, i64* %14, align 8
  %408 = load i64, i64* %15, align 8
  %409 = load i64, i64* %8, align 8
  %410 = load i64, i64* %9, align 8
  %411 = load i64, i64* %10, align 8
  %412 = load i64, i64* %11, align 8
  %413 = load i64, i64* %12, align 8
  %414 = load i64, i64* %13, align 8
  %415 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 0
  %416 = call i32 @ROUND_16_80(i32 %406, i32 10, i64 %407, i64 %408, i64 %409, i64 %410, i64 %411, i64 %412, i64 %413, i64 %414, i64* %415)
  %417 = load i32, i32* %20, align 4
  %418 = load i64, i64* %13, align 8
  %419 = load i64, i64* %14, align 8
  %420 = load i64, i64* %15, align 8
  %421 = load i64, i64* %8, align 8
  %422 = load i64, i64* %9, align 8
  %423 = load i64, i64* %10, align 8
  %424 = load i64, i64* %11, align 8
  %425 = load i64, i64* %12, align 8
  %426 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 0
  %427 = call i32 @ROUND_16_80(i32 %417, i32 11, i64 %418, i64 %419, i64 %420, i64 %421, i64 %422, i64 %423, i64 %424, i64 %425, i64* %426)
  %428 = load i32, i32* %20, align 4
  %429 = load i64, i64* %12, align 8
  %430 = load i64, i64* %13, align 8
  %431 = load i64, i64* %14, align 8
  %432 = load i64, i64* %15, align 8
  %433 = load i64, i64* %8, align 8
  %434 = load i64, i64* %9, align 8
  %435 = load i64, i64* %10, align 8
  %436 = load i64, i64* %11, align 8
  %437 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 0
  %438 = call i32 @ROUND_16_80(i32 %428, i32 12, i64 %429, i64 %430, i64 %431, i64 %432, i64 %433, i64 %434, i64 %435, i64 %436, i64* %437)
  %439 = load i32, i32* %20, align 4
  %440 = load i64, i64* %11, align 8
  %441 = load i64, i64* %12, align 8
  %442 = load i64, i64* %13, align 8
  %443 = load i64, i64* %14, align 8
  %444 = load i64, i64* %15, align 8
  %445 = load i64, i64* %8, align 8
  %446 = load i64, i64* %9, align 8
  %447 = load i64, i64* %10, align 8
  %448 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 0
  %449 = call i32 @ROUND_16_80(i32 %439, i32 13, i64 %440, i64 %441, i64 %442, i64 %443, i64 %444, i64 %445, i64 %446, i64 %447, i64* %448)
  %450 = load i32, i32* %20, align 4
  %451 = load i64, i64* %10, align 8
  %452 = load i64, i64* %11, align 8
  %453 = load i64, i64* %12, align 8
  %454 = load i64, i64* %13, align 8
  %455 = load i64, i64* %14, align 8
  %456 = load i64, i64* %15, align 8
  %457 = load i64, i64* %8, align 8
  %458 = load i64, i64* %9, align 8
  %459 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 0
  %460 = call i32 @ROUND_16_80(i32 %450, i32 14, i64 %451, i64 %452, i64 %453, i64 %454, i64 %455, i64 %456, i64 %457, i64 %458, i64* %459)
  %461 = load i32, i32* %20, align 4
  %462 = load i64, i64* %9, align 8
  %463 = load i64, i64* %10, align 8
  %464 = load i64, i64* %11, align 8
  %465 = load i64, i64* %12, align 8
  %466 = load i64, i64* %13, align 8
  %467 = load i64, i64* %14, align 8
  %468 = load i64, i64* %15, align 8
  %469 = load i64, i64* %8, align 8
  %470 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 0
  %471 = call i32 @ROUND_16_80(i32 %461, i32 15, i64 %462, i64 %463, i64 %464, i64 %465, i64 %466, i64 %467, i64 %468, i64 %469, i64* %470)
  br label %472

472:                                              ; preds = %295
  %473 = load i32, i32* %20, align 4
  %474 = add nsw i32 %473, 16
  store i32 %474, i32* %20, align 4
  br label %292

475:                                              ; preds = %292
  %476 = load i64, i64* %8, align 8
  %477 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %478 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %477, i32 0, i32 0
  %479 = load i64*, i64** %478, align 8
  %480 = getelementptr inbounds i64, i64* %479, i64 0
  %481 = load i64, i64* %480, align 8
  %482 = add nsw i64 %481, %476
  store i64 %482, i64* %480, align 8
  %483 = load i64, i64* %9, align 8
  %484 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %485 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %484, i32 0, i32 0
  %486 = load i64*, i64** %485, align 8
  %487 = getelementptr inbounds i64, i64* %486, i64 1
  %488 = load i64, i64* %487, align 8
  %489 = add nsw i64 %488, %483
  store i64 %489, i64* %487, align 8
  %490 = load i64, i64* %10, align 8
  %491 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %492 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %491, i32 0, i32 0
  %493 = load i64*, i64** %492, align 8
  %494 = getelementptr inbounds i64, i64* %493, i64 2
  %495 = load i64, i64* %494, align 8
  %496 = add nsw i64 %495, %490
  store i64 %496, i64* %494, align 8
  %497 = load i64, i64* %11, align 8
  %498 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %499 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %498, i32 0, i32 0
  %500 = load i64*, i64** %499, align 8
  %501 = getelementptr inbounds i64, i64* %500, i64 3
  %502 = load i64, i64* %501, align 8
  %503 = add nsw i64 %502, %497
  store i64 %503, i64* %501, align 8
  %504 = load i64, i64* %12, align 8
  %505 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %506 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %505, i32 0, i32 0
  %507 = load i64*, i64** %506, align 8
  %508 = getelementptr inbounds i64, i64* %507, i64 4
  %509 = load i64, i64* %508, align 8
  %510 = add nsw i64 %509, %504
  store i64 %510, i64* %508, align 8
  %511 = load i64, i64* %13, align 8
  %512 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %513 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %512, i32 0, i32 0
  %514 = load i64*, i64** %513, align 8
  %515 = getelementptr inbounds i64, i64* %514, i64 5
  %516 = load i64, i64* %515, align 8
  %517 = add nsw i64 %516, %511
  store i64 %517, i64* %515, align 8
  %518 = load i64, i64* %14, align 8
  %519 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %520 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %519, i32 0, i32 0
  %521 = load i64*, i64** %520, align 8
  %522 = getelementptr inbounds i64, i64* %521, i64 6
  %523 = load i64, i64* %522, align 8
  %524 = add nsw i64 %523, %518
  store i64 %524, i64* %522, align 8
  %525 = load i64, i64* %15, align 8
  %526 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %527 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %526, i32 0, i32 0
  %528 = load i64*, i64** %527, align 8
  %529 = getelementptr inbounds i64, i64* %528, i64 7
  %530 = load i64, i64* %529, align 8
  %531 = add nsw i64 %530, %525
  store i64 %531, i64* %529, align 8
  %532 = load i32, i32* @SHA_LBLOCK, align 4
  %533 = load i64*, i64** %7, align 8
  %534 = sext i32 %532 to i64
  %535 = getelementptr inbounds i64, i64* %533, i64 %534
  store i64* %535, i64** %7, align 8
  br label %23

536:                                              ; preds = %23
  ret void
}

declare dso_local i64 @PULL64(i64) #1

declare dso_local i32 @ROUND_00_15(i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ROUND_16_80(i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
