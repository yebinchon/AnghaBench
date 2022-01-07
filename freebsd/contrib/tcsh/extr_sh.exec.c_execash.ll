; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exec.c_execash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exec.c_execash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.execash_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32 }

@chkstop = common dso_local global i64 0, align 8
@setintr = common dso_local global i64 0, align 8
@STRsavehist = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@parintr = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@parterm = common dso_local global i32 0, align 4
@didfds = common dso_local global i64 0, align 8
@didcch = common dso_local global i64 0, align 8
@SHIN = common dso_local global i32 0, align 4
@SHOUT = common dso_local global i32 0, align 4
@SHDIAG = common dso_local global i32 0, align 4
@OLDSTD = common dso_local global i32 0, align 4
@execash_cleanup = common dso_local global i32 0, align 4
@mainpid = common dso_local global i64 0, align 8
@__nt_really_exec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @execash(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca %struct.execash_state, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %6 = load i32**, i32*** %3, align 8
  %7 = call i32 @USE(i32** %6)
  %8 = load i64, i64* @chkstop, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i64, i64* @setintr, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 @panystop(i32 0)
  br label %15

15:                                               ; preds = %13, %10, %2
  %16 = load i32, i32* @STRsavehist, align 4
  %17 = call i32* @adrof(i32 %16)
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @rechist(i32* null, i32 %19)
  %21 = load i32, i32* @SIGINT, align 4
  %22 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %5, i32 0, i32 12
  %23 = call i32 @sigaction(i32 %21, i32* @parintr, i32* %22)
  %24 = load i32, i32* @SIGQUIT, align 4
  %25 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %5, i32 0, i32 11
  %26 = call i32 @sigaction(i32 %24, i32* @parintr, i32* %25)
  %27 = load i32, i32* @SIGTERM, align 4
  %28 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %5, i32 0, i32 10
  %29 = call i32 @sigaction(i32 %27, i32* @parterm, i32* %28)
  %30 = load i64, i64* @didfds, align 8
  %31 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %5, i32 0, i32 9
  store i64 %30, i64* %31, align 8
  %32 = load i64, i64* @didcch, align 8
  %33 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %5, i32 0, i32 8
  store i64 %32, i64* %33, align 8
  %34 = load i32, i32* @SHIN, align 4
  %35 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %5, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* @SHOUT, align 4
  %37 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %5, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @SHDIAG, align 4
  %39 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %5, i32 0, i32 2
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* @OLDSTD, align 4
  %41 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %5, i32 0, i32 3
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @SHIN, align 4
  %43 = call i32 @dcopy(i32 %42, i32 -1)
  %44 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %5, i32 0, i32 4
  store i32 %43, i32* %44, align 8
  %45 = call i32 @close_on_exec(i32 %43, i32 1)
  %46 = load i32, i32* @SHOUT, align 4
  %47 = call i32 @dcopy(i32 %46, i32 -1)
  %48 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %5, i32 0, i32 5
  store i32 %47, i32* %48, align 4
  %49 = call i32 @close_on_exec(i32 %47, i32 1)
  %50 = load i32, i32* @SHDIAG, align 4
  %51 = call i32 @dcopy(i32 %50, i32 -1)
  %52 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %5, i32 0, i32 6
  store i32 %51, i32* %52, align 8
  %53 = call i32 @close_on_exec(i32 %51, i32 1)
  %54 = load i32, i32* @OLDSTD, align 4
  %55 = call i32 @dcopy(i32 %54, i32 -1)
  %56 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %5, i32 0, i32 7
  store i32 %55, i32* %56, align 4
  %57 = call i32 @close_on_exec(i32 %55, i32 1)
  %58 = load %struct.command*, %struct.command** %4, align 8
  %59 = getelementptr inbounds %struct.command, %struct.command* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @lshift(i32 %60, i32 1)
  %62 = call i32 @dcopy(i32 0, i32 -1)
  store i32 %62, i32* @SHIN, align 4
  %63 = call i32 @close_on_exec(i32 %62, i32 1)
  %64 = call i32 @dcopy(i32 1, i32 -1)
  store i32 %64, i32* @SHOUT, align 4
  %65 = call i32 @close_on_exec(i32 %64, i32 1)
  %66 = call i32 @dcopy(i32 2, i32 -1)
  store i32 %66, i32* @SHDIAG, align 4
  %67 = call i32 @close_on_exec(i32 %66, i32 1)
  store i64 0, i64* @didcch, align 8
  store i64 0, i64* @didfds, align 8
  %68 = load i32, i32* @execash_cleanup, align 4
  %69 = call i32 @cleanup_push(%struct.execash_state* %5, i32 %68)
  %70 = load i64, i64* @mainpid, align 8
  %71 = call i64 (...) @getpid()
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %15
  %74 = call i32 @shlvl(i32 -1)
  br label %75

75:                                               ; preds = %73, %15
  %76 = load %struct.command*, %struct.command** %4, align 8
  %77 = call i32 @doexec(%struct.command* %76, i32 1)
  %78 = call i32 @cleanup_until(%struct.execash_state* %5)
  ret void
}

declare dso_local i32 @USE(i32**) #1

declare dso_local i32 @panystop(i32) #1

declare dso_local i32 @rechist(i32*, i32) #1

declare dso_local i32* @adrof(i32) #1

declare dso_local i32 @sigaction(i32, i32*, i32*) #1

declare dso_local i32 @close_on_exec(i32, i32) #1

declare dso_local i32 @dcopy(i32, i32) #1

declare dso_local i32 @lshift(i32, i32) #1

declare dso_local i32 @cleanup_push(%struct.execash_state*, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @shlvl(i32) #1

declare dso_local i32 @doexec(%struct.command*, i32) #1

declare dso_local i32 @cleanup_until(%struct.execash_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
