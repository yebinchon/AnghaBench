; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_dtl_dirty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_dtl_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__*, i32** }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }

@DTL_TYPES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_dtl_dirty(%struct.TYPE_4__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32**, i32*** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds i32*, i32** %12, i64 %13
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @DTL_TYPES, align 8
  %18 = icmp ult i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %21, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = call i32 @spa_writeable(%struct.TYPE_5__* %32)
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @mutex_enter(i32* %36)
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @range_tree_contains(i32* %38, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @range_tree_add(i32* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @mutex_exit(i32* %50)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_writeable(%struct.TYPE_5__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @range_tree_contains(i32*, i32, i32) #1

declare dso_local i32 @range_tree_add(i32*, i32, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
