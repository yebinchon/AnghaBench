; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_swap_remap_deadlists.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_swap_remap_deadlists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_11__*, i32*)* @dsl_dataset_swap_remap_deadlists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_dataset_swap_remap_deadlists(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call %struct.TYPE_10__* @dmu_tx_pool(i32* %10)
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %9, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %13 = call i32 @dsl_pool_sync_context(%struct.TYPE_10__* %12)
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = call i64 @dsl_dataset_get_remap_deadlist_object(%struct.TYPE_11__* %15)
  store i64 %16, i64* %7, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = call i64 @dsl_dataset_get_remap_deadlist_object(%struct.TYPE_11__* %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = call i32 @dsl_deadlist_close(i32* %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @dsl_dataset_unset_remap_deadlist_object(%struct.TYPE_11__* %25, i32* %26)
  br label %28

28:                                               ; preds = %21, %3
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = call i32 @dsl_deadlist_close(i32* %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @dsl_dataset_unset_remap_deadlist_object(%struct.TYPE_11__* %35, i32* %36)
  br label %38

38:                                               ; preds = %31, %28
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @dsl_dataset_set_remap_deadlist_object(%struct.TYPE_11__* %42, i64 %43, i32* %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @dsl_deadlist_open(i32* %47, i32 %50, i64 %51)
  br label %53

53:                                               ; preds = %41, %38
  %54 = load i64, i64* %8, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @dsl_dataset_set_remap_deadlist_object(%struct.TYPE_11__* %57, i64 %58, i32* %59)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @dsl_deadlist_open(i32* %62, i32 %65, i64 %66)
  br label %68

68:                                               ; preds = %56, %53
  ret void
}

declare dso_local %struct.TYPE_10__* @dmu_tx_pool(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_pool_sync_context(%struct.TYPE_10__*) #1

declare dso_local i64 @dsl_dataset_get_remap_deadlist_object(%struct.TYPE_11__*) #1

declare dso_local i32 @dsl_deadlist_close(i32*) #1

declare dso_local i32 @dsl_dataset_unset_remap_deadlist_object(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @dsl_dataset_set_remap_deadlist_object(%struct.TYPE_11__*, i64, i32*) #1

declare dso_local i32 @dsl_deadlist_open(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
