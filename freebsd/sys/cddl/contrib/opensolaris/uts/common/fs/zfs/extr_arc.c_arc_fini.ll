; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@B_TRUE = common dso_local global i32 0, align 4
@arc_dnlc_evicts_lock = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@arc_dnlc_evicts_thread_exit = common dso_local global i64 0, align 8
@arc_dnlc_evicts_cv = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@arc_initialized = common dso_local global i32 0, align 4
@arc_ksp = common dso_local global i32* null, align 8
@arc_prune_taskq = common dso_local global i32 0, align 4
@arc_prune_mtx = common dso_local global i32 0, align 4
@arc_prune_list = common dso_local global i32 0, align 4
@arc_adjust_zthr = common dso_local global i32 0, align 4
@arc_reap_zthr = common dso_local global i32 0, align 4
@arc_adjust_lock = common dso_local global i32 0, align 4
@arc_adjust_waiters_cv = common dso_local global i32 0, align 4
@arc_loaned_bytes = common dso_local global i32 0, align 4
@arc_event_lowmem = common dso_local global i32* null, align 8
@vm_lowmem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arc_fini() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load i32, i32* @B_TRUE, align 4
  %3 = call i32 @arc_flush(i32* null, i32 %2)
  %4 = call i32 @mutex_enter(i32* @arc_dnlc_evicts_lock)
  %5 = load i64, i64* @TRUE, align 8
  store i64 %5, i64* @arc_dnlc_evicts_thread_exit, align 8
  br label %6

6:                                                ; preds = %9, %0
  %7 = load i64, i64* @arc_dnlc_evicts_thread_exit, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = call i32 @cv_signal(i32* @arc_dnlc_evicts_cv)
  %11 = call i32 @cv_wait(i32* @arc_dnlc_evicts_cv, i32* @arc_dnlc_evicts_lock)
  br label %6

12:                                               ; preds = %6
  %13 = call i32 @mutex_exit(i32* @arc_dnlc_evicts_lock)
  %14 = load i32, i32* @B_FALSE, align 4
  store i32 %14, i32* @arc_initialized, align 4
  %15 = load i32*, i32** @arc_ksp, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32*, i32** @arc_ksp, align 8
  %19 = call i32 @kstat_delete(i32* %18)
  store i32* null, i32** @arc_ksp, align 8
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i32, i32* @arc_prune_taskq, align 4
  %22 = call i32 @taskq_wait(i32 %21)
  %23 = load i32, i32* @arc_prune_taskq, align 4
  %24 = call i32 @taskq_destroy(i32 %23)
  %25 = call i32 @mutex_enter(i32* @arc_prune_mtx)
  br label %26

26:                                               ; preds = %29, %20
  %27 = call %struct.TYPE_5__* @list_head(i32* @arc_prune_list)
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %1, align 8
  %28 = icmp ne %struct.TYPE_5__* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %31 = call i32 @list_remove(i32* @arc_prune_list, %struct.TYPE_5__* %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = call i32 @zfs_refcount_remove(i32* %33, i32* @arc_prune_list)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = call i32 @zfs_refcount_destroy(i32* %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %39 = call i32 @kmem_free(%struct.TYPE_5__* %38, i32 4)
  br label %26

40:                                               ; preds = %26
  %41 = call i32 @mutex_exit(i32* @arc_prune_mtx)
  %42 = call i32 @list_destroy(i32* @arc_prune_list)
  %43 = call i32 @mutex_destroy(i32* @arc_prune_mtx)
  %44 = load i32, i32* @arc_adjust_zthr, align 4
  %45 = call i32 @zthr_cancel(i32 %44)
  %46 = load i32, i32* @arc_adjust_zthr, align 4
  %47 = call i32 @zthr_destroy(i32 %46)
  %48 = call i32 @mutex_destroy(i32* @arc_dnlc_evicts_lock)
  %49 = call i32 @cv_destroy(i32* @arc_dnlc_evicts_cv)
  %50 = load i32, i32* @arc_reap_zthr, align 4
  %51 = call i32 @zthr_cancel(i32 %50)
  %52 = load i32, i32* @arc_reap_zthr, align 4
  %53 = call i32 @zthr_destroy(i32 %52)
  %54 = call i32 @mutex_destroy(i32* @arc_adjust_lock)
  %55 = call i32 @cv_destroy(i32* @arc_adjust_waiters_cv)
  %56 = call i32 (...) @buf_fini()
  %57 = call i32 (...) @arc_state_fini()
  %58 = load i32, i32* @arc_loaned_bytes, align 4
  %59 = call i32 @ASSERT0(i32 %58)
  ret void
}

declare dso_local i32 @arc_flush(i32*, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @kstat_delete(i32*) #1

declare dso_local i32 @taskq_wait(i32) #1

declare dso_local i32 @taskq_destroy(i32) #1

declare dso_local %struct.TYPE_5__* @list_head(i32*) #1

declare dso_local i32 @list_remove(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @zfs_refcount_remove(i32*, i32*) #1

declare dso_local i32 @zfs_refcount_destroy(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @list_destroy(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @zthr_cancel(i32) #1

declare dso_local i32 @zthr_destroy(i32) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @buf_fini(...) #1

declare dso_local i32 @arc_state_fini(...) #1

declare dso_local i32 @ASSERT0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
