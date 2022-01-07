; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_label.c_vdev_label_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_label.c_vdev_label_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@SCL_STATE_ALL = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@ZIO_FLAG_CONFIG_WRITER = common dso_local global i32 0, align 4
@ZIO_CHECKSUM_LABEL = common dso_local global i32 0, align 4
@ZIO_PRIORITY_SYNC_READ = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32*, i32, i32, i32*, i8*, i32)* @vdev_label_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_label_read(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32* %6, i8* %7, i32 %8) #0 {
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
  %22 = load i64, i64* @SCL_STATE_ALL, align 8
  %23 = load i32, i32* @RW_WRITER, align 4
  %24 = call i64 @spa_config_held(i32 %21, i64 %22, i32 %23)
  %25 = load i64, i64* @SCL_STATE_ALL, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load i32, i32* %18, align 4
  %30 = load i32, i32* @ZIO_FLAG_CONFIG_WRITER, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @vdev_label_offset(i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %15, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* @ZIO_CHECKSUM_LABEL, align 4
  %44 = load i32*, i32** %16, align 8
  %45 = load i8*, i8** %17, align 8
  %46 = load i32, i32* @ZIO_PRIORITY_SYNC_READ, align 4
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* @B_TRUE, align 4
  %49 = call i32 @zio_read_phys(%struct.TYPE_7__* %33, %struct.TYPE_8__* %34, i32 %40, i32 %41, i32* %42, i32 %43, i32* %44, i8* %45, i32 %46, i32 %47, i32 %48)
  %50 = call i32 @zio_nowait(i32 %49)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(i32, i64, i32) #1

declare dso_local i32 @zio_nowait(i32) #1

declare dso_local i32 @zio_read_phys(%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32, i32*, i32, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @vdev_label_offset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
