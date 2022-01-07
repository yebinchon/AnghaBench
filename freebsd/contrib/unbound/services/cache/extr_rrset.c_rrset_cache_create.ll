; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_cache_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_cache_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_cache = type { i32 }
%struct.config_file = type { i64, i64 }
%struct.alloc_cache = type { i32 }

@HASH_DEFAULT_SLABS = common dso_local global i64 0, align 8
@HASH_DEFAULT_STARTARRAY = common dso_local global i64 0, align 8
@HASH_DEFAULT_MAXMEM = common dso_local global i64 0, align 8
@ub_rrset_sizefunc = common dso_local global i32 0, align 4
@ub_rrset_compare = common dso_local global i32 0, align 4
@ub_rrset_key_delete = common dso_local global i32 0, align 4
@rrset_data_delete = common dso_local global i32 0, align 4
@rrset_markdel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rrset_cache* @rrset_cache_create(%struct.config_file* %0, %struct.alloc_cache* %1) #0 {
  %3 = alloca %struct.config_file*, align 8
  %4 = alloca %struct.alloc_cache*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rrset_cache*, align 8
  store %struct.config_file* %0, %struct.config_file** %3, align 8
  store %struct.alloc_cache* %1, %struct.alloc_cache** %4, align 8
  %9 = load %struct.config_file*, %struct.config_file** %3, align 8
  %10 = icmp ne %struct.config_file* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.config_file*, %struct.config_file** %3, align 8
  %13 = getelementptr inbounds %struct.config_file, %struct.config_file* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  br label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @HASH_DEFAULT_SLABS, align 8
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i64 [ %14, %11 ], [ %16, %15 ]
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* @HASH_DEFAULT_STARTARRAY, align 8
  store i64 %19, i64* %6, align 8
  %20 = load %struct.config_file*, %struct.config_file** %3, align 8
  %21 = icmp ne %struct.config_file* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.config_file*, %struct.config_file** %3, align 8
  %24 = getelementptr inbounds %struct.config_file, %struct.config_file* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  br label %28

26:                                               ; preds = %17
  %27 = load i64, i64* @HASH_DEFAULT_MAXMEM, align 8
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i64 [ %25, %22 ], [ %27, %26 ]
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* @ub_rrset_sizefunc, align 4
  %34 = load i32, i32* @ub_rrset_compare, align 4
  %35 = load i32, i32* @ub_rrset_key_delete, align 4
  %36 = load i32, i32* @rrset_data_delete, align 4
  %37 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %38 = call i64 @slabhash_create(i64 %30, i64 %31, i64 %32, i32 %33, i32 %34, i32 %35, i32 %36, %struct.alloc_cache* %37)
  %39 = inttoptr i64 %38 to %struct.rrset_cache*
  store %struct.rrset_cache* %39, %struct.rrset_cache** %8, align 8
  %40 = load %struct.rrset_cache*, %struct.rrset_cache** %8, align 8
  %41 = getelementptr inbounds %struct.rrset_cache, %struct.rrset_cache* %40, i32 0, i32 0
  %42 = call i32 @slabhash_setmarkdel(i32* %41, i32* @rrset_markdel)
  %43 = load %struct.rrset_cache*, %struct.rrset_cache** %8, align 8
  ret %struct.rrset_cache* %43
}

declare dso_local i64 @slabhash_create(i64, i64, i64, i32, i32, i32, i32, %struct.alloc_cache*) #1

declare dso_local i32 @slabhash_setmarkdel(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
