; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_get_spmc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_get_spmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_ht = type { i32, i32 }
%struct.ck_ht_entry = type { i64 }
%struct.ck_ht_map = type { i32 }

@CK_HT_MODE_BYTESTRING = common dso_local global i32 0, align 4
@CK_HT_KEY_EMPTY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_ht_get_spmc(%struct.ck_ht* %0, i32 %1, %struct.ck_ht_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ck_ht*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ck_ht_entry*, align 8
  %8 = alloca %struct.ck_ht_entry*, align 8
  %9 = alloca %struct.ck_ht_entry, align 8
  %10 = alloca %struct.ck_ht_map*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ck_ht* %0, %struct.ck_ht** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ck_ht_entry* %2, %struct.ck_ht_entry** %7, align 8
  br label %13

13:                                               ; preds = %49, %3
  %14 = load %struct.ck_ht*, %struct.ck_ht** %5, align 8
  %15 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %14, i32 0, i32 1
  %16 = call %struct.ck_ht_map* @ck_pr_load_ptr(i32* %15)
  store %struct.ck_ht_map* %16, %struct.ck_ht_map** %10, align 8
  %17 = load %struct.ck_ht_map*, %struct.ck_ht_map** %10, align 8
  %18 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %17, i32 0, i32 0
  %19 = call i64 @CK_HT_TYPE_LOAD(i32* %18)
  store i64 %19, i64* %11, align 8
  %20 = load %struct.ck_ht*, %struct.ck_ht** %5, align 8
  %21 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CK_HT_MODE_BYTESTRING, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %13
  %27 = load %struct.ck_ht_map*, %struct.ck_ht_map** %10, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %7, align 8
  %30 = call i8* @ck_ht_entry_key(%struct.ck_ht_entry* %29)
  %31 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %7, align 8
  %32 = call i32 @ck_ht_entry_key_length(%struct.ck_ht_entry* %31)
  %33 = call %struct.ck_ht_entry* @ck_ht_map_probe_rd(%struct.ck_ht_map* %27, i32 %28, %struct.ck_ht_entry* %9, i8* %30, i32 %32)
  store %struct.ck_ht_entry* %33, %struct.ck_ht_entry** %8, align 8
  br label %42

34:                                               ; preds = %13
  %35 = load %struct.ck_ht_map*, %struct.ck_ht_map** %10, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %7, align 8
  %38 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = call %struct.ck_ht_entry* @ck_ht_map_probe_rd(%struct.ck_ht_map* %35, i32 %36, %struct.ck_ht_entry* %9, i8* %40, i32 8)
  store %struct.ck_ht_entry* %41, %struct.ck_ht_entry** %8, align 8
  br label %42

42:                                               ; preds = %34, %26
  %43 = load %struct.ck_ht_map*, %struct.ck_ht_map** %10, align 8
  %44 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %43, i32 0, i32 0
  %45 = call i64 @CK_HT_TYPE_LOAD(i32* %44)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %13

50:                                               ; preds = %42
  %51 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %8, align 8
  %52 = icmp eq %struct.ck_ht_entry* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %9, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CK_HT_KEY_EMPTY, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %50
  store i32 0, i32* %4, align 4
  br label %63

59:                                               ; preds = %53
  %60 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %7, align 8
  %61 = bitcast %struct.ck_ht_entry* %60 to i8*
  %62 = bitcast %struct.ck_ht_entry* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 8, i1 false)
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %58
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.ck_ht_map* @ck_pr_load_ptr(i32*) #1

declare dso_local i64 @CK_HT_TYPE_LOAD(i32*) #1

declare dso_local %struct.ck_ht_entry* @ck_ht_map_probe_rd(%struct.ck_ht_map*, i32, %struct.ck_ht_entry*, i8*, i32) #1

declare dso_local i8* @ck_ht_entry_key(%struct.ck_ht_entry*) #1

declare dso_local i32 @ck_ht_entry_key_length(%struct.ck_ht_entry*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
