; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_sys_bsd.c_tcval.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_sys_bsd.c_tcval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@termIntChar = common dso_local global i32 0, align 4
@termQuitChar = common dso_local global i32 0, align 4
@termEofChar = common dso_local global i32 0, align 4
@termEraseChar = common dso_local global i32 0, align 4
@termKillChar = common dso_local global i32 0, align 4
@termStartChar = common dso_local global i32 0, align 4
@termStopChar = common dso_local global i32 0, align 4
@termForw1Char = common dso_local global i32 0, align 4
@termForw2Char = common dso_local global i32 0, align 4
@termAytChar = common dso_local global i32 0, align 4
@termFlushChar = common dso_local global i32 0, align 4
@termLiteralNextChar = common dso_local global i32 0, align 4
@termRprntChar = common dso_local global i32 0, align 4
@termSuspChar = common dso_local global i32 0, align 4
@termWerasChar = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @tcval(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %15 [
    i32 134, label %5
    i32 145, label %6
    i32 139, label %7
    i32 141, label %8
    i32 140, label %9
    i32 128, label %10
    i32 129, label %11
    i32 136, label %12
    i32 135, label %13
    i32 130, label %14
    i32 142, label %14
    i32 138, label %14
  ]

5:                                                ; preds = %1
  store i32* @termIntChar, i32** %2, align 8
  br label %16

6:                                                ; preds = %1
  store i32* @termQuitChar, i32** %2, align 8
  br label %16

7:                                                ; preds = %1
  store i32* @termEofChar, i32** %2, align 8
  br label %16

8:                                                ; preds = %1
  store i32* @termEraseChar, i32** %2, align 8
  br label %16

9:                                                ; preds = %1
  store i32* @termKillChar, i32** %2, align 8
  br label %16

10:                                               ; preds = %1
  store i32* @termStartChar, i32** %2, align 8
  br label %16

11:                                               ; preds = %1
  store i32* @termStopChar, i32** %2, align 8
  br label %16

12:                                               ; preds = %1
  store i32* @termForw1Char, i32** %2, align 8
  br label %16

13:                                               ; preds = %1
  store i32* @termForw2Char, i32** %2, align 8
  br label %16

14:                                               ; preds = %1, %1, %1
  br label %15

15:                                               ; preds = %1, %14
  store i32* null, i32** %2, align 8
  br label %16

16:                                               ; preds = %15, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %17 = load i32*, i32** %2, align 8
  ret i32* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
