; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kcache.c_key_cache_obtain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kcache.c_key_cache_obtain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_entry_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.key_cache = type { i32 }
%struct.regional = type { i32 }
%struct.key_entry_data = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key_entry_key* @key_cache_obtain(%struct.key_cache* %0, i32* %1, i64 %2, i32 %3, %struct.regional* %4, i64 %5) #0 {
  %7 = alloca %struct.key_entry_key*, align 8
  %8 = alloca %struct.key_cache*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.regional*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.key_entry_key*, align 8
  %15 = alloca %struct.key_entry_data*, align 8
  %16 = alloca %struct.key_entry_key*, align 8
  store %struct.key_cache* %0, %struct.key_cache** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.regional* %4, %struct.regional** %12, align 8
  store i64 %5, i64* %13, align 8
  br label %17

17:                                               ; preds = %6, %55
  %18 = load %struct.key_cache*, %struct.key_cache** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call %struct.key_entry_key* @key_cache_search(%struct.key_cache* %18, i32* %19, i64 %20, i32 %21, i32 0)
  store %struct.key_entry_key* %22, %struct.key_entry_key** %14, align 8
  %23 = load %struct.key_entry_key*, %struct.key_entry_key** %14, align 8
  %24 = icmp ne %struct.key_entry_key* %23, null
  br i1 %24, label %25, label %50

25:                                               ; preds = %17
  %26 = load %struct.key_entry_key*, %struct.key_entry_key** %14, align 8
  %27 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.key_entry_data*
  store %struct.key_entry_data* %30, %struct.key_entry_data** %15, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load %struct.key_entry_data*, %struct.key_entry_data** %15, align 8
  %33 = getelementptr inbounds %struct.key_entry_data, %struct.key_entry_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sle i64 %31, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %25
  %37 = load %struct.key_entry_key*, %struct.key_entry_key** %14, align 8
  %38 = load %struct.regional*, %struct.regional** %12, align 8
  %39 = call %struct.key_entry_key* @key_entry_copy_toregion(%struct.key_entry_key* %37, %struct.regional* %38)
  store %struct.key_entry_key* %39, %struct.key_entry_key** %16, align 8
  %40 = load %struct.key_entry_key*, %struct.key_entry_key** %14, align 8
  %41 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @lock_rw_unlock(i32* %42)
  %44 = load %struct.key_entry_key*, %struct.key_entry_key** %16, align 8
  store %struct.key_entry_key* %44, %struct.key_entry_key** %7, align 8
  br label %58

45:                                               ; preds = %25
  %46 = load %struct.key_entry_key*, %struct.key_entry_key** %14, align 8
  %47 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @lock_rw_unlock(i32* %48)
  br label %50

50:                                               ; preds = %45, %17
  %51 = load i32*, i32** %9, align 8
  %52 = call i64 @dname_is_root(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %57

55:                                               ; preds = %50
  %56 = call i32 @dname_remove_label(i32** %9, i64* %10)
  br label %17

57:                                               ; preds = %54
  store %struct.key_entry_key* null, %struct.key_entry_key** %7, align 8
  br label %58

58:                                               ; preds = %57, %36
  %59 = load %struct.key_entry_key*, %struct.key_entry_key** %7, align 8
  ret %struct.key_entry_key* %59
}

declare dso_local %struct.key_entry_key* @key_cache_search(%struct.key_cache*, i32*, i64, i32, i32) #1

declare dso_local %struct.key_entry_key* @key_entry_copy_toregion(%struct.key_entry_key*, %struct.regional*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i64 @dname_is_root(i32*) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
