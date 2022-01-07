; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.c_phup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.c_phup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.process* }
%struct.process = type { i32, i64, %struct.process*, %struct.process* }

@loginsh = common dso_local global i64 0, align 8
@STRlogout = common dso_local global i32 0, align 4
@STRhangup = common dso_local global i32 0, align 4
@VAR_READWRITE = common dso_local global i32 0, align 4
@STRhome = common dso_local global i32 0, align 4
@STRsldtlogout = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@PFOREGND = common dso_local global i32 0, align 4
@PHUP = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@_PATH_DOTLOGOUT = common dso_local global i32 0, align 4
@proclist = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@shpgrp = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phup() #0 {
  %1 = load i64, i64* @loginsh, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %17

3:                                                ; preds = %0
  %4 = load i32, i32* @STRlogout, align 4
  %5 = load i32, i32* @STRhangup, align 4
  %6 = load i32, i32* @VAR_READWRITE, align 4
  %7 = call i32 @setcopy(i32 %4, i32 %5, i32 %6)
  %8 = load i32, i32* @STRhome, align 4
  %9 = call i64 @adrof(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i32, i32* @STRhome, align 4
  %13 = call i32 @varval(i32 %12)
  %14 = load i32, i32* @STRsldtlogout, align 4
  %15 = call i32 @srccat(i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %11, %3
  br label %17

17:                                               ; preds = %16, %0
  %18 = call i32 (...) @record()
  %19 = load i32, i32* @SIGHUP, align 4
  %20 = call i32 @xexit(i32 %19)
  ret void
}

declare dso_local i32 @setcopy(i32, i32, i32) #1

declare dso_local i64 @adrof(i32) #1

declare dso_local i32 @srccat(i32, i32) #1

declare dso_local i32 @varval(i32) #1

declare dso_local i32 @record(...) #1

declare dso_local i32 @xexit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
