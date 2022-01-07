; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_doonintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_doonintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.command = type { i32 }

@parintr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SIG_IGN = common dso_local global i64 0, align 8
@setintr = common dso_local global i64 0, align 8
@intty = common dso_local global i64 0, align 8
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_TERMINAL = common dso_local global i32 0, align 4
@gointr = common dso_local global i32* null, align 8
@SIGINT = common dso_local global i32 0, align 4
@queue_pintr = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i64 0, align 8
@STRminus = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doonintr(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %7 = load i32**, i32*** %3, align 8
  %8 = getelementptr inbounds i32*, i32** %7, i64 1
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %6, align 8
  %10 = load %struct.command*, %struct.command** %4, align 8
  %11 = call i32 @USE(%struct.command* %10)
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @parintr, i32 0, i32 0), align 8
  %13 = load i64, i64* @SIG_IGN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %64

16:                                               ; preds = %2
  %17 = load i64, i64* @setintr, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i64, i64* @intty, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* @ERR_NAME, align 4
  %24 = load i32, i32* @ERR_TERMINAL, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @stderror(i32 %25)
  br label %27

27:                                               ; preds = %22, %19, %16
  %28 = load i32*, i32** @gointr, align 8
  store i32* %28, i32** %5, align 8
  store i32* null, i32** @gointr, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @xfree(i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load i64, i64* @setintr, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @SIGINT, align 4
  %38 = load i32, i32* @queue_pintr, align 4
  %39 = call i32 @sigset_interrupting(i32 %37, i32 %38)
  br label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @SIGINT, align 4
  %42 = load i64, i64* @SIG_DFL, align 8
  %43 = call i32 @signal(i32 %41, i64 %42)
  br label %44

44:                                               ; preds = %40, %36
  store i32* null, i32** @gointr, align 8
  br label %64

45:                                               ; preds = %27
  %46 = load i32*, i32** %6, align 8
  %47 = call i32* @strip(i32* %46)
  store i32* %47, i32** %6, align 8
  %48 = load i32*, i32** @STRminus, align 8
  %49 = call i64 @eq(i32* %47, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32, i32* @SIGINT, align 4
  %53 = load i64, i64* @SIG_IGN, align 8
  %54 = call i32 @signal(i32 %52, i64 %53)
  %55 = load i32*, i32** @STRminus, align 8
  %56 = call i32* @Strsave(i32* %55)
  store i32* %56, i32** @gointr, align 8
  br label %63

57:                                               ; preds = %45
  %58 = load i32*, i32** %6, align 8
  %59 = call i32* @Strsave(i32* %58)
  store i32* %59, i32** @gointr, align 8
  %60 = load i32, i32* @SIGINT, align 4
  %61 = load i32, i32* @queue_pintr, align 4
  %62 = call i32 @sigset_interrupting(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %57, %51
  br label %64

64:                                               ; preds = %15, %63, %44
  ret void
}

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i32 @stderror(i32) #1

declare dso_local i32 @xfree(i32*) #1

declare dso_local i32 @sigset_interrupting(i32, i32) #1

declare dso_local i32 @signal(i32, i64) #1

declare dso_local i64 @eq(i32*, i32*) #1

declare dso_local i32* @strip(i32*) #1

declare dso_local i32* @Strsave(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
