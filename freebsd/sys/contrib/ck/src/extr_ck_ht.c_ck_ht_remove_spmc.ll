; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_remove_spmc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_remove_spmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_ht = type { i32, %struct.ck_ht_map* }
%struct.ck_ht_map = type { i64 }
%struct.ck_ht_entry = type { i64 }

@CK_HT_MODE_BYTESTRING = common dso_local global i32 0, align 4
@CK_HT_KEY_EMPTY = common dso_local global i64 0, align 8
@CK_HT_KEY_TOMBSTONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_ht_remove_spmc(%struct.ck_ht* %0, i32 %1, %struct.ck_ht_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ck_ht*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ck_ht_entry*, align 8
  %8 = alloca %struct.ck_ht_map*, align 8
  %9 = alloca %struct.ck_ht_entry*, align 8
  %10 = alloca %struct.ck_ht_entry, align 8
  store %struct.ck_ht* %0, %struct.ck_ht** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ck_ht_entry* %2, %struct.ck_ht_entry** %7, align 8
  %11 = load %struct.ck_ht*, %struct.ck_ht** %5, align 8
  %12 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %11, i32 0, i32 1
  %13 = load %struct.ck_ht_map*, %struct.ck_ht_map** %12, align 8
  store %struct.ck_ht_map* %13, %struct.ck_ht_map** %8, align 8
  %14 = load %struct.ck_ht*, %struct.ck_ht** %5, align 8
  %15 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @CK_HT_MODE_BYTESTRING, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.ck_ht_map*, %struct.ck_ht_map** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %7, align 8
  %24 = call i8* @ck_ht_entry_key(%struct.ck_ht_entry* %23)
  %25 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %7, align 8
  %26 = call i32 @ck_ht_entry_key_length(%struct.ck_ht_entry* %25)
  %27 = call %struct.ck_ht_entry* @ck_ht_map_probe_rd(%struct.ck_ht_map* %21, i32 %22, %struct.ck_ht_entry* %10, i8* %24, i32 %26)
  store %struct.ck_ht_entry* %27, %struct.ck_ht_entry** %9, align 8
  br label %36

28:                                               ; preds = %3
  %29 = load %struct.ck_ht_map*, %struct.ck_ht_map** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %7, align 8
  %32 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = call %struct.ck_ht_entry* @ck_ht_map_probe_rd(%struct.ck_ht_map* %29, i32 %30, %struct.ck_ht_entry* %10, i8* %34, i32 8)
  store %struct.ck_ht_entry* %35, %struct.ck_ht_entry** %9, align 8
  br label %36

36:                                               ; preds = %28, %20
  %37 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %38 = icmp eq %struct.ck_ht_entry* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %10, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CK_HT_KEY_EMPTY, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %36
  store i32 0, i32* %4, align 4
  br label %62

45:                                               ; preds = %39
  %46 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %7, align 8
  %47 = bitcast %struct.ck_ht_entry* %46 to i8*
  %48 = bitcast %struct.ck_ht_entry* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 8, i1 false)
  %49 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %50 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %49, i32 0, i32 0
  %51 = load i64, i64* @CK_HT_KEY_TOMBSTONE, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @ck_pr_store_ptr_unsafe(i64* %50, i8* %52)
  %54 = call i32 (...) @ck_pr_fence_store()
  %55 = load %struct.ck_ht_map*, %struct.ck_ht_map** %8, align 8
  %56 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %55, i32 0, i32 0
  %57 = load %struct.ck_ht_map*, %struct.ck_ht_map** %8, align 8
  %58 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, 1
  %61 = call i32 @CK_HT_TYPE_STORE(i64* %56, i64 %60)
  store i32 1, i32* %4, align 4
  br label %62

62:                                               ; preds = %45, %44
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.ck_ht_entry* @ck_ht_map_probe_rd(%struct.ck_ht_map*, i32, %struct.ck_ht_entry*, i8*, i32) #1

declare dso_local i8* @ck_ht_entry_key(%struct.ck_ht_entry*) #1

declare dso_local i32 @ck_ht_entry_key_length(%struct.ck_ht_entry*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ck_pr_store_ptr_unsafe(i64*, i8*) #1

declare dso_local i32 @ck_pr_fence_store(...) #1

declare dso_local i32 @CK_HT_TYPE_STORE(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
