; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_snap_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_snap_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32 }

@DS_FLAG_CI_DATASET = common dso_local global i32 0, align 4
@MT_NORMALIZE = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@DD_FIELD_SNAPSHOT_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_dataset_snap_remove(%struct.TYPE_9__* %0, i8* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %9, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = call %struct.TYPE_11__* @dsl_dataset_phys(%struct.TYPE_9__* %20)
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = call i32 @dsl_dir_snap_cmtime_update(%struct.TYPE_10__* %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = call %struct.TYPE_11__* @dsl_dataset_phys(%struct.TYPE_9__* %28)
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DS_FLAG_CI_DATASET, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* @MT_NORMALIZE, align 4
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %35, %4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @zap_remove_norm(i32* %38, i32 %39, i8* %40, i32 %41, i32* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @ENOTSUP, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %37
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @MT_NORMALIZE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @zap_remove(i32* %53, i32 %54, i8* %55, i32* %56)
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %52, %47, %37
  %59 = load i32, i32* %12, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load i64, i64* %8, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load i32, i32* @DD_FIELD_SNAPSHOT_COUNT, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @dsl_fs_ss_count_adjust(%struct.TYPE_10__* %67, i32 -1, i32 %68, i32* %69)
  br label %71

71:                                               ; preds = %64, %61, %58
  %72 = load i32, i32* %12, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_11__* @dsl_dataset_phys(%struct.TYPE_9__*) #1

declare dso_local i32 @dsl_dir_snap_cmtime_update(%struct.TYPE_10__*) #1

declare dso_local i32 @zap_remove_norm(i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @zap_remove(i32*, i32, i8*, i32*) #1

declare dso_local i32 @dsl_fs_ss_count_adjust(%struct.TYPE_10__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
