; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_objset_from_ds.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_objset_from_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@RW_READER = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_objset_from_ds(%struct.TYPE_9__* %0, i32** %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32** %1, i32*** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @dsl_pool_config_held(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = call i64 @dsl_dataset_long_held(%struct.TYPE_9__* %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %14, %2
  %19 = phi i1 [ true, %2 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = call i32 @mutex_enter(i32* %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %64

29:                                               ; preds = %18
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  %32 = load i32, i32* @RW_READER, align 4
  %33 = load i32, i32* @FTAG, align 4
  %34 = call i32 @rrw_enter(i32* %31, i32 %32, i32 %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = call i32 @dsl_dataset_get_spa(%struct.TYPE_9__* %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = call i32 @dsl_dataset_get_blkptr(%struct.TYPE_9__* %38)
  %40 = call i32 @dmu_objset_open_impl(i32 %36, %struct.TYPE_9__* %37, i32 %39, i32** %6)
  store i32 %40, i32* %5, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = load i32, i32* @FTAG, align 4
  %44 = call i32 @rrw_exit(i32* %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %29
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = call i32 @mutex_enter(i32* %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 @ASSERT(i32 %55)
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = call i32 @mutex_exit(i32* %61)
  br label %63

63:                                               ; preds = %47, %29
  br label %64

64:                                               ; preds = %63, %18
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32**, i32*** %4, align 8
  store i32* %67, i32** %68, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = call i32 @mutex_exit(i32* %70)
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @dsl_pool_config_held(i32) #1

declare dso_local i64 @dsl_dataset_long_held(%struct.TYPE_9__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @rrw_enter(i32*, i32, i32) #1

declare dso_local i32 @dmu_objset_open_impl(i32, %struct.TYPE_9__*, i32, i32**) #1

declare dso_local i32 @dsl_dataset_get_spa(%struct.TYPE_9__*) #1

declare dso_local i32 @dsl_dataset_get_blkptr(%struct.TYPE_9__*) #1

declare dso_local i32 @rrw_exit(i32*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
