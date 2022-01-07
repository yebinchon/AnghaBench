; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_label.c_vdev_uberblock_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_label.c_vdev_uberblock_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_13__** }
%struct.TYPE_12__ = type { i32 }

@B_TRUE = common dso_local global i32 0, align 4
@VDEV_LABELS = common dso_local global i32 0, align 4
@vdev_uberblock_sync_done = common dso_local global i32 0, align 4
@ZIO_FLAG_DONT_PROPAGATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, %struct.TYPE_14__*, %struct.TYPE_13__*, i32)* @vdev_uberblock_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_uberblock_sync(i32* %0, i64* %1, %struct.TYPE_14__* %2, %struct.TYPE_13__* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %15

15:                                               ; preds = %32, %5
  %16 = load i64, i64* %11, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %15
  %22 = load i32*, i32** %6, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %26, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %27, i64 %28
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = load i32, i32* %10, align 4
  call void @vdev_uberblock_sync(i32* %22, i64* %23, %struct.TYPE_14__* %24, %struct.TYPE_13__* %30, i32 %31)
  br label %32

32:                                               ; preds = %21
  %33 = load i64, i64* %11, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %11, align 8
  br label %15

35:                                               ; preds = %15
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %93

43:                                               ; preds = %35
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %45 = call i32 @vdev_writeable(%struct.TYPE_13__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %93

48:                                               ; preds = %43
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %53 = call i32 @VDEV_UBERBLOCK_COUNT(%struct.TYPE_13__* %52)
  %54 = sub nsw i32 %53, 1
  %55 = and i32 %51, %54
  store i32 %55, i32* %12, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %57 = call i32 @VDEV_UBERBLOCK_SIZE(%struct.TYPE_13__* %56)
  %58 = load i32, i32* @B_TRUE, align 4
  %59 = call i32* @abd_alloc_for_io(i32 %57, i32 %58)
  store i32* %59, i32** %13, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %62 = call i32 @VDEV_UBERBLOCK_SIZE(%struct.TYPE_13__* %61)
  %63 = call i32 @abd_zero(i32* %60, i32 %62)
  %64 = load i32*, i32** %13, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %66 = call i32 @abd_copy_from_buf(i32* %64, %struct.TYPE_14__* %65, i32 4)
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %87, %48
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @VDEV_LABELS, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %67
  %72 = load i32*, i32** %6, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load i32*, i32** %13, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @VDEV_UBERBLOCK_OFFSET(%struct.TYPE_13__* %76, i32 %77)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = call i32 @VDEV_UBERBLOCK_SIZE(%struct.TYPE_13__* %79)
  %81 = load i32, i32* @vdev_uberblock_sync_done, align 4
  %82 = load i64*, i64** %7, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @ZIO_FLAG_DONT_PROPAGATE, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @vdev_label_write(i32* %72, %struct.TYPE_13__* %73, i32 %74, i32* %75, i32 %78, i32 %80, i32 %81, i64* %82, i32 %85)
  br label %87

87:                                               ; preds = %71
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %67

90:                                               ; preds = %67
  %91 = load i32*, i32** %13, align 8
  %92 = call i32 @abd_free(i32* %91)
  br label %93

93:                                               ; preds = %90, %47, %42
  ret void
}

declare dso_local i32 @vdev_writeable(%struct.TYPE_13__*) #1

declare dso_local i32 @VDEV_UBERBLOCK_COUNT(%struct.TYPE_13__*) #1

declare dso_local i32* @abd_alloc_for_io(i32, i32) #1

declare dso_local i32 @VDEV_UBERBLOCK_SIZE(%struct.TYPE_13__*) #1

declare dso_local i32 @abd_zero(i32*, i32) #1

declare dso_local i32 @abd_copy_from_buf(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @vdev_label_write(i32*, %struct.TYPE_13__*, i32, i32*, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @VDEV_UBERBLOCK_OFFSET(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @abd_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
