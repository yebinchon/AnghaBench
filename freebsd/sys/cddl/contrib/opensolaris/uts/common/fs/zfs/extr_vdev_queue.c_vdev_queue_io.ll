; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_queue.c_vdev_queue_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_queue.c_vdev_queue_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64, i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@ZIO_FLAG_DONT_QUEUE = common dso_local global i32 0, align 4
@ZIO_TYPE_READ = common dso_local global i64 0, align 8
@ZIO_PRIORITY_SYNC_READ = common dso_local global i64 0, align 8
@ZIO_PRIORITY_ASYNC_READ = common dso_local global i64 0, align 8
@ZIO_PRIORITY_SCRUB = common dso_local global i64 0, align 8
@ZIO_PRIORITY_REMOVAL = common dso_local global i64 0, align 8
@ZIO_PRIORITY_INITIALIZING = common dso_local global i64 0, align 8
@ZIO_TYPE_WRITE = common dso_local global i64 0, align 8
@ZIO_PRIORITY_SYNC_WRITE = common dso_local global i64 0, align 8
@ZIO_PRIORITY_ASYNC_WRITE = common dso_local global i64 0, align 8
@ZIO_TYPE_FREE = common dso_local global i64 0, align 8
@ZIO_PRIORITY_TRIM = common dso_local global i64 0, align 8
@ZIO_FLAG_DONT_CACHE = common dso_local global i32 0, align 4
@vdev_queue_agg_io_done = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @vdev_queue_io(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 5
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %4, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ZIO_FLAG_DONT_QUEUE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %2, align 8
  br label %142

18:                                               ; preds = %1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ZIO_TYPE_READ, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %18
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ZIO_PRIORITY_SYNC_READ, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %24
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ZIO_PRIORITY_ASYNC_READ, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %30
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ZIO_PRIORITY_SCRUB, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ZIO_PRIORITY_REMOVAL, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ZIO_PRIORITY_INITIALIZING, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i64, i64* @ZIO_PRIORITY_ASYNC_READ, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %48, %42, %36, %30, %24
  br label %106

59:                                               ; preds = %18
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %94

65:                                               ; preds = %59
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ZIO_PRIORITY_SYNC_WRITE, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %65
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ZIO_PRIORITY_ASYNC_WRITE, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %71
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ZIO_PRIORITY_REMOVAL, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %77
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @ZIO_PRIORITY_INITIALIZING, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i64, i64* @ZIO_PRIORITY_ASYNC_WRITE, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %89, %83, %77, %71, %65
  br label %105

94:                                               ; preds = %59
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @ZIO_TYPE_FREE, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @ASSERT(i32 %100)
  %102 = load i64, i64* @ZIO_PRIORITY_TRIM, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %94, %93
  br label %106

106:                                              ; preds = %105, %58
  %107 = load i32, i32* @ZIO_FLAG_DONT_CACHE, align 4
  %108 = load i32, i32* @ZIO_FLAG_DONT_QUEUE, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = call i32 @mutex_enter(i32* %115)
  %117 = call i32 (...) @gethrtime()
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %122 = call i32 @vdev_queue_io_add(%struct.TYPE_13__* %120, %struct.TYPE_12__* %121)
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %124 = call %struct.TYPE_12__* @vdev_queue_io_to_issue(%struct.TYPE_13__* %123)
  store %struct.TYPE_12__* %124, %struct.TYPE_12__** %5, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = call i32 @mutex_exit(i32* %126)
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %129 = icmp eq %struct.TYPE_12__* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %106
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %142

131:                                              ; preds = %106
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @vdev_queue_agg_io_done, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %139 = call i32 @zio_nowait(%struct.TYPE_12__* %138)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %142

140:                                              ; preds = %131
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %141, %struct.TYPE_12__** %2, align 8
  br label %142

142:                                              ; preds = %140, %137, %130, %16
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  ret %struct.TYPE_12__* %143
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @gethrtime(...) #1

declare dso_local i32 @vdev_queue_io_add(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @vdev_queue_io_to_issue(%struct.TYPE_13__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @zio_nowait(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
