; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/opie/extr_opietest.c_testunlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/opie/extr_opietest.c_testunlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @testunlock() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i64 (...) @getuid()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 -2, i32* %1, align 4
  br label %23

6:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %15, %6
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = call i32 (...) @opieunlock()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 -1, i32* %1, align 4
  br label %23

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %14
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4
  br label %7

18:                                               ; preds = %7
  %19 = call i32 (...) @opieunlock()
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 -1, i32* %1, align 4
  br label %23

22:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %22, %21, %13, %5
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i64 @getuid(...) #1

declare dso_local i32 @opieunlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
