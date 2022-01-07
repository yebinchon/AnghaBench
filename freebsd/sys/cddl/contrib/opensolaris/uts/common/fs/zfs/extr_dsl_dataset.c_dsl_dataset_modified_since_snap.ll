; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_modified_since_snap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_modified_since_snap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }

@B_FALSE = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_dataset_modified_since_snap(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @dsl_pool_config_held(i32* %15)
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = icmp eq %struct.TYPE_16__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @B_FALSE, align 4
  store i32 %21, i32* %3, align 4
  br label %68

22:                                               ; preds = %2
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i32, i32* @RW_READER, align 4
  %26 = load i32, i32* @FTAG, align 4
  %27 = call i32 @rrw_enter(i32* %24, i32 %25, i32 %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = call %struct.TYPE_18__* @dsl_dataset_get_blkptr(%struct.TYPE_16__* %28)
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %7, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* @FTAG, align 4
  %35 = call i32 @rrw_exit(i32* %33, i32 %34)
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = call %struct.TYPE_17__* @dsl_dataset_phys(%struct.TYPE_16__* %37)
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %36, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %22
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = call i64 @dmu_objset_from_ds(%struct.TYPE_16__* %43, %struct.TYPE_15__** %8)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @B_TRUE, align 4
  store i32 %47, i32* %3, align 4
  br label %68

48:                                               ; preds = %42
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = call i64 @dmu_objset_from_ds(%struct.TYPE_16__* %49, %struct.TYPE_15__** %9)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @B_TRUE, align 4
  store i32 %53, i32* %3, align 4
  br label %68

54:                                               ; preds = %48
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = call i64 @bcmp(i32* %58, i32* %62, i32 4)
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %3, align 4
  br label %68

66:                                               ; preds = %22
  %67 = load i32, i32* @B_FALSE, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %54, %52, %46, %20
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_pool_config_held(i32*) #1

declare dso_local i32 @rrw_enter(i32*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @dsl_dataset_get_blkptr(%struct.TYPE_16__*) #1

declare dso_local i32 @rrw_exit(i32*, i32) #1

declare dso_local %struct.TYPE_17__* @dsl_dataset_phys(%struct.TYPE_16__*) #1

declare dso_local i64 @dmu_objset_from_ds(%struct.TYPE_16__*, %struct.TYPE_15__**) #1

declare dso_local i64 @bcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
