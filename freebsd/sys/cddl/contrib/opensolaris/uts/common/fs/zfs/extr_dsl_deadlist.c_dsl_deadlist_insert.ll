; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_deadlist.c_dsl_deadlist_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_deadlist.c_dsl_deadlist_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_20__*, i32, i32, i32, i64 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }

@AVL_BEFORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_deadlist_insert(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_22__, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @bpobj_enqueue(i32* %16, %struct.TYPE_23__* %17, i32* %18)
  br label %94

20:                                               ; preds = %3
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = call i32 @mutex_enter(i32* %22)
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %25 = call i32 @dsl_deadlist_load_tree(%struct.TYPE_21__* %24)
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @dmu_buf_will_dirty(i32 %28, i32* %29)
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dmu_objset_spa(i32 %33)
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %36 = call i64 @bp_get_dsize_sync(i32 %34, %struct.TYPE_23__* %35)
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %36
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %46 = call i64 @BP_GET_PSIZE(%struct.TYPE_23__* %45)
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %46
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %56 = call i64 @BP_GET_UCSIZE(%struct.TYPE_23__* %55)
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %56
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 1
  %71 = call %struct.TYPE_22__* @avl_find(i32* %70, %struct.TYPE_22__* %7, i32* %9)
  store %struct.TYPE_22__* %71, %struct.TYPE_22__** %8, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %73 = icmp eq %struct.TYPE_22__* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %20
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @AVL_BEFORE, align 4
  %79 = call %struct.TYPE_22__* @avl_nearest(i32* %76, i32 %77, i32 %78)
  store %struct.TYPE_22__* %79, %struct.TYPE_22__** %8, align 8
  br label %85

80:                                               ; preds = %20
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %84 = call %struct.TYPE_22__* @AVL_PREV(i32* %82, %struct.TYPE_22__* %83)
  store %struct.TYPE_22__* %84, %struct.TYPE_22__** %8, align 8
  br label %85

85:                                               ; preds = %80, %74
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @dle_enqueue(%struct.TYPE_21__* %86, %struct.TYPE_22__* %87, %struct.TYPE_23__* %88, i32* %89)
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = call i32 @mutex_exit(i32* %92)
  br label %94

94:                                               ; preds = %85, %14
  ret void
}

declare dso_local i32 @bpobj_enqueue(i32*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @dsl_deadlist_load_tree(%struct.TYPE_21__*) #1

declare dso_local i32 @dmu_buf_will_dirty(i32, i32*) #1

declare dso_local i64 @bp_get_dsize_sync(i32, %struct.TYPE_23__*) #1

declare dso_local i32 @dmu_objset_spa(i32) #1

declare dso_local i64 @BP_GET_PSIZE(%struct.TYPE_23__*) #1

declare dso_local i64 @BP_GET_UCSIZE(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @avl_find(i32*, %struct.TYPE_22__*, i32*) #1

declare dso_local %struct.TYPE_22__* @avl_nearest(i32*, i32, i32) #1

declare dso_local %struct.TYPE_22__* @AVL_PREV(i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @dle_enqueue(%struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
