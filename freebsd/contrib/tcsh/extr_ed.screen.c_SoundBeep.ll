; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_SoundBeep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_SoundBeep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRnobeep = common dso_local global i32 0, align 4
@T_vb = common dso_local global i32 0, align 4
@STRvisiblebell = common dso_local global i32 0, align 4
@PUTPURE = common dso_local global i32 0, align 4
@T_bl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SoundBeep() #0 {
  %1 = call i32 (...) @beep_cmd()
  %2 = load i32, i32* @STRnobeep, align 4
  %3 = call i64 @adrof(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %32

6:                                                ; preds = %0
  %7 = load i32, i32* @T_vb, align 4
  %8 = call i64 @GoodStr(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load i32, i32* @STRvisiblebell, align 4
  %12 = call i64 @adrof(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i32, i32* @T_vb, align 4
  %16 = call i32 @Str(i32 %15)
  %17 = load i32, i32* @PUTPURE, align 4
  %18 = call i32 @tputs(i32 %16, i32 1, i32 %17)
  br label %32

19:                                               ; preds = %10, %6
  %20 = load i32, i32* @T_bl, align 4
  %21 = call i64 @GoodStr(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* @T_bl, align 4
  %25 = call i32 @Str(i32 %24)
  %26 = load i32, i32* @PUTPURE, align 4
  %27 = call i32 @tputs(i32 %25, i32 1, i32 %26)
  br label %31

28:                                               ; preds = %19
  %29 = call i32 @CTL_ESC(i8 signext 7)
  %30 = call i32 @putraw(i32 %29)
  br label %31

31:                                               ; preds = %28, %23
  br label %32

32:                                               ; preds = %5, %31, %14
  ret void
}

declare dso_local i32 @beep_cmd(...) #1

declare dso_local i64 @adrof(i32) #1

declare dso_local i64 @GoodStr(i32) #1

declare dso_local i32 @tputs(i32, i32, i32) #1

declare dso_local i32 @Str(i32) #1

declare dso_local i32 @putraw(i32) #1

declare dso_local i32 @CTL_ESC(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
