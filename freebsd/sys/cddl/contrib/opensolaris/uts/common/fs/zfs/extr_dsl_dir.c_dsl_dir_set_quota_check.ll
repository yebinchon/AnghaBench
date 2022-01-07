; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dir.c_dsl_dir_set_quota_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dir.c_dsl_dir_set_quota_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64 }

@FTAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"quota\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @dsl_dir_set_quota_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_dir_set_quota_check(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @dmu_tx_pool(i32* %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FTAG, align 4
  %21 = call i32 @dsl_dataset_hold(i32* %16, i32 %19, i32 %20, %struct.TYPE_10__** %8)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %100

26:                                               ; preds = %2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dsl_prop_predict(%struct.TYPE_11__* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i64* %11)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %26
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = load i32, i32* @FTAG, align 4
  %42 = call i32 @dsl_dataset_rele(%struct.TYPE_10__* %40, i32 %41)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %100

44:                                               ; preds = %26
  %45 = load i64, i64* %11, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = load i32, i32* @FTAG, align 4
  %50 = call i32 @dsl_dataset_rele(%struct.TYPE_10__* %48, i32 %49)
  store i32 0, i32* %3, align 4
  br label %100

51:                                               ; preds = %44
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = call i32 @mutex_enter(i32* %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = call i64 @dsl_dir_space_towrite(%struct.TYPE_11__* %59)
  store i64 %60, i64* %10, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = call i64 @dmu_tx_is_syncing(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %51
  %65 = load i64, i64* %10, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %64, %51
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = call %struct.TYPE_12__* @dsl_dir_phys(%struct.TYPE_11__* %71)
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %68, %74
  br i1 %75, label %87, label %76

76:                                               ; preds = %67
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = call %struct.TYPE_12__* @dsl_dir_phys(%struct.TYPE_11__* %80)
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = add nsw i64 %83, %84
  %86 = icmp slt i64 %77, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %76, %67
  %88 = load i32, i32* @ENOSPC, align 4
  %89 = call i32 @SET_ERROR(i32 %88)
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %87, %76, %64
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = call i32 @mutex_exit(i32* %94)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %97 = load i32, i32* @FTAG, align 4
  %98 = call i32 @dsl_dataset_rele(%struct.TYPE_10__* %96, i32 %97)
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %90, %47, %39, %24
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32* @dmu_tx_pool(i32*) #1

declare dso_local i32 @dsl_dataset_hold(i32*, i32, i32, %struct.TYPE_10__**) #1

declare dso_local i32 @dsl_prop_predict(%struct.TYPE_11__*, i8*, i32, i32, i64*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @dsl_dir_space_towrite(%struct.TYPE_11__*) #1

declare dso_local i64 @dmu_tx_is_syncing(i32*) #1

declare dso_local %struct.TYPE_12__* @dsl_dir_phys(%struct.TYPE_11__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
