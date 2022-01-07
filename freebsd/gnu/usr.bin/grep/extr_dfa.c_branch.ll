; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_dfa.c_branch.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_dfa.c_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tok = common dso_local global i64 0, align 8
@RPAREN = common dso_local global i64 0, align 8
@OR = common dso_local global i64 0, align 8
@CAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @branch() #0 {
  %1 = call i32 (...) @closure()
  br label %2

2:                                                ; preds = %15, %0
  %3 = load i64, i64* @tok, align 8
  %4 = load i64, i64* @RPAREN, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = load i64, i64* @tok, align 8
  %8 = load i64, i64* @OR, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i64, i64* @tok, align 8
  %12 = icmp sge i64 %11, 0
  br label %13

13:                                               ; preds = %10, %6, %2
  %14 = phi i1 [ false, %6 ], [ false, %2 ], [ %12, %10 ]
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = call i32 (...) @closure()
  %17 = load i32, i32* @CAT, align 4
  %18 = call i32 @addtok(i32 %17)
  br label %2

19:                                               ; preds = %13
  ret void
}

declare dso_local i32 @closure(...) #1

declare dso_local i32 @addtok(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
