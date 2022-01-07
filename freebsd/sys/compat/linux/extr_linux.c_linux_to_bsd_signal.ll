; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux.c_linux_to_bsd_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux.c_linux_to_bsd_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINUX_SIGRTMAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid Linux signal %d\0A\00", align 1
@LINUX_SIGRTMIN = common dso_local global i32 0, align 4
@linux_to_bsd_sigtbl = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_to_bsd_signal(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @LINUX_SIGRTMAX, align 4
  %9 = icmp sle i32 %7, %8
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @KASSERT(i32 %12, i8* %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @LINUX_SIGRTMIN, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %10
  %21 = load i32*, i32** @linux_to_bsd_sigtbl, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @_SIG_IDX(i32 %22)
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %10
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @linux_to_bsd_rt_signal(i32 %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @_SIG_IDX(i32) #1

declare dso_local i32 @linux_to_bsd_rt_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
