; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_traverse.c_traverse_prefetcher.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_traverse.c_traverse_prefetcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i64 }

@ARC_FLAG_NOWAIT = common dso_local global i32 0, align 4
@ARC_FLAG_PREFETCH = common dso_local global i32 0, align 4
@ARC_FLAG_PRESCIENT_PREFETCH = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@zfs_pd_bytes_max = common dso_local global i64 0, align 8
@ZIO_PRIORITY_ASYNC_READ = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ZIO_FLAG_SPECULATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*, i8*)* @traverse_prefetcher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traverse_prefetcher(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i8*, i8** %13, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %14, align 8
  %18 = load i32, i32* @ARC_FLAG_NOWAIT, align 4
  %19 = load i32, i32* @ARC_FLAG_PREFETCH, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ARC_FLAG_PRESCIENT_PREFETCH, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %15, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load i32*, i32** %10, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %90

32:                                               ; preds = %6
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EINTR, align 4
  %39 = call i32 @SET_ERROR(i32 %38)
  store i32 %39, i32* %7, align 4
  br label %90

40:                                               ; preds = %32
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @prefetch_needed(%struct.TYPE_3__* %41, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %90

46:                                               ; preds = %40
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = call i32 @mutex_enter(i32* %48)
  br label %50

50:                                               ; preds = %63, %46
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @zfs_pd_bytes_max, align 8
  %60 = icmp sge i64 %58, %59
  br label %61

61:                                               ; preds = %55, %50
  %62 = phi i1 [ false, %50 ], [ %60, %55 ]
  br i1 %62, label %63, label %69

63:                                               ; preds = %61
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = call i32 @cv_wait(i32* %65, i32* %67)
  br label %50

69:                                               ; preds = %61
  %70 = load i32*, i32** %10, align 8
  %71 = call i64 @BP_GET_LSIZE(i32* %70)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, %71
  store i64 %75, i64* %73, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = call i32 @cv_broadcast(i32* %77)
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = call i32 @mutex_exit(i32* %80)
  %82 = load i32*, i32** %8, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* @ZIO_PRIORITY_ASYNC_READ, align 4
  %85 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %86 = load i32, i32* @ZIO_FLAG_SPECULATIVE, align 4
  %87 = or i32 %85, %86
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @arc_read(i32* null, i32* %82, i32* %83, i32* null, i32* null, i32 %84, i32 %87, i32* %15, i32* %88)
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %69, %45, %37, %31
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @prefetch_needed(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i64 @BP_GET_LSIZE(i32*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @arc_read(i32*, i32*, i32*, i32*, i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
