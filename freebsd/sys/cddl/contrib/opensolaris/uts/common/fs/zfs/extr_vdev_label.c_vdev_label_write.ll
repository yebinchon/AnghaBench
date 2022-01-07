; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_label.c_vdev_label_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_label.c_vdev_label_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@SCL_ALL = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@SCL_CONFIG = common dso_local global i32 0, align 4
@SCL_STATE = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@ZIO_FLAG_CONFIG_WRITER = common dso_local global i32 0, align 4
@ZIO_CHECKSUM_LABEL = common dso_local global i32 0, align 4
@ZIO_PRIORITY_SYNC_WRITE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32*, i32, i32, i32*, i8*, i32)* @vdev_label_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_label_write(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32* %6, i8* %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32 %8, i32* %18, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SCL_ALL, align 4
  %23 = load i32, i32* @RW_WRITER, align 4
  %24 = call i32 @spa_config_held(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @SCL_ALL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %49, label %27

27:                                               ; preds = %9
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SCL_CONFIG, align 4
  %32 = load i32, i32* @SCL_STATE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @RW_READER, align 4
  %35 = call i32 @spa_config_held(i32 %30, i32 %33, i32 %34)
  %36 = load i32, i32* @SCL_CONFIG, align 4
  %37 = load i32, i32* @SCL_STATE, align 4
  %38 = or i32 %36, %37
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %27
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @spa_get_dsl(i32 %43)
  %45 = call i64 @dsl_pool_sync_context(i32 %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %40, %27
  %48 = phi i1 [ false, %27 ], [ %46, %40 ]
  br label %49

49:                                               ; preds = %47, %9
  %50 = phi i1 [ true, %9 ], [ %48, %47 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* @ZIO_FLAG_CONFIG_WRITER, align 4
  %55 = and i32 %53, %54
  %56 = call i32 @ASSERT(i32 %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @vdev_label_offset(i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %15, align 4
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* @ZIO_CHECKSUM_LABEL, align 4
  %68 = load i32*, i32** %16, align 8
  %69 = load i8*, i8** %17, align 8
  %70 = load i32, i32* @ZIO_PRIORITY_SYNC_WRITE, align 4
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* @B_TRUE, align 4
  %73 = call i32 @zio_write_phys(%struct.TYPE_7__* %57, %struct.TYPE_8__* %58, i32 %64, i32 %65, i32* %66, i32 %67, i32* %68, i8* %69, i32 %70, i32 %71, i32 %72)
  %74 = call i32 @zio_nowait(i32 %73)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_config_held(i32, i32, i32) #1

declare dso_local i64 @dsl_pool_sync_context(i32) #1

declare dso_local i32 @spa_get_dsl(i32) #1

declare dso_local i32 @zio_nowait(i32) #1

declare dso_local i32 @zio_write_phys(%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32, i32*, i32, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @vdev_label_offset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
