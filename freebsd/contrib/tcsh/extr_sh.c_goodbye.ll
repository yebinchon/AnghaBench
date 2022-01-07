; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.c_goodbye.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.c_goodbye.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type opaque

@loginsh = common dso_local global i64 0, align 8
@SIGQUIT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIG_UNBLOCK = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@phup_disabled = common dso_local global i32 0, align 4
@setintr = common dso_local global i64 0, align 8
@STRlogout = common dso_local global i32 0, align 4
@STRnormal = common dso_local global i32 0, align 4
@VAR_READWRITE = common dso_local global i32 0, align 4
@STRhome = common dso_local global i32 0, align 4
@STRsldtlogout = common dso_local global i32 0, align 4
@_PATH_DOTLOGOUT = common dso_local global i32 0, align 4
@do_logout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodbye(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %7 = load i32**, i32*** %3, align 8
  %8 = call i32 @USE(i32** %7)
  %9 = load %struct.command*, %struct.command** %4, align 8
  %10 = bitcast %struct.command* %9 to i32**
  %11 = call i32 @USE(i32** %10)
  %12 = call i32 (...) @record()
  %13 = load i64, i64* @loginsh, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %66

15:                                               ; preds = %2
  %16 = call i32 @sigemptyset(i32* %6)
  %17 = load i32, i32* @SIGQUIT, align 4
  %18 = load i32, i32* @SIG_IGN, align 4
  %19 = call i32 @signal(i32 %17, i32 %18)
  %20 = load i32, i32* @SIGQUIT, align 4
  %21 = call i32 @sigaddset(i32* %6, i32 %20)
  %22 = load i32, i32* @SIG_UNBLOCK, align 4
  %23 = call i32 @sigprocmask(i32 %22, i32* %6, i32* null)
  %24 = load i32, i32* @SIGINT, align 4
  %25 = load i32, i32* @SIG_IGN, align 4
  %26 = call i32 @signal(i32 %24, i32 %25)
  %27 = load i32, i32* @SIGINT, align 4
  %28 = call i32 @sigaddset(i32* %6, i32 %27)
  %29 = load i32, i32* @SIGTERM, align 4
  %30 = load i32, i32* @SIG_IGN, align 4
  %31 = call i32 @signal(i32 %29, i32 %30)
  %32 = load i32, i32* @SIGTERM, align 4
  %33 = call i32 @sigaddset(i32* %6, i32 %32)
  %34 = load i32, i32* @SIGHUP, align 4
  %35 = load i32, i32* @SIG_IGN, align 4
  %36 = call i32 @signal(i32 %34, i32 %35)
  %37 = load i32, i32* @SIGHUP, align 4
  %38 = call i32 @sigaddset(i32* %6, i32 %37)
  %39 = load i32, i32* @SIG_UNBLOCK, align 4
  %40 = call i32 @sigprocmask(i32 %39, i32* %6, i32* null)
  store i32 1, i32* @phup_disabled, align 4
  store i64 0, i64* @setintr, align 8
  %41 = call i64 (...) @cleanup_push_mark()
  store i64 %41, i64* %5, align 8
  %42 = call i64 (...) @setexit()
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %15
  %45 = load i32, i32* @STRlogout, align 4
  %46 = call i64 @adrof(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @STRlogout, align 4
  %50 = load i32, i32* @STRnormal, align 4
  %51 = load i32, i32* @VAR_READWRITE, align 4
  %52 = call i32 @setcopy(i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %44
  %54 = load i32, i32* @STRhome, align 4
  %55 = call i64 @adrof(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, i32* @STRhome, align 4
  %59 = call i32 @varval(i32 %58)
  %60 = load i32, i32* @STRsldtlogout, align 4
  %61 = call i32 @srccat(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %53
  br label %63

63:                                               ; preds = %62, %15
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @cleanup_pop_mark(i64 %64)
  br label %66

66:                                               ; preds = %63, %2
  %67 = call i32 (...) @exitstat()
  ret void
}

declare dso_local i32 @USE(i32**) #1

declare dso_local i32 @record(...) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i64 @cleanup_push_mark(...) #1

declare dso_local i64 @setexit(...) #1

declare dso_local i64 @adrof(i32) #1

declare dso_local i32 @setcopy(i32, i32, i32) #1

declare dso_local i32 @srccat(i32, i32) #1

declare dso_local i32 @varval(i32) #1

declare dso_local i32 @cleanup_pop_mark(i64) #1

declare dso_local i32 @exitstat(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
