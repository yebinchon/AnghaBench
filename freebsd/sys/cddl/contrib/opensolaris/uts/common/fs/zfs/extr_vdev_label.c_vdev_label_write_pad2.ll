; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_label.c_vdev_label_write_pad2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_label.c_vdev_label_write_pad2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32 }

@ZIO_FLAG_CONFIG_WRITER = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@VDEV_PAD_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SCL_ALL = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@vdev_label_t = common dso_local global i32 0, align 4
@vl_pad2 = common dso_local global i32 0, align 4
@ZIO_FLAG_TRYHARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdev_label_write_pad2(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32, i32* @ZIO_FLAG_CONFIG_WRITER, align 4
  %17 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %11, align 4
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @VDEV_PAD_SIZE, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %88

24:                                               ; preds = %3
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENODEV, align 4
  store i32 %32, i32* %4, align 4
  br label %88

33:                                               ; preds = %24
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = call i64 @vdev_is_dead(%struct.TYPE_7__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %4, align 4
  br label %88

39:                                               ; preds = %33
  %40 = load i32*, i32** %8, align 8
  %41 = load i64, i64* @SCL_ALL, align 8
  %42 = load i32, i32* @RW_WRITER, align 4
  %43 = call i64 @spa_config_held(i32* %40, i64 %41, i32 %42)
  %44 = load i64, i64* @SCL_ALL, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load i64, i64* @VDEV_PAD_SIZE, align 8
  %49 = load i32, i32* @B_TRUE, align 4
  %50 = call i32* @abd_alloc_for_io(i64 %48, i32 %49)
  store i32* %50, i32** %10, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i64, i64* @VDEV_PAD_SIZE, align 8
  %53 = call i32 @abd_zero(i32* %51, i64 %52)
  %54 = load i32*, i32** %10, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @abd_copy_from_buf(i32* %54, i8* %55, i64 %56)
  br label %58

58:                                               ; preds = %80, %39
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32* @zio_root(i32* %59, i32* null, i32* null, i32 %60)
  store i32* %61, i32** %9, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* @vdev_label_t, align 4
  %66 = load i32, i32* @vl_pad2, align 4
  %67 = call i32 @offsetof(i32 %65, i32 %66)
  %68 = load i64, i64* @VDEV_PAD_SIZE, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @vdev_label_write(i32* %62, %struct.TYPE_7__* %63, i32 0, i32* %64, i32 %67, i64 %68, i32* null, i32* null, i32 %69)
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @zio_wait(i32* %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %58
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @ZIO_FLAG_TRYHARD, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @ZIO_FLAG_TRYHARD, align 4
  %82 = load i32, i32* %11, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %11, align 4
  br label %58

84:                                               ; preds = %75, %58
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @abd_free(i32* %85)
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %84, %37, %31, %22
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i64 @vdev_is_dead(%struct.TYPE_7__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(i32*, i64, i32) #1

declare dso_local i32* @abd_alloc_for_io(i64, i32) #1

declare dso_local i32 @abd_zero(i32*, i64) #1

declare dso_local i32 @abd_copy_from_buf(i32*, i8*, i64) #1

declare dso_local i32* @zio_root(i32*, i32*, i32*, i32) #1

declare dso_local i32 @vdev_label_write(i32*, %struct.TYPE_7__*, i32, i32*, i32, i64, i32*, i32*, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @zio_wait(i32*) #1

declare dso_local i32 @abd_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
