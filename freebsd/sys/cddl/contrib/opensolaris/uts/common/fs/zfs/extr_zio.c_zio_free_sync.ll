; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_free_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_free_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZIO_FREE_PIPELINE = common dso_local global i32 0, align 4
@zfs_sync_pass_deferred_free = common dso_local global i64 0, align 8
@zfs_trim_enabled = common dso_local global i64 0, align 8
@ZIO_STAGE_ISSUE_ASYNC = common dso_local global i32 0, align 4
@ZIO_STAGE_VDEV_IO_START = common dso_local global i32 0, align 4
@ZIO_STAGE_VDEV_IO_ASSESS = common dso_local global i32 0, align 4
@ZIO_FLAG_DONT_QUEUE = common dso_local global i32 0, align 4
@ZIO_TYPE_FREE = common dso_local global i32 0, align 4
@ZIO_PRIORITY_NOW = common dso_local global i32 0, align 4
@ZIO_STAGE_OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @zio_free_sync(i32* %0, i32* %1, i64 %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* @ZIO_FREE_PIPELINE, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i32*, i32** %11, align 8
  %18 = call i32 @BP_IS_HOLE(i32* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i32*, i32** %9, align 8
  %24 = call i64 @spa_syncing_txg(i32* %23)
  %25 = load i64, i64* %10, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load i32*, i32** %9, align 8
  %30 = call i64 @spa_sync_pass(i32* %29)
  %31 = load i64, i64* @zfs_sync_pass_deferred_free, align 8
  %32 = icmp slt i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load i32*, i32** %11, align 8
  %36 = call i64 @BP_IS_EMBEDDED(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %6
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32* @zio_null(i32* %39, i32* %40, i32* null, i32* null, i32* null, i32 0)
  store i32* %41, i32** %7, align 8
  br label %92

42:                                               ; preds = %6
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @metaslab_check_free(i32* %43, i32* %44)
  %46 = load i32*, i32** %9, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @arc_freed(i32* %46, i32* %47)
  %49 = load i32*, i32** %9, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @dsl_scan_freed(i32* %49, i32* %50)
  %52 = load i64, i64* @zfs_trim_enabled, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %42
  %55 = load i32, i32* @ZIO_STAGE_ISSUE_ASYNC, align 4
  %56 = load i32, i32* @ZIO_STAGE_VDEV_IO_START, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @ZIO_STAGE_VDEV_IO_ASSESS, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %15, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %15, align 4
  br label %75

62:                                               ; preds = %42
  %63 = load i32*, i32** %11, align 8
  %64 = call i64 @BP_IS_GANG(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32*, i32** %11, align 8
  %68 = call i64 @BP_GET_DEDUP(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66, %62
  %71 = load i32, i32* @ZIO_STAGE_ISSUE_ASYNC, align 4
  %72 = load i32, i32* %15, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %70, %66
  br label %75

75:                                               ; preds = %74, %54
  %76 = load i32, i32* @ZIO_FLAG_DONT_QUEUE, align 4
  %77 = load i32, i32* %13, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %13, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i32, i32* @ZIO_TYPE_FREE, align 4
  %86 = load i32, i32* @ZIO_PRIORITY_NOW, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @ZIO_STAGE_OPEN, align 4
  %89 = load i32, i32* %15, align 4
  %90 = call i32* @zio_create(i32* %79, i32* %80, i64 %81, i32* %82, i32* null, i64 %83, i64 %84, i32* null, i32* null, i32 %85, i32 %86, i32 %87, i32* null, i32 0, i32* null, i32 %88, i32 %89)
  store i32* %90, i32** %14, align 8
  %91 = load i32*, i32** %14, align 8
  store i32* %91, i32** %7, align 8
  br label %92

92:                                               ; preds = %75, %38
  %93 = load i32*, i32** %7, align 8
  ret i32* %93
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @BP_IS_HOLE(i32*) #1

declare dso_local i64 @spa_syncing_txg(i32*) #1

declare dso_local i64 @spa_sync_pass(i32*) #1

declare dso_local i64 @BP_IS_EMBEDDED(i32*) #1

declare dso_local i32* @zio_null(i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @metaslab_check_free(i32*, i32*) #1

declare dso_local i32 @arc_freed(i32*, i32*) #1

declare dso_local i32 @dsl_scan_freed(i32*, i32*) #1

declare dso_local i64 @BP_IS_GANG(i32*) #1

declare dso_local i64 @BP_GET_DEDUP(i32*) #1

declare dso_local i32* @zio_create(i32*, i32*, i64, i32*, i32*, i64, i64, i32*, i32*, i32, i32, i32, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
