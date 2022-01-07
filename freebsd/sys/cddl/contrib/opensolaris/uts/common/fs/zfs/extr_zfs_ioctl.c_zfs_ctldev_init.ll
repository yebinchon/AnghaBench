; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ctldev_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ctldev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@spa_namespace_lock = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@zfsdev_state = common dso_local global i32 0, align 4
@DDI_SUCCESS = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@zfsdev_close = common dso_local global i32 0, align 4
@ZSST_CTLDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*)* @zfs_ctldev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ctldev_init(%struct.cdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store %struct.cdev* %0, %struct.cdev** %3, align 8
  %6 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %7 = call i32 @ASSERT(i32 %6)
  %8 = call i64 (...) @zfsdev_minor_alloc()
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  %13 = call i32 @SET_ERROR(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %38

14:                                               ; preds = %1
  %15 = load i32, i32* @zfsdev_state, align 4
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @ddi_soft_state_zalloc(i32 %15, i64 %16)
  %18 = load i64, i64* @DDI_SUCCESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EAGAIN, align 4
  %22 = call i32 @SET_ERROR(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %38

23:                                               ; preds = %14
  %24 = load i64, i64* %4, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load i32, i32* @zfsdev_close, align 4
  %27 = call i32 @devfs_set_cdevpriv(i8* %25, i32 %26)
  %28 = load i32, i32* @zfsdev_state, align 4
  %29 = load i64, i64* %4, align 8
  %30 = call %struct.TYPE_3__* @ddi_get_soft_state(i32 %28, i64 %29)
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %5, align 8
  %31 = load i32, i32* @ZSST_CTLDEV, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = bitcast i32* %35 to i32**
  %37 = call i32 @zfs_onexit_init(i32** %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %23, %20, %11
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i64 @zfsdev_minor_alloc(...) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @ddi_soft_state_zalloc(i32, i64) #1

declare dso_local i32 @devfs_set_cdevpriv(i8*, i32) #1

declare dso_local %struct.TYPE_3__* @ddi_get_soft_state(i32, i64) #1

declare dso_local i32 @zfs_onexit_init(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
