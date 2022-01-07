; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnetd/extr_sys_term.c_getptyslave.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnetd/extr_sys_term.c_getptyslave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.winsize = type { i64, i64 }

@line = common dso_local global i8* null, align 8
@net = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@termbuf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ONLCR = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@def_rspeed = common dso_local global i64 0, align 8
@def_tspeed = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"login_tty\00", align 1
@ourpty = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@ECHOE = common dso_local global i32 0, align 4
@ECHOK = common dso_local global i32 0, align 4
@EXTB = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@OXTABS = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@TAB3 = common dso_local global i32 0, align 4
@TIOCNOTTY = common dso_local global i32 0, align 4
@TIOCSWINSZ = common dso_local global i32 0, align 4
@_PATH_TTY = common dso_local global i32 0, align 4
@def_col = common dso_local global i64 0, align 8
@def_row = common dso_local global i64 0, align 8
@really_stream = common dso_local global i64 0, align 8
@ttyfd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getptyslave() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.winsize, align 8
  store i32 -1, i32* %1, align 4
  %3 = load i8*, i8** @line, align 8
  %4 = call i32 @cleanopen(i8* %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load i32, i32* @net, align 4
  %9 = load i8*, i8** @line, align 8
  %10 = call i32 @fatalperror(i32 %8, i8* %9)
  br label %11

11:                                               ; preds = %7, %0
  %12 = call i32 (...) @init_termbuf()
  %13 = load i32, i32* @ECHO, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @termbuf, i32 0, i32 2), align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @termbuf, i32 0, i32 2), align 4
  %16 = load i32, i32* @ONLCR, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @termbuf, i32 0, i32 0), align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @termbuf, i32 0, i32 0), align 4
  %19 = load i32, i32* @ICRNL, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @termbuf, i32 0, i32 1), align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @termbuf, i32 0, i32 1), align 4
  %22 = load i32, i32* @IXOFF, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @termbuf, i32 0, i32 1), align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @termbuf, i32 0, i32 1), align 4
  %26 = load i64, i64* @def_rspeed, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %11
  %29 = load i64, i64* @def_rspeed, align 8
  br label %31

30:                                               ; preds = %11
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i64 [ %29, %28 ], [ 9600, %30 ]
  %33 = call i32 @tty_rspeed(i64 %32)
  %34 = load i64, i64* @def_tspeed, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i64, i64* @def_tspeed, align 8
  br label %39

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i64 [ %37, %36 ], [ 9600, %38 ]
  %41 = call i32 @tty_tspeed(i64 %40)
  %42 = call i32 (...) @set_termbuf()
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @login_tty(i32 %43)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @net, align 4
  %48 = call i32 @fatalperror(i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %39
  %50 = load i32, i32* @net, align 4
  %51 = icmp sgt i32 %50, 2
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @net, align 4
  %54 = call i32 @close(i32 %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* @ourpty, align 4
  %57 = icmp sgt i32 %56, 2
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @ourpty, align 4
  %60 = call i32 @close(i32 %59)
  store i32 -1, i32* @ourpty, align 4
  br label %61

61:                                               ; preds = %58, %55
  ret void
}

declare dso_local i32 @cleanopen(i8*) #1

declare dso_local i32 @fatalperror(i32, i8*) #1

declare dso_local i32 @init_termbuf(...) #1

declare dso_local i32 @tty_rspeed(i64) #1

declare dso_local i32 @tty_tspeed(i64) #1

declare dso_local i32 @set_termbuf(...) #1

declare dso_local i32 @login_tty(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
