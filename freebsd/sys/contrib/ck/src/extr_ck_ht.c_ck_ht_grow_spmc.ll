; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_grow_spmc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_grow_spmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_ht = type { i32, i32, %struct.ck_ht_map*, i32, i32 (%struct.ck_ht_hash*, i64*, i32, i32)* }
%struct.ck_ht_map = type { i32, i64, i64, i32, %struct.ck_ht_entry* }
%struct.ck_ht_entry = type { i64, i64 }
%struct.ck_ht_hash = type { i64 }

@CK_HT_KEY_EMPTY = common dso_local global i64 0, align 8
@CK_HT_KEY_TOMBSTONE = common dso_local global i64 0, align 8
@CK_HT_MODE_BYTESTRING = common dso_local global i32 0, align 4
@CK_MD_CACHELINE = common dso_local global i32 0, align 4
@CK_HT_BUCKET_LENGTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_ht_grow_spmc(%struct.ck_ht* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ck_ht*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ck_ht_map*, align 8
  %7 = alloca %struct.ck_ht_map*, align 8
  %8 = alloca %struct.ck_ht_entry*, align 8
  %9 = alloca %struct.ck_ht_entry*, align 8
  %10 = alloca %struct.ck_ht_hash, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ck_ht_entry*, align 8
  store %struct.ck_ht* %0, %struct.ck_ht** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %17

17:                                               ; preds = %166, %2
  %18 = load %struct.ck_ht*, %struct.ck_ht** %4, align 8
  %19 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %18, i32 0, i32 2
  %20 = load %struct.ck_ht_map*, %struct.ck_ht_map** %19, align 8
  store %struct.ck_ht_map* %20, %struct.ck_ht_map** %6, align 8
  %21 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %22 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %189

27:                                               ; preds = %17
  %28 = load %struct.ck_ht*, %struct.ck_ht** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.ck_ht_map* @ck_ht_map_create(%struct.ck_ht* %28, i32 %29)
  store %struct.ck_ht_map* %30, %struct.ck_ht_map** %7, align 8
  %31 = load %struct.ck_ht_map*, %struct.ck_ht_map** %7, align 8
  %32 = icmp eq %struct.ck_ht_map* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %189

34:                                               ; preds = %27
  store i64 0, i64* %11, align 8
  br label %35

35:                                               ; preds = %175, %34
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %38 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = icmp ult i64 %36, %40
  br i1 %41, label %42, label %178

42:                                               ; preds = %35
  %43 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %44 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %43, i32 0, i32 4
  %45 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %45, i64 %46
  store %struct.ck_ht_entry* %47, %struct.ck_ht_entry** %9, align 8
  %48 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %49 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CK_HT_KEY_EMPTY, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %42
  %54 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %55 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CK_HT_KEY_TOMBSTONE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53, %42
  br label %175

60:                                               ; preds = %53
  %61 = load %struct.ck_ht*, %struct.ck_ht** %4, align 8
  %62 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @CK_HT_MODE_BYTESTRING, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %69 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.ck_ht_hash, %struct.ck_ht_hash* %10, i32 0, i32 0
  store i64 %70, i64* %71, align 8
  br label %77

72:                                               ; preds = %60
  %73 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %74 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.ck_ht_hash, %struct.ck_ht_hash* %10, i32 0, i32 0
  store i64 %75, i64* %76, align 8
  br label %77

77:                                               ; preds = %72, %67
  %78 = getelementptr inbounds %struct.ck_ht_hash, %struct.ck_ht_hash* %10, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ck_ht_map*, %struct.ck_ht_map** %7, align 8
  %81 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = and i64 %79, %82
  store i64 %83, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %12, align 8
  br label %84

84:                                               ; preds = %157, %77
  %85 = load i64, i64* %12, align 8
  %86 = load %struct.ck_ht_map*, %struct.ck_ht_map** %7, align 8
  %87 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %85, %88
  br i1 %89, label %90, label %160

90:                                               ; preds = %84
  %91 = load %struct.ck_ht_map*, %struct.ck_ht_map** %7, align 8
  %92 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %91, i32 0, i32 4
  %93 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %92, align 8
  %94 = load i64, i64* %14, align 8
  %95 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %93, i64 %94
  %96 = ptrtoint %struct.ck_ht_entry* %95 to i64
  %97 = load i32, i32* @CK_MD_CACHELINE, align 4
  %98 = sub nsw i32 %97, 1
  %99 = xor i32 %98, -1
  %100 = sext i32 %99 to i64
  %101 = and i64 %96, %100
  %102 = inttoptr i64 %101 to i8*
  %103 = bitcast i8* %102 to %struct.ck_ht_entry*
  store %struct.ck_ht_entry* %103, %struct.ck_ht_entry** %8, align 8
  store i64 0, i64* %13, align 8
  br label %104

104:                                              ; preds = %142, %90
  %105 = load i64, i64* %13, align 8
  %106 = load i64, i64* @CK_HT_BUCKET_LENGTH, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %145

108:                                              ; preds = %104
  %109 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %8, align 8
  %110 = load i64, i64* %13, align 8
  %111 = load i64, i64* %14, align 8
  %112 = add i64 %110, %111
  %113 = load i64, i64* @CK_HT_BUCKET_LENGTH, align 8
  %114 = sub i64 %113, 1
  %115 = and i64 %112, %114
  %116 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %109, i64 %115
  store %struct.ck_ht_entry* %116, %struct.ck_ht_entry** %16, align 8
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %15, align 4
  %119 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %16, align 8
  %120 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @CK_HT_KEY_EMPTY, align 8
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = call i64 @CK_CC_LIKELY(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %108
  %128 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %16, align 8
  %129 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %130 = bitcast %struct.ck_ht_entry* %128 to i8*
  %131 = bitcast %struct.ck_ht_entry* %129 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %130, i8* align 8 %131, i64 16, i1 false)
  %132 = load %struct.ck_ht_map*, %struct.ck_ht_map** %7, align 8
  %133 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  %136 = load %struct.ck_ht_map*, %struct.ck_ht_map** %7, align 8
  %137 = load i32, i32* %15, align 4
  %138 = getelementptr inbounds %struct.ck_ht_hash, %struct.ck_ht_hash* %10, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @ck_ht_map_bound_set(%struct.ck_ht_map* %136, i64 %139, i32 %137)
  br label %145

141:                                              ; preds = %108
  br label %142

142:                                              ; preds = %141
  %143 = load i64, i64* %13, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %13, align 8
  br label %104

145:                                              ; preds = %127, %104
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* @CK_HT_BUCKET_LENGTH, align 8
  %148 = icmp ult i64 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %160

150:                                              ; preds = %145
  %151 = load %struct.ck_ht_map*, %struct.ck_ht_map** %7, align 8
  %152 = load i64, i64* %14, align 8
  %153 = load i32, i32* %15, align 4
  %154 = getelementptr inbounds %struct.ck_ht_hash, %struct.ck_ht_hash* %10, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @ck_ht_map_probe_next(%struct.ck_ht_map* %151, i64 %152, i64 %155, i32 %153)
  store i64 %156, i64* %14, align 8
  br label %157

157:                                              ; preds = %150
  %158 = load i64, i64* %12, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %12, align 8
  br label %84

160:                                              ; preds = %149, %84
  %161 = load i64, i64* %12, align 8
  %162 = load %struct.ck_ht_map*, %struct.ck_ht_map** %7, align 8
  %163 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %161, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %160
  %167 = load %struct.ck_ht*, %struct.ck_ht** %4, align 8
  %168 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ck_ht_map*, %struct.ck_ht_map** %7, align 8
  %171 = call i32 @ck_ht_map_destroy(i32 %169, %struct.ck_ht_map* %170, i32 0)
  %172 = load i32, i32* %5, align 4
  %173 = shl i32 %172, 1
  store i32 %173, i32* %5, align 4
  br label %17

174:                                              ; preds = %160
  br label %175

175:                                              ; preds = %174, %59
  %176 = load i64, i64* %11, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %11, align 8
  br label %35

178:                                              ; preds = %35
  %179 = call i32 (...) @ck_pr_fence_store()
  %180 = load %struct.ck_ht*, %struct.ck_ht** %4, align 8
  %181 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %180, i32 0, i32 2
  %182 = load %struct.ck_ht_map*, %struct.ck_ht_map** %7, align 8
  %183 = call i32 @ck_pr_store_ptr_unsafe(%struct.ck_ht_map** %181, %struct.ck_ht_map* %182)
  %184 = load %struct.ck_ht*, %struct.ck_ht** %4, align 8
  %185 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %188 = call i32 @ck_ht_map_destroy(i32 %186, %struct.ck_ht_map* %187, i32 1)
  store i32 1, i32* %3, align 4
  br label %189

189:                                              ; preds = %178, %33, %26
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local %struct.ck_ht_map* @ck_ht_map_create(%struct.ck_ht*, i32) #1

declare dso_local i64 @CK_CC_LIKELY(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ck_ht_map_bound_set(%struct.ck_ht_map*, i64, i32) #1

declare dso_local i64 @ck_ht_map_probe_next(%struct.ck_ht_map*, i64, i64, i32) #1

declare dso_local i32 @ck_ht_map_destroy(i32, %struct.ck_ht_map*, i32) #1

declare dso_local i32 @ck_pr_fence_store(...) #1

declare dso_local i32 @ck_pr_store_ptr_unsafe(%struct.ck_ht_map**, %struct.ck_ht_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
