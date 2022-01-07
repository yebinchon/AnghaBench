; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_tx.c_dmu_tx_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_tx.c_dmu_tx_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_9__*, i32, i64, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32* }

@zfs_dirty_data_max = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmu_tx_wait(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 5
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %3, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %4, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = call i32 @dsl_pool_config_held(%struct.TYPE_10__* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = call i32 @mutex_enter(i32* %35)
  br label %37

37:                                               ; preds = %43, %33
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @zfs_dirty_data_max, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = call i32 @cv_wait(i32* %45, i32* %47)
  br label %37

49:                                               ; preds = %37
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %5, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = call i32 @mutex_exit(i32* %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @dmu_tx_delay(%struct.TYPE_12__* %56, i64 %57)
  %59 = load i64, i64* @B_FALSE, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 4
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* @B_TRUE, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  br label %123

65:                                               ; preds = %1
  %66 = load i32*, i32** %3, align 8
  %67 = call i64 @spa_suspended(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69, %65
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = load i32*, i32** %3, align 8
  %77 = call i64 @spa_last_synced_txg(i32* %76)
  %78 = add nsw i64 %77, 1
  %79 = call i32 @txg_wait_synced(%struct.TYPE_10__* %75, i64 %78)
  br label %122

80:                                               ; preds = %69
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = icmp ne %struct.TYPE_9__* %83, null
  br i1 %84, label %85, label %115

85:                                               ; preds = %80
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  store %struct.TYPE_11__* %90, %struct.TYPE_11__** %6, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = call i32 @mutex_enter(i32* %92)
  br label %94

94:                                               ; preds = %103, %85
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %100, 1
  %102 = icmp eq i64 %97, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %94
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = call i32 @cv_wait(i32* %105, i32* %107)
  br label %94

109:                                              ; preds = %94
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = call i32 @mutex_exit(i32* %111)
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %114, align 8
  br label %121

115:                                              ; preds = %80
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = load i32*, i32** %3, align 8
  %118 = call i64 @spa_last_synced_txg(i32* %117)
  %119 = add nsw i64 %118, 1
  %120 = call i32 @txg_wait_synced(%struct.TYPE_10__* %116, i64 %119)
  br label %121

121:                                              ; preds = %115, %109
  br label %122

122:                                              ; preds = %121, %74
  br label %123

123:                                              ; preds = %122, %49
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_pool_config_held(%struct.TYPE_10__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @dmu_tx_delay(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @spa_suspended(i32*) #1

declare dso_local i32 @txg_wait_synced(%struct.TYPE_10__*, i64) #1

declare dso_local i64 @spa_last_synced_txg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
