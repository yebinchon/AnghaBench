; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_ClearToBottom.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_ClearToBottom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T_cd = common dso_local global i32 0, align 4
@T_li = common dso_local global i32 0, align 4
@PUTPURE = common dso_local global i32 0, align 4
@T_ce = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClearToBottom() #0 {
  %1 = load i32, i32* @T_cd, align 4
  %2 = call i64 @GoodStr(i32 %1)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i32, i32* @T_cd, align 4
  %6 = call i32 @Str(i32 %5)
  %7 = load i32, i32* @T_li, align 4
  %8 = call i32 @Val(i32 %7)
  %9 = load i32, i32* @PUTPURE, align 4
  %10 = call i32 @tputs(i32 %6, i32 %8, i32 %9)
  br label %23

11:                                               ; preds = %0
  %12 = load i32, i32* @T_ce, align 4
  %13 = call i64 @GoodStr(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load i32, i32* @T_ce, align 4
  %17 = call i32 @Str(i32 %16)
  %18 = load i32, i32* @T_li, align 4
  %19 = call i32 @Val(i32 %18)
  %20 = load i32, i32* @PUTPURE, align 4
  %21 = call i32 @tputs(i32 %17, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %15, %11
  br label %23

23:                                               ; preds = %22, %4
  ret void
}

declare dso_local i64 @GoodStr(i32) #1

declare dso_local i32 @tputs(i32, i32, i32) #1

declare dso_local i32 @Str(i32) #1

declare dso_local i32 @Val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
