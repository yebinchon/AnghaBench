; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_scan_exec_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_scan_exec_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__*, i32, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, i64, i32, i32 }
%struct.TYPE_14__ = type { i64, i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@B_FALSE = common dso_local global i32 0, align 4
@ZIO_FLAG_RESILVER = common dso_local global i32 0, align 4
@zfs_resilver_delay = common dso_local global i32 0, align 4
@ZIO_FLAG_SCRUB = common dso_local global i32 0, align 4
@zfs_scrub_delay = common dso_local global i32 0, align 4
@zfs_scan_idle = common dso_local global i64 0, align 8
@dsl_scan_scrub_done = common dso_local global i32 0, align 4
@ZIO_PRIORITY_SCRUB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32*, i32, i32*, %struct.TYPE_14__*)* @scan_exec_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_exec_io(%struct.TYPE_15__* %0, i32* %1, i32 %2, i32* %3, %struct.TYPE_14__* %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %10, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %11, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %12, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @BP_GET_PSIZE(i32* %23)
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load i32, i32* @B_FALSE, align 4
  %27 = call i32* @abd_alloc_for_io(i64 %25, i32 %26)
  store i32* %27, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %29 = icmp eq %struct.TYPE_14__* %28, null
  br i1 %29, label %30, label %58

30:                                               ; preds = %5
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = call i32 @mutex_enter(i32* %32)
  br label %34

34:                                               ; preds = %42, %30
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = call i32 @cv_wait(i32* %44, i32* %46)
  br label %34

48:                                               ; preds = %34
  %49 = load i32*, i32** %7, align 8
  %50 = call i64 @BP_GET_PSIZE(i32* %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, %50
  store i64 %54, i64* %52, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = call i32 @mutex_exit(i32* %56)
  br label %87

58:                                               ; preds = %5
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i32* %62, i32** %16, align 8
  %63 = load i32*, i32** %16, align 8
  %64 = call i32 @mutex_enter(i32* %63)
  br label %65

65:                                               ; preds = %73, %58
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %68, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = load i32*, i32** %16, align 8
  %77 = call i32 @cv_wait(i32* %75, i32* %76)
  br label %65

78:                                               ; preds = %65
  %79 = load i32*, i32** %7, align 8
  %80 = call i64 @BP_GET_PSIZE(i32* %79)
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, %80
  store i64 %84, i64* %82, align 8
  %85 = load i32*, i32** %16, align 8
  %86 = call i32 @mutex_exit(i32* %85)
  br label %87

87:                                               ; preds = %78, %48
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @ZIO_FLAG_RESILVER, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @zfs_resilver_delay, align 4
  store i32 %93, i32* %15, align 4
  br label %100

94:                                               ; preds = %87
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @ZIO_FLAG_SCRUB, align 4
  %97 = and i32 %95, %96
  %98 = call i32 @ASSERT(i32 %97)
  %99 = load i32, i32* @zfs_scrub_delay, align 4
  store i32 %99, i32* %15, align 4
  br label %100

100:                                              ; preds = %94, %92
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %100
  %104 = call i64 (...) @ddi_get_lbolt64()
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %104, %107
  %109 = load i64, i64* @zfs_scan_idle, align 8
  %110 = icmp sle i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %103
  %112 = load i32, i32* %15, align 4
  %113 = call i32 @MAX(i32 %112, i32 0)
  %114 = call i32 @delay(i32 %113)
  br label %115

115:                                              ; preds = %111, %103, %100
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = call i32 @count_block(%struct.TYPE_13__* %118, i32 %121, i32* %122)
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = load i32*, i32** %14, align 8
  %132 = load i64, i64* %13, align 8
  %133 = load i32, i32* @dsl_scan_scrub_done, align 4
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %135 = load i32, i32* @ZIO_PRIORITY_SCRUB, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load i32*, i32** %9, align 8
  %138 = call i32 @zio_read(i32 %128, %struct.TYPE_12__* %129, i32* %130, i32* %131, i64 %132, i32 %133, %struct.TYPE_14__* %134, i32 %135, i32 %136, i32* %137)
  %139 = call i32 @zio_nowait(i32 %138)
  ret void
}

declare dso_local i64 @BP_GET_PSIZE(i32*) #1

declare dso_local i32* @abd_alloc_for_io(i64, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @ddi_get_lbolt64(...) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @count_block(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @zio_nowait(i32) #1

declare dso_local i32 @zio_read(i32, %struct.TYPE_12__*, i32*, i32*, i64, i32, %struct.TYPE_14__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
