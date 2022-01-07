; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_l2arc_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_l2arc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spa_mode_global = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@l2arc_feed_thr_lock = common dso_local global i32 0, align 4
@l2arc_feed_thr_cv = common dso_local global i32 0, align 4
@l2arc_thread_exit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2arc_stop() #0 {
  %1 = load i32, i32* @spa_mode_global, align 4
  %2 = load i32, i32* @FWRITE, align 4
  %3 = and i32 %1, %2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %16

6:                                                ; preds = %0
  %7 = call i32 @mutex_enter(i32* @l2arc_feed_thr_lock)
  %8 = call i32 @cv_signal(i32* @l2arc_feed_thr_cv)
  store i32 1, i32* @l2arc_thread_exit, align 4
  br label %9

9:                                                ; preds = %12, %6
  %10 = load i32, i32* @l2arc_thread_exit, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 @cv_wait(i32* @l2arc_feed_thr_cv, i32* @l2arc_feed_thr_lock)
  br label %9

14:                                               ; preds = %9
  %15 = call i32 @mutex_exit(i32* @l2arc_feed_thr_lock)
  br label %16

16:                                               ; preds = %14, %5
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
