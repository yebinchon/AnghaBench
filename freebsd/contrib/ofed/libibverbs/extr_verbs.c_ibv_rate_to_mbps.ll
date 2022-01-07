; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c_ibv_rate_to_mbps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c_ibv_rate_to_mbps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local i32 @ibv_rate_to_mbps(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %26 [
    i32 138, label %5
    i32 131, label %6
    i32 147, label %7
    i32 141, label %8
    i32 136, label %9
    i32 134, label %10
    i32 129, label %11
    i32 128, label %12
    i32 145, label %13
    i32 144, label %14
    i32 132, label %15
    i32 146, label %16
    i32 143, label %17
    i32 140, label %18
    i32 148, label %19
    i32 142, label %20
    i32 137, label %21
    i32 139, label %22
    i32 133, label %23
    i32 135, label %24
    i32 130, label %25
  ]

5:                                                ; preds = %1
  store i32 2500, i32* %2, align 4
  br label %27

6:                                                ; preds = %1
  store i32 5000, i32* %2, align 4
  br label %27

7:                                                ; preds = %1
  store i32 10000, i32* %2, align 4
  br label %27

8:                                                ; preds = %1
  store i32 20000, i32* %2, align 4
  br label %27

9:                                                ; preds = %1
  store i32 30000, i32* %2, align 4
  br label %27

10:                                               ; preds = %1
  store i32 40000, i32* %2, align 4
  br label %27

11:                                               ; preds = %1
  store i32 60000, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  store i32 80000, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  store i32 120000, i32* %2, align 4
  br label %27

14:                                               ; preds = %1
  store i32 14062, i32* %2, align 4
  br label %27

15:                                               ; preds = %1
  store i32 56250, i32* %2, align 4
  br label %27

16:                                               ; preds = %1
  store i32 112500, i32* %2, align 4
  br label %27

17:                                               ; preds = %1
  store i32 168750, i32* %2, align 4
  br label %27

18:                                               ; preds = %1
  store i32 25781, i32* %2, align 4
  br label %27

19:                                               ; preds = %1
  store i32 103125, i32* %2, align 4
  br label %27

20:                                               ; preds = %1
  store i32 206250, i32* %2, align 4
  br label %27

21:                                               ; preds = %1
  store i32 309375, i32* %2, align 4
  br label %27

22:                                               ; preds = %1
  store i32 28125, i32* %2, align 4
  br label %27

23:                                               ; preds = %1
  store i32 53125, i32* %2, align 4
  br label %27

24:                                               ; preds = %1
  store i32 425000, i32* %2, align 4
  br label %27

25:                                               ; preds = %1
  store i32 637500, i32* %2, align 4
  br label %27

26:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
