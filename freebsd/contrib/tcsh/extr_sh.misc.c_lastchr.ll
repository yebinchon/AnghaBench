; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.misc.c_lastchr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.misc.c_lastchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lastchr(i64* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  %4 = load i64*, i64** %3, align 8
  %5 = icmp ne i64* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %24

7:                                                ; preds = %1
  %8 = load i64*, i64** %3, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  store i64 0, i64* %2, align 8
  br label %24

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %18, %12
  %14 = load i64*, i64** %3, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i64*, i64** %3, align 8
  %20 = getelementptr inbounds i64, i64* %19, i32 1
  store i64* %20, i64** %3, align 8
  br label %13

21:                                               ; preds = %13
  %22 = load i64*, i64** %3, align 8
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %2, align 8
  br label %24

24:                                               ; preds = %21, %11, %6
  %25 = load i64, i64* %2, align 8
  ret i64 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
