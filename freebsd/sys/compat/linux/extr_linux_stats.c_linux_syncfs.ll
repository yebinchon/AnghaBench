; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_stats.c_linux_syncfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_stats.c_linux_syncfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_syncfs_args = type { i32 }
%struct.mount = type { i32 }
%struct.vnode = type { %struct.mount* }

@cap_fsync_rights = common dso_local global i32 0, align 4
@mountlist_mtx = common dso_local global i32 0, align 4
@MBF_MNTLSTLOCK = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@V_NOWAIT = common dso_local global i32 0, align 4
@TDP_SYNCIO = common dso_local global i32 0, align 4
@MNT_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_syncfs(%struct.thread* %0, %struct.linux_syncfs_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_syncfs_args*, align 8
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_syncfs_args* %1, %struct.linux_syncfs_args** %5, align 8
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = load %struct.linux_syncfs_args*, %struct.linux_syncfs_args** %5, align 8
  %12 = getelementptr inbounds %struct.linux_syncfs_args, %struct.linux_syncfs_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @fgetvp(%struct.thread* %10, i32 %13, i32* @cap_fsync_rights, %struct.vnode** %7)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %62

19:                                               ; preds = %2
  %20 = load %struct.vnode*, %struct.vnode** %7, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 0
  %22 = load %struct.mount*, %struct.mount** %21, align 8
  store %struct.mount* %22, %struct.mount** %6, align 8
  %23 = call i32 @mtx_lock(i32* @mountlist_mtx)
  %24 = load %struct.mount*, %struct.mount** %6, align 8
  %25 = load i32, i32* @MBF_MNTLSTLOCK, align 4
  %26 = call i32 @vfs_busy(%struct.mount* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = call i32 @mtx_unlock(i32* @mountlist_mtx)
  br label %58

31:                                               ; preds = %19
  %32 = load %struct.mount*, %struct.mount** %6, align 8
  %33 = getelementptr inbounds %struct.mount, %struct.mount* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MNT_RDONLY, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %31
  %39 = load i32, i32* @V_NOWAIT, align 4
  %40 = call i64 @vn_start_write(i32* null, %struct.mount** %6, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i32, i32* @TDP_SYNCIO, align 4
  %44 = call i32 @curthread_pflags_set(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.mount*, %struct.mount** %6, align 8
  %46 = load i32, i32* @MNT_NOWAIT, align 4
  %47 = call i32 @vfs_msync(%struct.mount* %45, i32 %46)
  %48 = load %struct.mount*, %struct.mount** %6, align 8
  %49 = load i32, i32* @MNT_NOWAIT, align 4
  %50 = call i32 @VFS_SYNC(%struct.mount* %48, i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @curthread_pflags_restore(i32 %51)
  %53 = load %struct.mount*, %struct.mount** %6, align 8
  %54 = call i32 @vn_finished_write(%struct.mount* %53)
  br label %55

55:                                               ; preds = %42, %38, %31
  %56 = load %struct.mount*, %struct.mount** %6, align 8
  %57 = call i32 @vfs_unbusy(%struct.mount* %56)
  br label %58

58:                                               ; preds = %55, %29
  %59 = load %struct.vnode*, %struct.vnode** %7, align 8
  %60 = call i32 @vrele(%struct.vnode* %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %17
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @fgetvp(%struct.thread*, i32, i32*, %struct.vnode**) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @vfs_busy(%struct.mount*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @vn_start_write(i32*, %struct.mount**, i32) #1

declare dso_local i32 @curthread_pflags_set(i32) #1

declare dso_local i32 @vfs_msync(%struct.mount*, i32) #1

declare dso_local i32 @VFS_SYNC(%struct.mount*, i32) #1

declare dso_local i32 @curthread_pflags_restore(i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
