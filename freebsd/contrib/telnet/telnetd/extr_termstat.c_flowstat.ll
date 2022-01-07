; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_termstat.c_flowstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_termstat.c_flowstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TELOPT_LFLOW = common dso_local global i32 0, align 4
@flowmode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"%c%c%c%c%c%c\00", align 1
@IAC = common dso_local global i32 0, align 4
@SB = common dso_local global i32 0, align 4
@LFLOW_ON = common dso_local global i32 0, align 4
@LFLOW_OFF = common dso_local global i32 0, align 4
@SE = common dso_local global i32 0, align 4
@restartany = common dso_local global i64 0, align 8
@LFLOW_RESTART_ANY = common dso_local global i32 0, align 4
@LFLOW_RESTART_XON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flowstat() #0 {
  %1 = load i32, i32* @TELOPT_LFLOW, align 4
  %2 = call i64 @his_state_is_will(i32 %1)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %45

4:                                                ; preds = %0
  %5 = call i64 (...) @tty_flowmode()
  %6 = load i64, i64* @flowmode, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = call i64 (...) @tty_flowmode()
  store i64 %9, i64* @flowmode, align 8
  %10 = load i32, i32* @IAC, align 4
  %11 = load i32, i32* @SB, align 4
  %12 = load i32, i32* @TELOPT_LFLOW, align 4
  %13 = load i64, i64* @flowmode, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = load i32, i32* @LFLOW_ON, align 4
  br label %19

17:                                               ; preds = %8
  %18 = load i32, i32* @LFLOW_OFF, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = load i32, i32* @IAC, align 4
  %22 = load i32, i32* @SE, align 4
  %23 = call i32 @output_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11, i32 %12, i32 %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %4
  %25 = call i64 (...) @tty_restartany()
  %26 = load i64, i64* @restartany, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = call i64 (...) @tty_restartany()
  store i64 %29, i64* @restartany, align 8
  %30 = load i32, i32* @IAC, align 4
  %31 = load i32, i32* @SB, align 4
  %32 = load i32, i32* @TELOPT_LFLOW, align 4
  %33 = load i64, i64* @restartany, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @LFLOW_RESTART_ANY, align 4
  br label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @LFLOW_RESTART_XON, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = load i32, i32* @IAC, align 4
  %42 = load i32, i32* @SE, align 4
  %43 = call i32 @output_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %32, i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %24
  br label %45

45:                                               ; preds = %44, %0
  ret void
}

declare dso_local i64 @his_state_is_will(i32) #1

declare dso_local i64 @tty_flowmode(...) #1

declare dso_local i32 @output_data(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @tty_restartany(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
