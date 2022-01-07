; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_cache_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_cache_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32*, %struct.ub_packed_rrset_key* }
%struct.TYPE_4__ = type { i64, i32, i8*, i8*, i32* }
%struct.rrset_cache = type { i32 }
%struct.lruhash_entry = type { i64, i32, i64 }
%struct.packed_rrset_data = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ub_packed_rrset_key* @rrset_cache_lookup(%struct.rrset_cache* %0, i32* %1, i64 %2, i32 %3, i32 %4, i32 %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.ub_packed_rrset_key*, align 8
  %10 = alloca %struct.rrset_cache*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.lruhash_entry*, align 8
  %19 = alloca %struct.ub_packed_rrset_key, align 8
  %20 = alloca %struct.packed_rrset_data*, align 8
  store %struct.rrset_cache* %0, %struct.rrset_cache** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %19, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store %struct.ub_packed_rrset_key* %19, %struct.ub_packed_rrset_key** %22, align 8
  %23 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %19, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %19, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  store i32* %25, i32** %27, align 8
  %28 = load i64, i64* %12, align 8
  %29 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %19, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i8* @htons(i32 %31)
  %33 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %19, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %14, align 4
  %36 = call i8* @htons(i32 %35)
  %37 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %19, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %15, align 4
  %40 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %19, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %19, i32 0, i32 1
  %43 = call i32 @rrset_key_hash(%struct.TYPE_4__* %42)
  %44 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %19, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.rrset_cache*, %struct.rrset_cache** %10, align 8
  %47 = getelementptr inbounds %struct.rrset_cache, %struct.rrset_cache* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %19, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %17, align 4
  %52 = call %struct.lruhash_entry* @slabhash_lookup(i32* %47, i32 %50, %struct.ub_packed_rrset_key* %19, i32 %51)
  store %struct.lruhash_entry* %52, %struct.lruhash_entry** %18, align 8
  %53 = icmp ne %struct.lruhash_entry* %52, null
  br i1 %53, label %54, label %73

54:                                               ; preds = %8
  %55 = load %struct.lruhash_entry*, %struct.lruhash_entry** %18, align 8
  %56 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %58, %struct.packed_rrset_data** %20, align 8
  %59 = load i64, i64* %16, align 8
  %60 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %20, align 8
  %61 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load %struct.lruhash_entry*, %struct.lruhash_entry** %18, align 8
  %66 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %65, i32 0, i32 1
  %67 = call i32 @lock_rw_unlock(i32* %66)
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %9, align 8
  br label %74

68:                                               ; preds = %54
  %69 = load %struct.lruhash_entry*, %struct.lruhash_entry** %18, align 8
  %70 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.ub_packed_rrset_key*
  store %struct.ub_packed_rrset_key* %72, %struct.ub_packed_rrset_key** %9, align 8
  br label %74

73:                                               ; preds = %8
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %9, align 8
  br label %74

74:                                               ; preds = %73, %68, %64
  %75 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  ret %struct.ub_packed_rrset_key* %75
}

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @rrset_key_hash(%struct.TYPE_4__*) #1

declare dso_local %struct.lruhash_entry* @slabhash_lookup(i32*, i32, %struct.ub_packed_rrset_key*, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
