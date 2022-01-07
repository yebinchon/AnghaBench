; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_terminal.c_getconnmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_terminal.c_getconnmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@TELOPT_ECHO = common dso_local global i32 0, align 4
@MODE_ECHO = common dso_local global i32 0, align 4
@localflow = common dso_local global i64 0, align 8
@MODE_FLOW = common dso_local global i32 0, align 4
@eight = common dso_local global i32 0, align 4
@TELOPT_BINARY = common dso_local global i32 0, align 4
@MODE_INBIN = common dso_local global i32 0, align 4
@MODE_OUT8 = common dso_local global i32 0, align 4
@MODE_OUTBIN = common dso_local global i32 0, align 4
@TELOPT_LINEMODE = common dso_local global i32 0, align 4
@linemode = common dso_local global i32 0, align 4
@MODE_EDIT = common dso_local global i32 0, align 4
@MODE_TRAPSIG = common dso_local global i32 0, align 4
@TELOPT_SGA = common dso_local global i32 0, align 4
@clocks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@dontlecho = common dso_local global i64 0, align 8
@kludgelinemode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getconnmode() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @TELOPT_ECHO, align 4
  %3 = call i64 @my_want_state_is_dont(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @MODE_ECHO, align 4
  %7 = load i32, i32* %1, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* %1, align 4
  br label %9

9:                                                ; preds = %5, %0
  %10 = load i64, i64* @localflow, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* @MODE_FLOW, align 4
  %14 = load i32, i32* %1, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %12, %9
  %17 = load i32, i32* @eight, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @TELOPT_BINARY, align 4
  %22 = call i64 @my_want_state_is_will(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20, %16
  %25 = load i32, i32* @MODE_INBIN, align 4
  %26 = load i32, i32* %1, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* @eight, align 4
  %30 = and i32 %29, 2
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @MODE_OUT8, align 4
  %34 = load i32, i32* %1, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* @TELOPT_BINARY, align 4
  %38 = call i64 @his_want_state_is_will(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* @MODE_OUTBIN, align 4
  %42 = load i32, i32* %1, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %1, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* @TELOPT_LINEMODE, align 4
  %46 = call i64 @my_want_state_is_will(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @linemode, align 4
  %50 = load i32, i32* %1, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %1, align 4
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* %1, align 4
  ret i32 %53
}

declare dso_local i64 @my_want_state_is_dont(i32) #1

declare dso_local i64 @my_want_state_is_will(i32) #1

declare dso_local i64 @his_want_state_is_will(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
