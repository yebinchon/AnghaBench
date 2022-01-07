; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_ishex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_ishex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @ishex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ishex(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp sge i32 %6, 97
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %9, 102
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 %12, 97
  %14 = add nsw i32 %13, 10
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  store i32 1, i32* %3, align 4
  br label %38

16:                                               ; preds = %8, %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp sge i32 %17, 65
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp sle i32 %20, 70
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %23, 65
  %25 = add nsw i32 %24, 10
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  store i32 1, i32* %3, align 4
  br label %38

27:                                               ; preds = %19, %16
  %28 = load i32, i32* %4, align 4
  %29 = icmp sge i32 %28, 48
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = icmp sle i32 %31, 57
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %34, 48
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  store i32 1, i32* %3, align 4
  br label %38

37:                                               ; preds = %30, %27
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %33, %22, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
