; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lib.c_bracecheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lib.c_bracecheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bracecheck.beenhere = internal global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@bracecnt = common dso_local global i32 0, align 4
@brackcnt = common dso_local global i32 0, align 4
@parencnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bracecheck() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @bracecheck.beenhere, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @bracecheck.beenhere, align 4
  %4 = icmp ne i32 %2, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %26

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %16, %6
  %8 = call i32 (...) @input()
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* @EOF, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32, i32* %1, align 4
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi i1 [ false, %7 ], [ %13, %11 ]
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @bclass(i32 %17)
  br label %7

19:                                               ; preds = %14
  %20 = load i32, i32* @bracecnt, align 4
  %21 = call i32 @bcheck2(i32 %20, i8 signext 123, i8 signext 125)
  %22 = load i32, i32* @brackcnt, align 4
  %23 = call i32 @bcheck2(i32 %22, i8 signext 91, i8 signext 93)
  %24 = load i32, i32* @parencnt, align 4
  %25 = call i32 @bcheck2(i32 %24, i8 signext 40, i8 signext 41)
  br label %26

26:                                               ; preds = %19, %5
  ret void
}

declare dso_local i32 @input(...) #1

declare dso_local i32 @bclass(i32) #1

declare dso_local i32 @bcheck2(i32, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
