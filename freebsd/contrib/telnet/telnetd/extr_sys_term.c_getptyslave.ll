; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_sys_term.c_getptyslave.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_sys_term.c_getptyslave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@termbuf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@VERASE = common dso_local global i64 0, align 8
@line = common dso_local global i8* null, align 8
@net = common dso_local global i32 0, align 4
@CRMOD = common dso_local global i32 0, align 4
@ANYP = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@XTABS = common dso_local global i32 0, align 4
@def_rspeed = external dso_local global i32, align 4
@def_tspeed = external dso_local global i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"login_tty\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@TIOCNOTTY = common dso_local global i32 0, align 4
@TIOCSWINSZ = common dso_local global i32 0, align 4
@_PATH_TTY = common dso_local global i32 0, align 4
@pty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @getptyslave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getptyslave() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  store i32 -1, i32* %1, align 4
  %3 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @termbuf, i32 0, i32 0), align 8
  %4 = load i64, i64* @VERASE, align 8
  %5 = getelementptr inbounds i8, i8* %3, i64 %4
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %2, align 1
  %7 = load i8*, i8** @line, align 8
  %8 = call i32 @cleanopen(i8* %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = load i32, i32* @net, align 4
  %13 = load i8*, i8** @line, align 8
  %14 = call i32 @fatalperror(i32 %12, i8* %13)
  br label %15

15:                                               ; preds = %11, %0
  %16 = call i32 (...) @init_termbuf()
  %17 = load i32, i32* @CRMOD, align 4
  %18 = load i32, i32* @ANYP, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @ECHO, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @XTABS, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @termbuf, i32 0, i32 1, i32 0), align 8
  %25 = or i32 %24, %23
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @termbuf, i32 0, i32 1, i32 0), align 8
  %26 = load i32, i32* @def_rspeed, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i32, i32* @def_rspeed, align 4
  br label %31

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 9600, %30 ]
  %33 = call i32 @tty_rspeed(i32 %32)
  %34 = load i32, i32* @def_tspeed, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @def_tspeed, align 4
  br label %39

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 9600, %38 ]
  %41 = call i32 @tty_tspeed(i32 %40)
  %42 = load i8, i8* %2, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i8, i8* %2, align 1
  %46 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @termbuf, i32 0, i32 0), align 8
  %47 = load i64, i64* @VERASE, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8 %45, i8* %48, align 1
  br label %49

49:                                               ; preds = %44, %39
  %50 = call i32 (...) @set_termbuf()
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @login_tty(i32 %51)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @net, align 4
  %56 = call i32 @fatalperror(i32 %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i32, i32* @net, align 4
  %59 = icmp sgt i32 %58, 2
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @net, align 4
  %62 = call i32 @close(i32 %61)
  br label %63

63:                                               ; preds = %60, %57
  ret void
}

declare dso_local i32 @cleanopen(i8*) #1

declare dso_local i32 @fatalperror(i32, i8*) #1

declare dso_local i32 @init_termbuf(...) #1

declare dso_local i32 @tty_rspeed(i32) #1

declare dso_local i32 @tty_tspeed(i32) #1

declare dso_local i32 @set_termbuf(...) #1

declare dso_local i32 @login_tty(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
