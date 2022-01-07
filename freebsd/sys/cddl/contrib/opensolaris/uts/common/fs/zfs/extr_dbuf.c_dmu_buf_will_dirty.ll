; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dbuf.c_dmu_buf_will_dirty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dbuf.c_dmu_buf_will_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i32 }

@DB_RF_MUST_SUCCEED = common dso_local global i32 0, align 4
@DB_RF_NOPREFETCH = common dso_local global i32 0, align 4
@DB_CACHED = common dso_local global i64 0, align 8
@DB_RF_HAVESTRUCT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmu_buf_will_dirty(i32* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %5, align 8
  %10 = load i32, i32* @DB_RF_MUST_SUCCEED, align 4
  %11 = load i32, i32* @DB_RF_NOPREFETCH, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 3
  %21 = call i32 @zfs_refcount_is_zero(i32* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = call i32 @mutex_enter(i32* %27)
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %7, align 8
  br label %32

32:                                               ; preds = %66, %2
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %34 = icmp ne %struct.TYPE_16__* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  br label %43

43:                                               ; preds = %35, %32
  %44 = phi i1 [ false, %32 ], [ %42, %35 ]
  br i1 %44, label %45, label %70

45:                                               ; preds = %43
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %45
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DB_CACHED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = call i32 @dbuf_redirty(%struct.TYPE_16__* %60)
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = call i32 @mutex_exit(i32* %63)
  br label %94

65:                                               ; preds = %53, %45
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** %7, align 8
  br label %32

70:                                               ; preds = %43
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = call i32 @mutex_exit(i32* %72)
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = call i32 @DB_DNODE_ENTER(%struct.TYPE_15__* %74)
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %77 = call %struct.TYPE_13__* @DB_DNODE(%struct.TYPE_15__* %76)
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = call i64 @RW_WRITE_HELD(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %70
  %82 = load i32, i32* @DB_RF_HAVESTRUCT, align 4
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %81, %70
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = call i32 @DB_DNODE_EXIT(%struct.TYPE_15__* %86)
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @dbuf_read(%struct.TYPE_15__* %88, i32* null, i32 %89)
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = call i32 @dbuf_dirty(%struct.TYPE_15__* %91, %struct.TYPE_14__* %92)
  br label %94

94:                                               ; preds = %85, %59
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zfs_refcount_is_zero(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @dbuf_redirty(%struct.TYPE_16__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @DB_DNODE_ENTER(%struct.TYPE_15__*) #1

declare dso_local i64 @RW_WRITE_HELD(i32*) #1

declare dso_local %struct.TYPE_13__* @DB_DNODE(%struct.TYPE_15__*) #1

declare dso_local i32 @DB_DNODE_EXIT(%struct.TYPE_15__*) #1

declare dso_local i32 @dbuf_read(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @dbuf_dirty(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
