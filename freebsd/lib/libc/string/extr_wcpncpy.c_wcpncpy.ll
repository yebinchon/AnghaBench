; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/string/extr_wcpncpy.c_wcpncpy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/string/extr_wcpncpy.c_wcpncpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wcpncpy(i32* noalias %0, i32* noalias %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %9

9:                                                ; preds = %30, %3
  %10 = load i64, i64* %7, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* %7, align 8
  %12 = icmp ne i64 %10, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %9
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  %17 = icmp ne i32 %15, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %13
  %19 = load i32*, i32** %5, align 8
  store i32* %19, i32** %8, align 8
  br label %20

20:                                               ; preds = %24, %18
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %7, align 8
  %23 = icmp ne i64 %21, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %5, align 8
  store i32 0, i32* %26, align 4
  br label %20

27:                                               ; preds = %20
  %28 = load i32*, i32** %8, align 8
  store i32* %28, i32** %4, align 8
  br label %37

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %6, align 8
  br label %9

35:                                               ; preds = %9
  %36 = load i32*, i32** %5, align 8
  store i32* %36, i32** %4, align 8
  br label %37

37:                                               ; preds = %35, %27
  %38 = load i32*, i32** %4, align 8
  ret i32* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
