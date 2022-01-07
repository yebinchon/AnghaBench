; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_dsl_scan_prefetch_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_dsl_scan_prefetch_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@zfs_top_maxinflight = common dso_local global i32 0, align 4
@ARC_FLAG_NOWAIT = common dso_local global i32 0, align 4
@ARC_FLAG_PRESCIENT_PREFETCH = common dso_local global i32 0, align 4
@ARC_FLAG_PREFETCH = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ZIO_FLAG_SCAN_THREAD = common dso_local global i32 0, align 4
@dsl_scan_prefetch_cb = common dso_local global i32 0, align 4
@ZIO_PRIORITY_SCRUB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dsl_scan_prefetch_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_scan_prefetch_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %3, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %4, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %5, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @zfs_top_maxinflight, align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %80, %1
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %119

31:                                               ; preds = %25
  %32 = load i32, i32* @ARC_FLAG_NOWAIT, align 4
  %33 = load i32, i32* @ARC_FLAG_PRESCIENT_PREFETCH, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @ARC_FLAG_PREFETCH, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %38 = load i32, i32* @ZIO_FLAG_SCAN_THREAD, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = call i32 @mutex_enter(i32* %41)
  br label %43

43:                                               ; preds = %65, %31
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = call i64 @avl_numnodes(i32* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sge i64 %56, %59
  br label %61

61:                                               ; preds = %53, %48
  %62 = phi i1 [ true, %48 ], [ %60, %53 ]
  br label %63

63:                                               ; preds = %61, %43
  %64 = phi i1 [ false, %43 ], [ %62, %61 ]
  br i1 %64, label %65, label %71

65:                                               ; preds = %63
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = call i32 @cv_wait(i32* %67, i32* %69)
  br label %43

71:                                               ; preds = %63
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = call i32 @mutex_exit(i32* %78)
  br label %119

80:                                               ; preds = %71
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = call %struct.TYPE_14__* @avl_first(i32* %82)
  store %struct.TYPE_14__* %83, %struct.TYPE_14__** %7, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  %86 = call i64 @BP_GET_PSIZE(i32* %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, %86
  store i64 %90, i64* %88, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %94 = call i32 @avl_remove(i32* %92, %struct.TYPE_14__* %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = call i32 @mutex_exit(i32* %96)
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 2
  %108 = load i32, i32* @dsl_scan_prefetch_cb, align 4
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @ZIO_PRIORITY_SCRUB, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = call i32 @arc_read(i32 %100, %struct.TYPE_13__* %105, i32* %107, i32 %108, i32 %111, i32 %112, i32 %113, i32* %8, i32* %115)
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %118 = call i32 @kmem_free(%struct.TYPE_14__* %117, i32 12)
  br label %25

119:                                              ; preds = %76, %25
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @ASSERT(i64 %122)
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  %126 = call i32 @mutex_enter(i32* %125)
  br label %127

127:                                              ; preds = %132, %119
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = call %struct.TYPE_14__* @avl_first(i32* %129)
  store %struct.TYPE_14__* %130, %struct.TYPE_14__** %7, align 8
  %131 = icmp ne %struct.TYPE_14__* %130, null
  br i1 %131, label %132, label %144

132:                                              ; preds = %127
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %136 = call i32 @avl_remove(i32* %134, %struct.TYPE_14__* %135)
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %141 = call i32 @scan_prefetch_ctx_rele(i32 %139, %struct.TYPE_15__* %140)
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %143 = call i32 @kmem_free(%struct.TYPE_14__* %142, i32 12)
  br label %127

144:                                              ; preds = %127
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = call i64 @avl_numnodes(i32* %146)
  %148 = call i32 @ASSERT0(i64 %147)
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = call i32 @mutex_exit(i32* %150)
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @avl_numnodes(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local %struct.TYPE_14__* @avl_first(i32*) #1

declare dso_local i64 @BP_GET_PSIZE(i32*) #1

declare dso_local i32 @avl_remove(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @arc_read(i32, %struct.TYPE_13__*, i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ASSERT(i64) #1

declare dso_local i32 @scan_prefetch_ctx_rele(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @ASSERT0(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
