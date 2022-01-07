; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfsdev_minor_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfsdev_minor_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zfsdev_minor_alloc.last_minor = internal global i32 0, align 4
@spa_namespace_lock = common dso_local global i32 0, align 4
@ZFSDEV_MAX_MINOR = common dso_local global i32 0, align 4
@zfsdev_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfsdev_minor_alloc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %4 = call i32 @ASSERT(i32 %3)
  %5 = load i32, i32* @zfsdev_minor_alloc.last_minor, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %2, align 4
  br label %7

7:                                                ; preds = %25, %0
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @zfsdev_minor_alloc.last_minor, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @ZFSDEV_MAX_MINOR, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %11
  %17 = load i32, i32* @zfsdev_state, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32* @ddi_get_soft_state(i32 %17, i32 %18)
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  store i32 %22, i32* @zfsdev_minor_alloc.last_minor, align 4
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* %1, align 4
  br label %29

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %7

28:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32* @ddi_get_soft_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
