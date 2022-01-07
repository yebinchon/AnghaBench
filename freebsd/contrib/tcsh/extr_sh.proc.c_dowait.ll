; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_dowait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_dowait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.process* }
%struct.process = type { i32, i64, %struct.process* }
%struct.command = type opaque

@pjobs = common dso_local global i64 0, align 8
@SIG_BLOCK = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@setintr = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4
@proclist = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PRUNNING = common dso_local global i32 0, align 4
@pintr_disabled = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dowait(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca %struct.process*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %11 = load %struct.command*, %struct.command** %4, align 8
  %12 = bitcast %struct.command* %11 to i32**
  %13 = call i32 @USE(i32** %12)
  %14 = load i32**, i32*** %3, align 8
  %15 = call i32 @USE(i32** %14)
  %16 = load i64, i64* @pjobs, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* @pjobs, align 8
  %18 = load i32, i32* @SIG_BLOCK, align 4
  %19 = call i32 @sigprocmask(i32 %18, i32* null, i32* %8)
  %20 = load i32, i32* @SIGCHLD, align 4
  %21 = call i32 @sigdelset(i32* %8, i32 %20)
  %22 = load i64, i64* @setintr, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @SIGINT, align 4
  %26 = call i32 @sigdelset(i32* %8, i32 %25)
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i32, i32* @SIG_BLOCK, align 4
  %29 = call i32 @sigprocmask(i32 %28, i32* null, i32* %7)
  %30 = load i32, i32* @SIGCHLD, align 4
  %31 = call i32 @sigaddset(i32* %7, i32 %30)
  %32 = load i32, i32* @SIG_BLOCK, align 4
  %33 = call i32 @sigprocmask(i32 %32, i32* %7, i32* %6)
  %34 = call i32 (...) @handle_pending_signals()
  br label %35

35:                                               ; preds = %60, %27
  %36 = load %struct.process*, %struct.process** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @proclist, i32 0, i32 0), align 8
  store %struct.process* %36, %struct.process** %5, align 8
  br label %37

37:                                               ; preds = %62, %35
  %38 = load %struct.process*, %struct.process** %5, align 8
  %39 = icmp ne %struct.process* %38, null
  br i1 %39, label %40, label %66

40:                                               ; preds = %37
  %41 = load %struct.process*, %struct.process** %5, align 8
  %42 = getelementptr inbounds %struct.process, %struct.process* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %40
  %46 = load %struct.process*, %struct.process** %5, align 8
  %47 = getelementptr inbounds %struct.process, %struct.process* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PRUNNING, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = call i32 @sigsuspend(i32* %8)
  %54 = load i32, i32* @pintr_disabled, align 4
  store i32 %54, i32* %9, align 4
  store i32 0, i32* @pintr_disabled, align 4
  %55 = call i32 (...) @handle_pending_signals()
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* @pintr_disabled, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %66

60:                                               ; preds = %52
  br label %35

61:                                               ; preds = %45, %40
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.process*, %struct.process** %5, align 8
  %64 = getelementptr inbounds %struct.process, %struct.process* %63, i32 0, i32 2
  %65 = load %struct.process*, %struct.process** %64, align 8
  store %struct.process* %65, %struct.process** %5, align 8
  br label %37

66:                                               ; preds = %59, %37
  store i64 0, i64* @pjobs, align 8
  %67 = load i32, i32* @SIG_SETMASK, align 4
  %68 = call i32 @sigprocmask(i32 %67, i32* %6, i32* null)
  ret void
}

declare dso_local i32 @USE(i32**) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @sigdelset(i32*, i32) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @handle_pending_signals(...) #1

declare dso_local i32 @sigsuspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
