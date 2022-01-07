; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@SCL_ALL = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@POOL_SCAN_FUNCS = common dso_local global i64 0, align 8
@POOL_SCAN_NONE = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@POOL_SCAN_RESILVER = common dso_local global i64 0, align 8
@SPA_ASYNC_RESILVER_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_scan(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = load i32, i32* @SCL_ALL, align 4
  %8 = load i32, i32* @RW_WRITER, align 4
  %9 = call i64 @spa_config_held(%struct.TYPE_5__* %6, i32 %7, i32 %8)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @POOL_SCAN_FUNCS, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @POOL_SCAN_NONE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %2
  %21 = load i32, i32* @ENOTSUP, align 4
  %22 = call i32 @SET_ERROR(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %43

23:                                               ; preds = %16
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @POOL_SCAN_RESILVER, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @vdev_resilver_needed(i32 %30, i32* null, i32* null)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = load i32, i32* @SPA_ASYNC_RESILVER_DONE, align 4
  %36 = call i32 @spa_async_request(%struct.TYPE_5__* %34, i32 %35)
  store i32 0, i32* %3, align 4
  br label %43

37:                                               ; preds = %27, %23
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @dsl_scan(i32 %40, i64 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %33, %20
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @vdev_resilver_needed(i32, i32*, i32*) #1

declare dso_local i32 @spa_async_request(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dsl_scan(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
