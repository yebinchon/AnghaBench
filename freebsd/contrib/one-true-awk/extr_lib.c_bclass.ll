; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lib.c_bclass.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lib.c_bclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bracecnt = common dso_local global i32 0, align 4
@brackcnt = common dso_local global i32 0, align 4
@parencnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bclass(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %22 [
    i32 123, label %4
    i32 125, label %7
    i32 91, label %10
    i32 93, label %13
    i32 40, label %16
    i32 41, label %19
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @bracecnt, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @bracecnt, align 4
  br label %22

7:                                                ; preds = %1
  %8 = load i32, i32* @bracecnt, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* @bracecnt, align 4
  br label %22

10:                                               ; preds = %1
  %11 = load i32, i32* @brackcnt, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @brackcnt, align 4
  br label %22

13:                                               ; preds = %1
  %14 = load i32, i32* @brackcnt, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* @brackcnt, align 4
  br label %22

16:                                               ; preds = %1
  %17 = load i32, i32* @parencnt, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @parencnt, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @parencnt, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* @parencnt, align 4
  br label %22

22:                                               ; preds = %1, %19, %16, %13, %10, %7, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
