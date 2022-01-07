; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_nice.c_nice.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_nice.c_nice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@PRIO_PROCESS = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nice(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @errno, align 4
  store i32 %6, i32* %4, align 4
  store i32 0, i32* @errno, align 4
  %7 = load i32, i32* @PRIO_PROCESS, align 4
  %8 = call i32 @getpriority(i32 %7, i32 0)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @errno, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 -1, i32* %2, align 4
  br label %31

15:                                               ; preds = %11, %1
  %16 = load i32, i32* @PRIO_PROCESS, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %17, %18
  %20 = call i32 @setpriority(i32 %16, i32 0, i32 %19)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load i32, i32* @errno, align 4
  %24 = load i32, i32* @EACCES, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @EPERM, align 4
  store i32 %27, i32* @errno, align 4
  br label %28

28:                                               ; preds = %26, %22
  store i32 -1, i32* %2, align 4
  br label %31

29:                                               ; preds = %15
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* @errno, align 4
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %28, %14
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @getpriority(i32, i32) #1

declare dso_local i32 @setpriority(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
