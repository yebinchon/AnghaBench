; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_cache_touch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_cache_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_cache = type { i32 }
%struct.ub_packed_rrset_key = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.lruhash = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrset_cache_touch(%struct.rrset_cache* %0, %struct.ub_packed_rrset_key* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.rrset_cache*, align 8
  %6 = alloca %struct.ub_packed_rrset_key*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.lruhash*, align 8
  store %struct.rrset_cache* %0, %struct.rrset_cache** %5, align 8
  store %struct.ub_packed_rrset_key* %1, %struct.ub_packed_rrset_key** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.rrset_cache*, %struct.rrset_cache** %5, align 8
  %11 = getelementptr inbounds %struct.rrset_cache, %struct.rrset_cache* %10, i32 0, i32 0
  %12 = load i64, i64* %7, align 8
  %13 = call %struct.lruhash* @slabhash_gettable(i32* %11, i64 %12)
  store %struct.lruhash* %13, %struct.lruhash** %9, align 8
  %14 = load %struct.lruhash*, %struct.lruhash** %9, align 8
  %15 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %14, i32 0, i32 0
  %16 = call i32 @lock_quick_lock(i32* %15)
  %17 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %18 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @lock_rw_rdlock(i32* %19)
  %21 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %22 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %4
  %27 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %28 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.lruhash*, %struct.lruhash** %9, align 8
  %35 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %36 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %35, i32 0, i32 1
  %37 = call i32 @lru_touch(%struct.lruhash* %34, %struct.TYPE_2__* %36)
  br label %38

38:                                               ; preds = %33, %26, %4
  %39 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %40 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = call i32 @lock_rw_unlock(i32* %41)
  %43 = load %struct.lruhash*, %struct.lruhash** %9, align 8
  %44 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %43, i32 0, i32 0
  %45 = call i32 @lock_quick_unlock(i32* %44)
  ret void
}

declare dso_local %struct.lruhash* @slabhash_gettable(i32*, i64) #1

declare dso_local i32 @lock_quick_lock(i32*) #1

declare dso_local i32 @lock_rw_rdlock(i32*) #1

declare dso_local i32 @lru_touch(%struct.lruhash*, %struct.TYPE_2__*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @lock_quick_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
