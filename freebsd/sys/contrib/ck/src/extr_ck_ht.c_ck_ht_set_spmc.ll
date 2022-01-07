; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_set_spmc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_set_spmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_ht = type { i32, %struct.ck_ht_map* }
%struct.ck_ht_map = type { i32, i32, i32 }
%struct.ck_ht_entry = type { i64, i32, i32, i64 }

@CK_HT_MODE_BYTESTRING = common dso_local global i32 0, align 4
@CK_HT_KEY_EMPTY = common dso_local global i64 0, align 8
@CK_HT_KEY_TOMBSTONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_ht_set_spmc(%struct.ck_ht* %0, i32 %1, %struct.ck_ht_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ck_ht*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ck_ht_entry*, align 8
  %8 = alloca %struct.ck_ht_entry, align 8
  %9 = alloca %struct.ck_ht_entry*, align 8
  %10 = alloca %struct.ck_ht_entry*, align 8
  %11 = alloca %struct.ck_ht_map*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ck_ht* %0, %struct.ck_ht** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ck_ht_entry* %2, %struct.ck_ht_entry** %7, align 8
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %60, %3
  %17 = load %struct.ck_ht*, %struct.ck_ht** %5, align 8
  %18 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %17, i32 0, i32 1
  %19 = load %struct.ck_ht_map*, %struct.ck_ht_map** %18, align 8
  store %struct.ck_ht_map* %19, %struct.ck_ht_map** %11, align 8
  %20 = load %struct.ck_ht*, %struct.ck_ht** %5, align 8
  %21 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CK_HT_MODE_BYTESTRING, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %16
  %27 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %7, align 8
  %30 = call i8* @ck_ht_entry_key(%struct.ck_ht_entry* %29)
  %31 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %7, align 8
  %32 = call i32 @ck_ht_entry_key_length(%struct.ck_ht_entry* %31)
  %33 = call %struct.ck_ht_entry* @ck_ht_map_probe_wr(%struct.ck_ht_map* %27, i32 %28, %struct.ck_ht_entry* %8, %struct.ck_ht_entry** %10, i8* %30, i32 %32, i32* %12, i32* %13)
  store %struct.ck_ht_entry* %33, %struct.ck_ht_entry** %9, align 8
  br label %42

34:                                               ; preds = %16
  %35 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %7, align 8
  %38 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = call %struct.ck_ht_entry* @ck_ht_map_probe_wr(%struct.ck_ht_map* %35, i32 %36, %struct.ck_ht_entry* %8, %struct.ck_ht_entry** %10, i8* %40, i32 8, i32* %12, i32* %13)
  store %struct.ck_ht_entry* %41, %struct.ck_ht_entry** %9, align 8
  br label %42

42:                                               ; preds = %34, %26
  %43 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %10, align 8
  %44 = icmp ne %struct.ck_ht_entry* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %12, align 4
  br label %61

47:                                               ; preds = %42
  %48 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %49 = icmp ne %struct.ck_ht_entry* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %61

51:                                               ; preds = %47
  %52 = load %struct.ck_ht*, %struct.ck_ht** %5, align 8
  %53 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %54 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 1
  %57 = call i32 @ck_ht_grow_spmc(%struct.ck_ht* %52, i32 %56)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %244

60:                                               ; preds = %51
  br label %16

61:                                               ; preds = %50, %45
  %62 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %63 = icmp eq %struct.ck_ht_entry* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %10, align 8
  store %struct.ck_ht_entry* %65, %struct.ck_ht_entry** %9, align 8
  store i32 1, i32* %14, align 4
  br label %66

66:                                               ; preds = %64, %61
  %67 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %68 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CK_HT_KEY_EMPTY, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %138

72:                                               ; preds = %66
  %73 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %10, align 8
  %74 = icmp ne %struct.ck_ht_entry* %73, null
  br i1 %74, label %75, label %138

75:                                               ; preds = %72
  %76 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %77 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %10, align 8
  %78 = icmp ne %struct.ck_ht_entry* %76, %77
  br i1 %78, label %79, label %138

79:                                               ; preds = %75
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %12, align 4
  %81 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %10, align 8
  %82 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %81, i32 0, i32 1
  %83 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %7, align 8
  %84 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @CK_HT_TYPE_STORE(i32* %82, i32 %85)
  %87 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %10, align 8
  %88 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %87, i32 0, i32 2
  %89 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %7, align 8
  %90 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @CK_HT_TYPE_STORE(i32* %88, i32 %91)
  %93 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %10, align 8
  %94 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CK_HT_KEY_TOMBSTONE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %79
  %99 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %100 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %99, i32 0, i32 1
  %101 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %102 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  %105 = call i32 @CK_HT_TYPE_STORE(i32* %100, i32 %104)
  %106 = call i32 (...) @ck_pr_fence_store()
  br label %107

107:                                              ; preds = %98, %79
  %108 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %10, align 8
  %109 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %108, i32 0, i32 3
  %110 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %7, align 8
  %111 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = call i32 @ck_pr_store_ptr_unsafe(i64* %109, i8* %113)
  %115 = call i32 (...) @ck_pr_fence_store()
  %116 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %10, align 8
  %117 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %116, i32 0, i32 0
  %118 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %7, align 8
  %119 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = call i32 @ck_pr_store_ptr_unsafe(i64* %117, i8* %121)
  %123 = call i32 (...) @ck_pr_fence_store()
  %124 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %125 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %124, i32 0, i32 1
  %126 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %127 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  %130 = call i32 @CK_HT_TYPE_STORE(i32* %125, i32 %129)
  %131 = call i32 (...) @ck_pr_fence_store()
  %132 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %133 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %132, i32 0, i32 0
  %134 = load i64, i64* @CK_HT_KEY_TOMBSTONE, align 8
  %135 = inttoptr i64 %134 to i8*
  %136 = call i32 @ck_pr_store_ptr_unsafe(i64* %133, i8* %135)
  %137 = call i32 (...) @ck_pr_fence_store()
  br label %212

138:                                              ; preds = %75, %72, %66
  %139 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %140 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @CK_HT_KEY_EMPTY, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %138
  %145 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %146 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @CK_HT_KEY_TOMBSTONE, align 8
  %149 = icmp ne i64 %147, %148
  br label %150

150:                                              ; preds = %144, %138
  %151 = phi i1 [ false, %138 ], [ %149, %144 ]
  %152 = zext i1 %151 to i32
  store i32 %152, i32* %15, align 4
  %153 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %10, align 8
  %154 = icmp ne %struct.ck_ht_entry* %153, null
  br i1 %154, label %155, label %173

155:                                              ; preds = %150
  %156 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %10, align 8
  %157 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @CK_HT_KEY_TOMBSTONE, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %155
  %162 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %163 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %162, i32 0, i32 1
  %164 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %165 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  %168 = call i32 @CK_HT_TYPE_STORE(i32* %163, i32 %167)
  %169 = call i32 (...) @ck_pr_fence_store()
  br label %170

170:                                              ; preds = %161, %155
  %171 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %10, align 8
  store %struct.ck_ht_entry* %171, %struct.ck_ht_entry** %9, align 8
  %172 = load i32, i32* %13, align 4
  store i32 %172, i32* %12, align 4
  br label %173

173:                                              ; preds = %170, %150
  %174 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %175 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %174, i32 0, i32 1
  %176 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %7, align 8
  %177 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @CK_HT_TYPE_STORE(i32* %175, i32 %178)
  %180 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %181 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %180, i32 0, i32 2
  %182 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %7, align 8
  %183 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @CK_HT_TYPE_STORE(i32* %181, i32 %184)
  %186 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %187 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %186, i32 0, i32 3
  %188 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %7, align 8
  %189 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = inttoptr i64 %190 to i8*
  %192 = call i32 @ck_pr_store_ptr_unsafe(i64* %187, i8* %191)
  %193 = call i32 (...) @ck_pr_fence_store()
  %194 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %195 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %194, i32 0, i32 0
  %196 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %7, align 8
  %197 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = inttoptr i64 %198 to i8*
  %200 = call i32 @ck_pr_store_ptr_unsafe(i64* %195, i8* %199)
  %201 = load i32, i32* %15, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %173
  %204 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %205 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %204, i32 0, i32 2
  %206 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %207 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 1
  %210 = call i32 @CK_HT_TYPE_STORE(i32* %205, i32 %209)
  br label %211

211:                                              ; preds = %203, %173
  br label %212

212:                                              ; preds = %211, %107
  %213 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* %12, align 4
  %216 = call i32 @ck_ht_map_bound_set(%struct.ck_ht_map* %213, i32 %214, i32 %215)
  %217 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %218 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = mul nsw i32 %219, 2
  %221 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %222 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp sgt i32 %220, %223
  br i1 %224, label %225, label %232

225:                                              ; preds = %212
  %226 = load %struct.ck_ht*, %struct.ck_ht** %5, align 8
  %227 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %228 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = shl i32 %229, 1
  %231 = call i32 @ck_ht_grow_spmc(%struct.ck_ht* %226, i32 %230)
  br label %232

232:                                              ; preds = %225, %212
  %233 = load i32, i32* %14, align 4
  %234 = icmp eq i32 %233, 1
  br i1 %234, label %235, label %239

235:                                              ; preds = %232
  %236 = load i64, i64* @CK_HT_KEY_EMPTY, align 8
  %237 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %7, align 8
  %238 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %237, i32 0, i32 0
  store i64 %236, i64* %238, align 8
  br label %243

239:                                              ; preds = %232
  %240 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %7, align 8
  %241 = bitcast %struct.ck_ht_entry* %240 to i8*
  %242 = bitcast %struct.ck_ht_entry* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %241, i8* align 8 %242, i64 24, i1 false)
  br label %243

243:                                              ; preds = %239, %235
  store i32 1, i32* %4, align 4
  br label %244

244:                                              ; preds = %243, %59
  %245 = load i32, i32* %4, align 4
  ret i32 %245
}

declare dso_local %struct.ck_ht_entry* @ck_ht_map_probe_wr(%struct.ck_ht_map*, i32, %struct.ck_ht_entry*, %struct.ck_ht_entry**, i8*, i32, i32*, i32*) #1

declare dso_local i8* @ck_ht_entry_key(%struct.ck_ht_entry*) #1

declare dso_local i32 @ck_ht_entry_key_length(%struct.ck_ht_entry*) #1

declare dso_local i32 @ck_ht_grow_spmc(%struct.ck_ht*, i32) #1

declare dso_local i32 @CK_HT_TYPE_STORE(i32*, i32) #1

declare dso_local i32 @ck_pr_fence_store(...) #1

declare dso_local i32 @ck_pr_store_ptr_unsafe(i64*, i8*) #1

declare dso_local i32 @ck_ht_map_bound_set(%struct.ck_ht_map*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
