; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.err.c_fixerror.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.err.c_fixerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@didfds = common dso_local global i64 0, align 8
@exitset = common dso_local global i32 0, align 4
@exiterr = common dso_local global i64 0, align 8
@child = common dso_local global i64 0, align 8
@STRstatus = common dso_local global i32 0, align 4
@STR1 = common dso_local global i32 0, align 4
@VAR_READWRITE = common dso_local global i32 0, align 4
@FSHTTY = common dso_local global i32 0, align 4
@tpgrp = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fixerror() #0 {
  store i64 0, i64* @didfds, align 8
  %1 = load i32, i32* @exitset, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = load i64, i64* @exiterr, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load i64, i64* @child, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6, %3, %0
  %10 = call i32 @xexit(i32 1)
  br label %11

11:                                               ; preds = %9, %6
  %12 = call i32 (...) @btoeof()
  %13 = load i32, i32* @STRstatus, align 4
  %14 = load i32, i32* @STR1, align 4
  %15 = load i32, i32* @VAR_READWRITE, align 4
  %16 = call i32 @setcopy(i32 %13, i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @xexit(i32) #1

declare dso_local i32 @btoeof(...) #1

declare dso_local i32 @setcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
