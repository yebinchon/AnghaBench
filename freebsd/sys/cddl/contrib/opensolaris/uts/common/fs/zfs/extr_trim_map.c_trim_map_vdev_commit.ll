; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_trim_map.c_trim_map_vdev_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_trim_map.c_trim_map_vdev_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i64 }

@trim_timeout = common dso_local global i32 0, align 4
@NANOSEC = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@trim_txg_delay = common dso_local global i64 0, align 8
@trim_vdev_max_pending = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_14__*)* @trim_map_vdev_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trim_map_vdev_commit(i32* %0, i32* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %7, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %26 = icmp eq %struct.TYPE_16__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %144

28:                                               ; preds = %3
  %29 = call i32 (...) @gethrtime()
  %30 = load i32, i32* @trim_timeout, align 4
  %31 = load i32, i32* @NANOSEC, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %15, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i64, i64* @UINT64_MAX, align 8
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* @UINT64_MAX, align 8
  store i64 %40, i64* %11, align 8
  br label %56

41:                                               ; preds = %28
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @spa_last_synced_txg(i32* %42)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @spa_freeze_txg(i32* %44)
  %46 = call i64 @MIN(i32 %43, i32 %45)
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* @trim_txg_delay, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* @trim_txg_delay, align 8
  %53 = sub nsw i64 %51, %52
  store i64 %53, i64* %11, align 8
  br label %55

54:                                               ; preds = %41
  store i64 0, i64* %11, align 8
  br label %55

55:                                               ; preds = %54, %50
  br label %56

56:                                               ; preds = %55, %38
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = call i32 @mutex_enter(i32* %58)
  store i32 0, i32* %13, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @trim_vdev_max_pending, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @trim_vdev_max_pending, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sdiv i32 %70, 4
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %65, %56
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @trim_timeout, align 4
  %78 = sdiv i32 %76, %77
  %79 = add nsw i32 %73, %78
  %80 = add nsw i32 %79, 1
  %81 = call i32 @P2ROUNDUP(i32 %80, i32 64)
  store i32 %81, i32* %14, align 4
  br label %82

82:                                               ; preds = %97, %72
  %83 = load i32, i32* %14, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp sgt i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call %struct.TYPE_15__* @trim_map_first(%struct.TYPE_16__* %86, i64 %87, i64 %88, i32 %89, i32 %92)
  store %struct.TYPE_15__* %93, %struct.TYPE_15__** %8, align 8
  %94 = icmp ne %struct.TYPE_15__* %93, null
  br label %95

95:                                               ; preds = %85, %82
  %96 = phi i1 [ false, %82 ], [ %94, %85 ]
  br i1 %96, label %97, label %140

97:                                               ; preds = %95
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %100 = call i32 @TRIM_MAP_REM(%struct.TYPE_16__* %98, %struct.TYPE_15__* %99)
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %104 = call i32 @avl_remove(i32* %102, %struct.TYPE_15__* %103)
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %108 = call i32 @avl_add(i32* %106, %struct.TYPE_15__* %107)
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %111, %114
  store i64 %115, i64* %9, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %10, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = call i32 @mutex_exit(i32* %120)
  %122 = load i32*, i32** %5, align 8
  %123 = load i32*, i32** %4, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %125 = load i64, i64* %10, align 8
  %126 = load i64, i64* %9, align 8
  %127 = call i32 @zio_trim(i32* %122, i32* %123, %struct.TYPE_14__* %124, i64 %125, i64 %126)
  %128 = call i32 @zio_nowait(i32 %127)
  %129 = load i64, i64* %9, align 8
  %130 = call i32 @TRIM_MAP_SEGS(i64 %129)
  %131 = load i32, i32* %14, align 4
  %132 = sub nsw i32 %131, %130
  store i32 %132, i32* %14, align 4
  %133 = load i64, i64* %9, align 8
  %134 = call i32 @TRIM_MAP_SEGS(i64 %133)
  %135 = load i32, i32* %13, align 4
  %136 = sub nsw i32 %135, %134
  store i32 %136, i32* %13, align 4
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = call i32 @mutex_enter(i32* %138)
  br label %82

140:                                              ; preds = %95
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  %143 = call i32 @mutex_exit(i32* %142)
  br label %144

144:                                              ; preds = %140, %27
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @gethrtime(...) #1

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i32 @spa_last_synced_txg(i32*) #1

declare dso_local i32 @spa_freeze_txg(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @P2ROUNDUP(i32, i32) #1

declare dso_local %struct.TYPE_15__* @trim_map_first(%struct.TYPE_16__*, i64, i64, i32, i32) #1

declare dso_local i32 @TRIM_MAP_REM(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @avl_remove(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @avl_add(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @zio_nowait(i32) #1

declare dso_local i32 @zio_trim(i32*, i32*, %struct.TYPE_14__*, i64, i64) #1

declare dso_local i32 @TRIM_MAP_SEGS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
