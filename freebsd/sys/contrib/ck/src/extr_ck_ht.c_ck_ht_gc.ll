; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_gc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_ht = type { i32, %struct.TYPE_2__*, i32, i32 (%struct.ck_ht_hash*, i64*, i32, i32)*, %struct.ck_ht_map* }
%struct.TYPE_2__ = type { i64* (i64)*, i32 (i64*, i64, i32)* }
%struct.ck_ht_hash = type { i64 }
%struct.ck_ht_map = type { i64, i64, i64*, i32, i64, i64, %struct.ck_ht_entry* }
%struct.ck_ht_entry = type { i64, i64, i64, i64 }

@CK_HT_KEY_EMPTY = common dso_local global i64 0, align 8
@CK_HT_KEY_TOMBSTONE = common dso_local global i64 0, align 8
@CK_HT_MODE_BYTESTRING = common dso_local global i32 0, align 4
@CK_HT_WORD_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_ht_gc(%struct.ck_ht* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ck_ht*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.ck_ht_map*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ck_ht_entry*, align 8
  %14 = alloca %struct.ck_ht_entry*, align 8
  %15 = alloca %struct.ck_ht_entry, align 8
  %16 = alloca %struct.ck_ht_hash, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.ck_ht* %0, %struct.ck_ht** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* null, i64** %8, align 8
  %19 = load %struct.ck_ht*, %struct.ck_ht** %5, align 8
  %20 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %19, i32 0, i32 4
  %21 = load %struct.ck_ht_map*, %struct.ck_ht_map** %20, align 8
  store %struct.ck_ht_map* %21, %struct.ck_ht_map** %9, align 8
  store i64 0, i64* %12, align 8
  %22 = load %struct.ck_ht_map*, %struct.ck_ht_map** %9, align 8
  %23 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %3
  %27 = load %struct.ck_ht_map*, %struct.ck_ht_map** %9, align 8
  %28 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %27, i32 0, i32 1
  %29 = call i32 @CK_HT_TYPE_STORE(i64* %28, i64 0)
  %30 = load %struct.ck_ht_map*, %struct.ck_ht_map** %9, align 8
  %31 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %26
  %35 = load %struct.ck_ht_map*, %struct.ck_ht_map** %9, align 8
  %36 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = load %struct.ck_ht_map*, %struct.ck_ht_map** %9, align 8
  %39 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = mul i64 8, %41
  %43 = call i32 @memset(i64* %37, i32 0, i64 %42)
  br label %44

44:                                               ; preds = %34, %26
  store i32 1, i32* %4, align 4
  br label %290

45:                                               ; preds = %3
  %46 = load i64, i64* %6, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %45
  store i64 0, i64* %10, align 8
  %49 = load %struct.ck_ht_map*, %struct.ck_ht_map** %9, align 8
  %50 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = icmp ne i64* %51, null
  br i1 %52, label %53, label %73

53:                                               ; preds = %48
  %54 = load %struct.ck_ht_map*, %struct.ck_ht_map** %9, align 8
  %55 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = mul i64 8, %57
  store i64 %58, i64* %12, align 8
  %59 = load %struct.ck_ht*, %struct.ck_ht** %5, align 8
  %60 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64* (i64)*, i64* (i64)** %62, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i64* %63(i64 %64)
  store i64* %65, i64** %8, align 8
  %66 = load i64*, i64** %8, align 8
  %67 = icmp eq i64* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %290

69:                                               ; preds = %53
  %70 = load i64*, i64** %8, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call i32 @memset(i64* %70, i32 0, i64 %71)
  br label %73

73:                                               ; preds = %69, %48
  br label %78

74:                                               ; preds = %45
  %75 = load %struct.ck_ht_map*, %struct.ck_ht_map** %9, align 8
  %76 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %10, align 8
  br label %78

78:                                               ; preds = %74, %73
  store i64 0, i64* %11, align 8
  br label %79

79:                                               ; preds = %241, %78
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.ck_ht_map*, %struct.ck_ht_map** %9, align 8
  %82 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = icmp ult i64 %80, %84
  br i1 %85, label %86, label %244

86:                                               ; preds = %79
  %87 = load %struct.ck_ht_map*, %struct.ck_ht_map** %9, align 8
  %88 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %87, i32 0, i32 6
  %89 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %88, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %7, align 8
  %92 = add i64 %90, %91
  %93 = load %struct.ck_ht_map*, %struct.ck_ht_map** %9, align 8
  %94 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = and i64 %92, %95
  %97 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %89, i64 %96
  store %struct.ck_ht_entry* %97, %struct.ck_ht_entry** %13, align 8
  %98 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %13, align 8
  %99 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @CK_HT_KEY_EMPTY, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %86
  %104 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %13, align 8
  %105 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @CK_HT_KEY_TOMBSTONE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103, %86
  br label %241

110:                                              ; preds = %103
  %111 = load %struct.ck_ht*, %struct.ck_ht** %5, align 8
  %112 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @CK_HT_MODE_BYTESTRING, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %110
  %118 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %13, align 8
  %119 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.ck_ht_hash, %struct.ck_ht_hash* %16, i32 0, i32 0
  store i64 %120, i64* %121, align 8
  %122 = load %struct.ck_ht_map*, %struct.ck_ht_map** %9, align 8
  %123 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %13, align 8
  %124 = call i8* @ck_ht_entry_key(%struct.ck_ht_entry* %123)
  %125 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %13, align 8
  %126 = call i32 @ck_ht_entry_key_length(%struct.ck_ht_entry* %125)
  %127 = getelementptr inbounds %struct.ck_ht_hash, %struct.ck_ht_hash* %16, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call %struct.ck_ht_entry* @ck_ht_map_probe_wr(%struct.ck_ht_map* %122, i64 %128, %struct.ck_ht_entry* %15, %struct.ck_ht_entry** %14, i8* %124, i32 %126, i32* null, i64* %17)
  store %struct.ck_ht_entry* %129, %struct.ck_ht_entry** %13, align 8
  br label %143

130:                                              ; preds = %110
  %131 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %13, align 8
  %132 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.ck_ht_hash, %struct.ck_ht_hash* %16, i32 0, i32 0
  store i64 %133, i64* %134, align 8
  %135 = load %struct.ck_ht_map*, %struct.ck_ht_map** %9, align 8
  %136 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %13, align 8
  %137 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i8*
  %140 = getelementptr inbounds %struct.ck_ht_hash, %struct.ck_ht_hash* %16, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call %struct.ck_ht_entry* @ck_ht_map_probe_wr(%struct.ck_ht_map* %135, i64 %141, %struct.ck_ht_entry* %15, %struct.ck_ht_entry** %14, i8* %139, i32 8, i32* null, i64* %17)
  store %struct.ck_ht_entry* %142, %struct.ck_ht_entry** %13, align 8
  br label %143

143:                                              ; preds = %130, %117
  %144 = getelementptr inbounds %struct.ck_ht_hash, %struct.ck_ht_hash* %16, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.ck_ht_map*, %struct.ck_ht_map** %9, align 8
  %147 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = and i64 %145, %148
  store i64 %149, i64* %18, align 8
  %150 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %14, align 8
  %151 = icmp ne %struct.ck_ht_entry* %150, null
  br i1 %151, label %152, label %203

152:                                              ; preds = %143
  %153 = load %struct.ck_ht_map*, %struct.ck_ht_map** %9, align 8
  %154 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %153, i32 0, i32 5
  %155 = load %struct.ck_ht_map*, %struct.ck_ht_map** %9, align 8
  %156 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %157, 1
  %159 = call i32 @CK_HT_TYPE_STORE(i64* %154, i64 %158)
  %160 = call i32 (...) @ck_pr_fence_store()
  %161 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %14, align 8
  %162 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %161, i32 0, i32 2
  %163 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %13, align 8
  %164 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @CK_HT_TYPE_STORE(i64* %162, i64 %165)
  %167 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %14, align 8
  %168 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %167, i32 0, i32 1
  %169 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %13, align 8
  %170 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @CK_HT_TYPE_STORE(i64* %168, i64 %171)
  %173 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %14, align 8
  %174 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %173, i32 0, i32 3
  %175 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %13, align 8
  %176 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to i8*
  %179 = call i32 @ck_pr_store_ptr_unsafe(i64* %174, i8* %178)
  %180 = call i32 (...) @ck_pr_fence_store()
  %181 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %14, align 8
  %182 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %181, i32 0, i32 0
  %183 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %13, align 8
  %184 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to i8*
  %187 = call i32 @ck_pr_store_ptr_unsafe(i64* %182, i8* %186)
  %188 = call i32 (...) @ck_pr_fence_store()
  %189 = load %struct.ck_ht_map*, %struct.ck_ht_map** %9, align 8
  %190 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %189, i32 0, i32 5
  %191 = load %struct.ck_ht_map*, %struct.ck_ht_map** %9, align 8
  %192 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %191, i32 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = add i64 %193, 1
  %195 = call i32 @CK_HT_TYPE_STORE(i64* %190, i64 %194)
  %196 = call i32 (...) @ck_pr_fence_store()
  %197 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %13, align 8
  %198 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %197, i32 0, i32 0
  %199 = load i64, i64* @CK_HT_KEY_TOMBSTONE, align 8
  %200 = inttoptr i64 %199 to i8*
  %201 = call i32 @ck_pr_store_ptr_unsafe(i64* %198, i8* %200)
  %202 = call i32 (...) @ck_pr_fence_store()
  br label %203

203:                                              ; preds = %152, %143
  %204 = load i64, i64* %6, align 8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %234

206:                                              ; preds = %203
  %207 = load i64, i64* %17, align 8
  %208 = load i64, i64* %10, align 8
  %209 = icmp ugt i64 %207, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = load i64, i64* %17, align 8
  store i64 %211, i64* %10, align 8
  br label %212

212:                                              ; preds = %210, %206
  %213 = load i64, i64* %17, align 8
  %214 = load i64, i64* @CK_HT_WORD_MAX, align 8
  %215 = icmp uge i64 %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = load i64, i64* @CK_HT_WORD_MAX, align 8
  store i64 %217, i64* %17, align 8
  br label %218

218:                                              ; preds = %216, %212
  %219 = load i64*, i64** %8, align 8
  %220 = icmp ne i64* %219, null
  br i1 %220, label %221, label %233

221:                                              ; preds = %218
  %222 = load i64, i64* %17, align 8
  %223 = load i64*, i64** %8, align 8
  %224 = load i64, i64* %18, align 8
  %225 = getelementptr inbounds i64, i64* %223, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = icmp ugt i64 %222, %226
  br i1 %227, label %228, label %233

228:                                              ; preds = %221
  %229 = load i64, i64* %17, align 8
  %230 = load i64*, i64** %8, align 8
  %231 = load i64, i64* %18, align 8
  %232 = getelementptr inbounds i64, i64* %230, i64 %231
  store i64 %229, i64* %232, align 8
  br label %233

233:                                              ; preds = %228, %221, %218
  br label %240

234:                                              ; preds = %203
  %235 = load i64, i64* %6, align 8
  %236 = add i64 %235, -1
  store i64 %236, i64* %6, align 8
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %234
  br label %244

239:                                              ; preds = %234
  br label %240

240:                                              ; preds = %239, %233
  br label %241

241:                                              ; preds = %240, %109
  %242 = load i64, i64* %11, align 8
  %243 = add i64 %242, 1
  store i64 %243, i64* %11, align 8
  br label %79

244:                                              ; preds = %238, %79
  %245 = load i64, i64* %10, align 8
  %246 = load %struct.ck_ht_map*, %struct.ck_ht_map** %9, align 8
  %247 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %245, %248
  br i1 %249, label %250, label %255

250:                                              ; preds = %244
  %251 = load %struct.ck_ht_map*, %struct.ck_ht_map** %9, align 8
  %252 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %251, i32 0, i32 1
  %253 = load i64, i64* %10, align 8
  %254 = call i32 @CK_HT_TYPE_STORE(i64* %252, i64 %253)
  br label %255

255:                                              ; preds = %250, %244
  %256 = load i64*, i64** %8, align 8
  %257 = icmp ne i64* %256, null
  br i1 %257, label %258, label %289

258:                                              ; preds = %255
  store i64 0, i64* %11, align 8
  br label %259

259:                                              ; preds = %277, %258
  %260 = load i64, i64* %11, align 8
  %261 = load %struct.ck_ht_map*, %struct.ck_ht_map** %9, align 8
  %262 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = sext i32 %263 to i64
  %265 = icmp ult i64 %260, %264
  br i1 %265, label %266, label %280

266:                                              ; preds = %259
  %267 = load %struct.ck_ht_map*, %struct.ck_ht_map** %9, align 8
  %268 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %267, i32 0, i32 2
  %269 = load i64*, i64** %268, align 8
  %270 = load i64, i64* %11, align 8
  %271 = getelementptr inbounds i64, i64* %269, i64 %270
  %272 = load i64*, i64** %8, align 8
  %273 = load i64, i64* %11, align 8
  %274 = getelementptr inbounds i64, i64* %272, i64 %273
  %275 = load i64, i64* %274, align 8
  %276 = call i32 @CK_HT_STORE(i64* %271, i64 %275)
  br label %277

277:                                              ; preds = %266
  %278 = load i64, i64* %11, align 8
  %279 = add i64 %278, 1
  store i64 %279, i64* %11, align 8
  br label %259

280:                                              ; preds = %259
  %281 = load %struct.ck_ht*, %struct.ck_ht** %5, align 8
  %282 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %281, i32 0, i32 1
  %283 = load %struct.TYPE_2__*, %struct.TYPE_2__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 1
  %285 = load i32 (i64*, i64, i32)*, i32 (i64*, i64, i32)** %284, align 8
  %286 = load i64*, i64** %8, align 8
  %287 = load i64, i64* %12, align 8
  %288 = call i32 %285(i64* %286, i64 %287, i32 0)
  br label %289

289:                                              ; preds = %280, %255
  store i32 1, i32* %4, align 4
  br label %290

290:                                              ; preds = %289, %68, %44
  %291 = load i32, i32* %4, align 4
  ret i32 %291
}

declare dso_local i32 @CK_HT_TYPE_STORE(i64*, i64) #1

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local %struct.ck_ht_entry* @ck_ht_map_probe_wr(%struct.ck_ht_map*, i64, %struct.ck_ht_entry*, %struct.ck_ht_entry**, i8*, i32, i32*, i64*) #1

declare dso_local i8* @ck_ht_entry_key(%struct.ck_ht_entry*) #1

declare dso_local i32 @ck_ht_entry_key_length(%struct.ck_ht_entry*) #1

declare dso_local i32 @ck_pr_fence_store(...) #1

declare dso_local i32 @ck_pr_store_ptr_unsafe(i64*, i8*) #1

declare dso_local i32 @CK_HT_STORE(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
