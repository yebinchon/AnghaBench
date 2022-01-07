; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zil.c_zil_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zil.c_zil_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_12__*, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@ZIL_MIN_BLKSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*)* @zil_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @zil_create(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @txg_wait_synced(i32 %16, i32 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %7, align 4
  %36 = call i64 @BP_IS_HOLE(i32* %7)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %1
  %39 = call i64 @BP_SHOULD_BYTESWAP(i32* %7)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %87

41:                                               ; preds = %38, %1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = call i32* @dmu_tx_create(%struct.TYPE_12__* %44)
  store i32* %45, i32** %6, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @TXG_WAIT, align 4
  %48 = call i32 @dmu_tx_assign(i32* %46, i32 %47)
  %49 = call i32 @VERIFY0(i32 %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = call i32 @dmu_objset_ds(%struct.TYPE_12__* %52)
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @dsl_dataset_dirty(i32 %53, i32* %54)
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @dmu_tx_get_txg(i32* %56)
  store i32 %57, i32* %5, align 4
  %58 = call i64 @BP_IS_HOLE(i32* %7)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %41
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @zio_free(i32 %63, i32 %64, i32* %7)
  %66 = call i32 @BP_ZERO(i32* %7)
  br label %67

67:                                               ; preds = %60, %41
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @ZIL_MIN_BLKSZ, align 4
  %80 = call i32 @zio_alloc_zil(i32 %70, i32 %77, i32 %78, i32* %7, i32* null, i32 %79, i32* %9)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %67
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %85 = call i32 @zil_init_log_chain(%struct.TYPE_10__* %84, i32* %7)
  br label %86

86:                                               ; preds = %83, %67
  br label %87

87:                                               ; preds = %86, %38
  %88 = load i32, i32* %8, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32* @zil_alloc_lwb(%struct.TYPE_10__* %91, i32* %7, i32 %92, i32 %93)
  store i32* %94, i32** %4, align 8
  br label %95

95:                                               ; preds = %90, %87
  %96 = load i32*, i32** %6, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @dmu_tx_commit(i32* %99)
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @txg_wait_synced(i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %98, %95
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  %109 = call i64 @bcmp(i32* %7, i32* %108, i32 4)
  %110 = icmp eq i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @ASSERT(i32 %111)
  %113 = load i32*, i32** %4, align 8
  ret i32* %113
}

declare dso_local i32 @txg_wait_synced(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @BP_IS_HOLE(i32*) #1

declare dso_local i64 @BP_SHOULD_BYTESWAP(i32*) #1

declare dso_local i32* @dmu_tx_create(%struct.TYPE_12__*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dsl_dataset_dirty(i32, i32*) #1

declare dso_local i32 @dmu_objset_ds(%struct.TYPE_12__*) #1

declare dso_local i32 @dmu_tx_get_txg(i32*) #1

declare dso_local i32 @zio_free(i32, i32, i32*) #1

declare dso_local i32 @BP_ZERO(i32*) #1

declare dso_local i32 @zio_alloc_zil(i32, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @zil_init_log_chain(%struct.TYPE_10__*, i32*) #1

declare dso_local i32* @zil_alloc_lwb(%struct.TYPE_10__*, i32*, i32, i32) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i64 @bcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
