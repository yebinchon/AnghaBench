; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_traverse.c_traverse_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_traverse.c_traverse_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@TRAVERSE_HARD = common dso_local global i32 0, align 4
@DMU_OT_DSL_DATASET = common dso_local global i64 0, align 8
@FTAG = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @traverse_pool(i32* %0, i64 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_10__, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call %struct.TYPE_9__* @spa_get_dsl(i32* %20)
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %13, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %14, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @TRAVERSE_HARD, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %15, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @spa_get_rootblkptr(i32* %29)
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @traverse_impl(i32* %28, i32* null, i32 0, i32 %30, i64 %31, i32* null, i32 %32, i32 %33, i8* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %5
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %6, align 4
  br label %118

40:                                               ; preds = %5
  store i64 1, i64* %16, align 8
  br label %41

41:                                               ; preds = %106, %40
  %42 = load i32, i32* %12, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %111

44:                                               ; preds = %41
  %45 = load i32*, i32** %14, align 8
  %46 = load i64, i64* %16, align 8
  %47 = call i32 @dmu_object_info(i32* %45, i64 %46, %struct.TYPE_10__* %17)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %106

54:                                               ; preds = %50
  br label %111

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DMU_OT_DSL_DATASET, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %105

60:                                               ; preds = %55
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %19, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %63 = load i32, i32* @FTAG, align 4
  %64 = call i32 @dsl_pool_config_enter(%struct.TYPE_9__* %62, i32 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %66 = load i64, i64* %16, align 8
  %67 = load i32, i32* @FTAG, align 4
  %68 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_9__* %65, i64 %66, i32 %67, i32** %18)
  store i32 %68, i32* %12, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %70 = load i32, i32* @FTAG, align 4
  %71 = call i32 @dsl_pool_config_exit(%struct.TYPE_9__* %69, i32 %70)
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %60
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %106

78:                                               ; preds = %74
  br label %111

79:                                               ; preds = %60
  %80 = load i32*, i32** %18, align 8
  %81 = call %struct.TYPE_11__* @dsl_dataset_phys(i32* %80)
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %19, align 8
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load i32*, i32** %18, align 8
  %88 = call %struct.TYPE_11__* @dsl_dataset_phys(i32* %87)
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %19, align 8
  br label %91

91:                                               ; preds = %86, %79
  %92 = load i32*, i32** %18, align 8
  %93 = load i64, i64* %19, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 @traverse_dataset(i32* %92, i64 %93, i32 %94, i32 %95, i8* %96)
  store i32 %97, i32* %12, align 4
  %98 = load i32*, i32** %18, align 8
  %99 = load i32, i32* @FTAG, align 4
  %100 = call i32 @dsl_dataset_rele(i32* %98, i32 %99)
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  br label %111

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %104, %55
  br label %106

106:                                              ; preds = %105, %77, %53
  %107 = load i32*, i32** %14, align 8
  %108 = load i32, i32* @B_FALSE, align 4
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @dmu_object_next(i32* %107, i64* %16, i32 %108, i64 %109)
  store i32 %110, i32* %12, align 4
  br label %41

111:                                              ; preds = %103, %78, %54, %41
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @ESRCH, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i32 0, i32* %12, align 4
  br label %116

116:                                              ; preds = %115, %111
  %117 = load i32, i32* %12, align 4
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %116, %38
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local %struct.TYPE_9__* @spa_get_dsl(i32*) #1

declare dso_local i32 @traverse_impl(i32*, i32*, i32, i32, i64, i32*, i32, i32, i8*) #1

declare dso_local i32 @spa_get_rootblkptr(i32*) #1

declare dso_local i32 @dmu_object_info(i32*, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @dsl_pool_config_enter(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @dsl_dataset_hold_obj(%struct.TYPE_9__*, i64, i32, i32**) #1

declare dso_local i32 @dsl_pool_config_exit(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.TYPE_11__* @dsl_dataset_phys(i32*) #1

declare dso_local i32 @traverse_dataset(i32*, i64, i32, i32, i8*) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

declare dso_local i32 @dmu_object_next(i32*, i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
