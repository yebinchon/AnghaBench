; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_adjust_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_adjust_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arc_adjust_lock = common dso_local global i32 0, align 4
@arc_adjust_zthr = common dso_local global i32 0, align 4
@arc_size = common dso_local global i32 0, align 4
@arc_c = common dso_local global i32 0, align 4
@arc_adjust_needed = common dso_local global i32 0, align 4
@arc_adjust_waiters_cv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @arc_adjust_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_adjust_cb(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = call i64 (...) @arc_adjust()
  store i64 %6, i64* %5, align 8
  %7 = call i32 @mutex_enter(i32* @arc_adjust_lock)
  %8 = load i32, i32* @arc_adjust_zthr, align 4
  %9 = call i32 @zthr_iscancelled(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* @arc_c, align 4
  %16 = call i64 @aggsum_compare(i32* @arc_size, i32 %15)
  %17 = icmp sgt i64 %16, 0
  br label %18

18:                                               ; preds = %14, %11, %2
  %19 = phi i1 [ false, %11 ], [ false, %2 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* @arc_adjust_needed, align 4
  %21 = load i32, i32* @arc_adjust_needed, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = call i32 @cv_broadcast(i32* @arc_adjust_waiters_cv)
  br label %25

25:                                               ; preds = %23, %18
  %26 = call i32 @mutex_exit(i32* @arc_adjust_lock)
  ret void
}

declare dso_local i64 @arc_adjust(...) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @zthr_iscancelled(i32) #1

declare dso_local i64 @aggsum_compare(i32*, i32) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
