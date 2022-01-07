; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_sys_bsd.c_TerminalSpecialChars.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_sys_bsd.c_TerminalSpecialChars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@termIntChar = common dso_local global i32 0, align 4
@termQuitChar = common dso_local global i32 0, align 4
@termEofChar = common dso_local global i32 0, align 4
@TELOPT_LINEMODE = common dso_local global i32 0, align 4
@termSuspChar = common dso_local global i32 0, align 4
@termFlushChar = common dso_local global i32 0, align 4
@globalmode = common dso_local global i32 0, align 4
@termKillChar = common dso_local global i32 0, align 4
@termEraseChar = common dso_local global i32 0, align 4
@kludgelinemode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TerminalSpecialChars(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @termIntChar, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (...) @intp()
  store i32 0, i32* %2, align 4
  br label %62

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @termQuitChar, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 (...) @sendabort()
  store i32 0, i32* %2, align 4
  br label %62

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @termEofChar, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32, i32* @TELOPT_LINEMODE, align 4
  %21 = call i64 @my_want_state_is_will(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 (...) @sendeof()
  store i32 0, i32* %2, align 4
  br label %62

25:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %62

26:                                               ; preds = %15
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @termSuspChar, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 (...) @sendsusp()
  store i32 0, i32* %2, align 4
  br label %62

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @termFlushChar, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 (...) @xmitAO()
  store i32 0, i32* %2, align 4
  br label %62

38:                                               ; preds = %32
  %39 = load i32, i32* @globalmode, align 4
  %40 = call i32 @MODE_LOCAL_CHARS(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @termKillChar, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 (...) @xmitEL()
  store i32 0, i32* %2, align 4
  br label %62

48:                                               ; preds = %42
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @termEraseChar, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 (...) @xmitEC()
  store i32 0, i32* %2, align 4
  br label %62

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55, %38
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60
  store i32 1, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %52, %46, %36, %30, %25, %23, %13, %7
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @intp(...) #1

declare dso_local i32 @sendabort(...) #1

declare dso_local i64 @my_want_state_is_will(i32) #1

declare dso_local i32 @sendeof(...) #1

declare dso_local i32 @sendsusp(...) #1

declare dso_local i32 @xmitAO(...) #1

declare dso_local i32 @MODE_LOCAL_CHARS(i32) #1

declare dso_local i32 @xmitEL(...) #1

declare dso_local i32 @xmitEC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
