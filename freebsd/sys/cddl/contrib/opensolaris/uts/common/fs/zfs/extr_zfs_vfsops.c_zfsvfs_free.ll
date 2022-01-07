; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vfsops.c_zfsvfs_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vfsops.c_zfsvfs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i32, i32, i32, i32, i32 }

@zfsvfs_lock = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@ZFS_OBJ_MTX_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfsvfs_free(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load i32, i32* @RW_READER, align 4
  %5 = call i32 @rw_enter(i32* @zfsvfs_lock, i32 %4)
  %6 = call i32 @rw_exit(i32* @zfsvfs_lock)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = call i32 @zfs_fuid_destroy(%struct.TYPE_5__* %7)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 6
  %11 = call i32 @mutex_destroy(i32* %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 5
  %14 = call i32 @mutex_destroy(i32* %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 4
  %17 = call i32 @list_destroy(i32* %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = call i32 @rrm_destroy(i32* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = call i32 @rw_destroy(i32* %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = call i32 @rw_destroy(i32* %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %39, %1
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @ZFS_OBJ_MTX_SZ, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @mutex_destroy(i32* %37)
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %27

42:                                               ; preds = %27
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = call i32 @kmem_free(%struct.TYPE_5__* %43, i32 32)
  ret void
}

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @zfs_fuid_destroy(%struct.TYPE_5__*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @list_destroy(i32*) #1

declare dso_local i32 @rrm_destroy(i32*) #1

declare dso_local i32 @rw_destroy(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
