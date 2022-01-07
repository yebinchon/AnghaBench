; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_dosuspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_dosuspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type opaque

@loginsh = common dso_local global i64 0, align 8
@ERR_SUSPLOG = common dso_local global i32 0, align 4
@ERR_JOBCONTROL = common dso_local global i32 0, align 4
@FSHTTY = common dso_local global i32 0, align 4
@ERR_SYSTEM = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@opgrp = common dso_local global i32 0, align 4
@shpgrp = common dso_local global i32 0, align 4
@tpgrp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dosuspend(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %5 = load %struct.command*, %struct.command** %4, align 8
  %6 = bitcast %struct.command* %5 to i32**
  %7 = call i32 @USE(i32** %6)
  %8 = load i32**, i32*** %3, align 8
  %9 = call i32 @USE(i32** %8)
  %10 = load i64, i64* @loginsh, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ERR_SUSPLOG, align 4
  %14 = call i32 (i32, ...) @stderror(i32 %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = call i32 (...) @untty()
  %17 = load i32, i32* @ERR_JOBCONTROL, align 4
  %18 = call i32 (i32, ...) @stderror(i32 %17)
  %19 = load i32, i32* @FSHTTY, align 4
  %20 = call i32 @setdisc(i32 %19)
  ret void
}

declare dso_local i32 @USE(i32**) #1

declare dso_local i32 @stderror(i32, ...) #1

declare dso_local i32 @untty(...) #1

declare dso_local i32 @setdisc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
