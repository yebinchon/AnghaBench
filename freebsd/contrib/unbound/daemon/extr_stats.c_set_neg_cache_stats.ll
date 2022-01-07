; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_stats.c_set_neg_cache_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_stats.c_set_neg_cache_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ub_server_stats = type { i64, i64 }
%struct.val_env = type { %struct.val_neg_cache* }
%struct.val_neg_cache = type { i32, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"validator\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.worker*, %struct.ub_server_stats*, i32)* @set_neg_cache_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_neg_cache_stats(%struct.worker* %0, %struct.ub_server_stats* %1, i32 %2) #0 {
  %4 = alloca %struct.worker*, align 8
  %5 = alloca %struct.ub_server_stats*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.val_env*, align 8
  %9 = alloca %struct.val_neg_cache*, align 8
  store %struct.worker* %0, %struct.worker** %4, align 8
  store %struct.ub_server_stats* %1, %struct.ub_server_stats** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.worker*, %struct.worker** %4, align 8
  %11 = getelementptr inbounds %struct.worker, %struct.worker* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call i32 @modstack_find(i32* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %70

19:                                               ; preds = %3
  %20 = load %struct.worker*, %struct.worker** %4, align 8
  %21 = getelementptr inbounds %struct.worker, %struct.worker* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.val_env*
  store %struct.val_env* %28, %struct.val_env** %8, align 8
  %29 = load %struct.val_env*, %struct.val_env** %8, align 8
  %30 = getelementptr inbounds %struct.val_env, %struct.val_env* %29, i32 0, i32 0
  %31 = load %struct.val_neg_cache*, %struct.val_neg_cache** %30, align 8
  %32 = icmp ne %struct.val_neg_cache* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %19
  br label %70

34:                                               ; preds = %19
  %35 = load %struct.val_env*, %struct.val_env** %8, align 8
  %36 = getelementptr inbounds %struct.val_env, %struct.val_env* %35, i32 0, i32 0
  %37 = load %struct.val_neg_cache*, %struct.val_neg_cache** %36, align 8
  store %struct.val_neg_cache* %37, %struct.val_neg_cache** %9, align 8
  %38 = load %struct.val_neg_cache*, %struct.val_neg_cache** %9, align 8
  %39 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %38, i32 0, i32 0
  %40 = call i32 @lock_basic_lock(i32* %39)
  %41 = load %struct.val_neg_cache*, %struct.val_neg_cache** %9, align 8
  %42 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ub_server_stats*, %struct.ub_server_stats** %5, align 8
  %45 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.val_neg_cache*, %struct.val_neg_cache** %9, align 8
  %47 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ub_server_stats*, %struct.ub_server_stats** %5, align 8
  %50 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %34
  %54 = load %struct.worker*, %struct.worker** %4, align 8
  %55 = getelementptr inbounds %struct.worker, %struct.worker* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %53
  %62 = load %struct.val_neg_cache*, %struct.val_neg_cache** %9, align 8
  %63 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load %struct.val_neg_cache*, %struct.val_neg_cache** %9, align 8
  %65 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %61, %53, %34
  %67 = load %struct.val_neg_cache*, %struct.val_neg_cache** %9, align 8
  %68 = getelementptr inbounds %struct.val_neg_cache, %struct.val_neg_cache* %67, i32 0, i32 0
  %69 = call i32 @lock_basic_unlock(i32* %68)
  br label %70

70:                                               ; preds = %66, %33, %18
  ret void
}

declare dso_local i32 @modstack_find(i32*, i8*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
