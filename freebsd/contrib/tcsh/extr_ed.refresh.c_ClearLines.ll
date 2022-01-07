; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.refresh.c_ClearLines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.refresh.c_ClearLines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T_CanCEOL = common dso_local global i64 0, align 8
@OldvcV = common dso_local global i32 0, align 4
@TermH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClearLines() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @T_CanCEOL, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %19

4:                                                ; preds = %0
  %5 = load i32, i32* @OldvcV, align 4
  store i32 %5, i32* %1, align 4
  br label %6

6:                                                ; preds = %15, %4
  %7 = load i32, i32* %1, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @MoveToLine(i32 %10)
  %12 = call i32 @MoveToChar(i32 0)
  %13 = load i32, i32* @TermH, align 4
  %14 = call i32 @ClearEOL(i32 %13)
  br label %15

15:                                               ; preds = %9
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %1, align 4
  br label %6

18:                                               ; preds = %6
  br label %24

19:                                               ; preds = %0
  %20 = load i32, i32* @OldvcV, align 4
  %21 = call i32 @MoveToLine(i32 %20)
  %22 = call i32 @putraw(i8 signext 13)
  %23 = call i32 @putraw(i8 signext 10)
  br label %24

24:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @MoveToLine(i32) #1

declare dso_local i32 @MoveToChar(i32) #1

declare dso_local i32 @ClearEOL(i32) #1

declare dso_local i32 @putraw(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
