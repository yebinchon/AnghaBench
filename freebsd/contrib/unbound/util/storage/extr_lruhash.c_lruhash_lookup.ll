; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_lruhash_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_lruhash_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash_entry = type { i32 }
%struct.lruhash = type { i64, i32, %struct.lruhash_bin*, i32 }
%struct.lruhash_bin = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lruhash_entry* @lruhash_lookup(%struct.lruhash* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.lruhash*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lruhash_entry*, align 8
  %10 = alloca %struct.lruhash_bin*, align 8
  store %struct.lruhash* %0, %struct.lruhash** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.lruhash*, %struct.lruhash** %5, align 8
  %12 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @fptr_whitelist_hash_compfunc(i32 %13)
  %15 = call i32 @fptr_ok(i32 %14)
  %16 = load %struct.lruhash*, %struct.lruhash** %5, align 8
  %17 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %16, i32 0, i32 1
  %18 = call i32 @lock_quick_lock(i32* %17)
  %19 = load %struct.lruhash*, %struct.lruhash** %5, align 8
  %20 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %19, i32 0, i32 2
  %21 = load %struct.lruhash_bin*, %struct.lruhash_bin** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.lruhash*, %struct.lruhash** %5, align 8
  %24 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = and i64 %22, %25
  %27 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %21, i64 %26
  store %struct.lruhash_bin* %27, %struct.lruhash_bin** %10, align 8
  %28 = load %struct.lruhash_bin*, %struct.lruhash_bin** %10, align 8
  %29 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %28, i32 0, i32 0
  %30 = call i32 @lock_quick_lock(i32* %29)
  %31 = load %struct.lruhash*, %struct.lruhash** %5, align 8
  %32 = load %struct.lruhash_bin*, %struct.lruhash_bin** %10, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call %struct.lruhash_entry* @bin_find_entry(%struct.lruhash* %31, %struct.lruhash_bin* %32, i64 %33, i8* %34)
  store %struct.lruhash_entry* %35, %struct.lruhash_entry** %9, align 8
  %36 = icmp ne %struct.lruhash_entry* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %4
  %38 = load %struct.lruhash*, %struct.lruhash** %5, align 8
  %39 = load %struct.lruhash_entry*, %struct.lruhash_entry** %9, align 8
  %40 = call i32 @lru_touch(%struct.lruhash* %38, %struct.lruhash_entry* %39)
  br label %41

41:                                               ; preds = %37, %4
  %42 = load %struct.lruhash*, %struct.lruhash** %5, align 8
  %43 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %42, i32 0, i32 1
  %44 = call i32 @lock_quick_unlock(i32* %43)
  %45 = load %struct.lruhash_entry*, %struct.lruhash_entry** %9, align 8
  %46 = icmp ne %struct.lruhash_entry* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.lruhash_entry*, %struct.lruhash_entry** %9, align 8
  %52 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %51, i32 0, i32 0
  %53 = call i32 @lock_rw_wrlock(i32* %52)
  br label %58

54:                                               ; preds = %47
  %55 = load %struct.lruhash_entry*, %struct.lruhash_entry** %9, align 8
  %56 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %55, i32 0, i32 0
  %57 = call i32 @lock_rw_rdlock(i32* %56)
  br label %58

58:                                               ; preds = %54, %50
  br label %59

59:                                               ; preds = %58, %41
  %60 = load %struct.lruhash_bin*, %struct.lruhash_bin** %10, align 8
  %61 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %60, i32 0, i32 0
  %62 = call i32 @lock_quick_unlock(i32* %61)
  %63 = load %struct.lruhash_entry*, %struct.lruhash_entry** %9, align 8
  ret %struct.lruhash_entry* %63
}

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_hash_compfunc(i32) #1

declare dso_local i32 @lock_quick_lock(i32*) #1

declare dso_local %struct.lruhash_entry* @bin_find_entry(%struct.lruhash*, %struct.lruhash_bin*, i64, i8*) #1

declare dso_local i32 @lru_touch(%struct.lruhash*, %struct.lruhash_entry*) #1

declare dso_local i32 @lock_quick_unlock(i32*) #1

declare dso_local i32 @lock_rw_wrlock(i32*) #1

declare dso_local i32 @lock_rw_rdlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
