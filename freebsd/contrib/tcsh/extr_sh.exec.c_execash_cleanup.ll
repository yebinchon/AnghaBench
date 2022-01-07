; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exec.c_execash_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exec.c_execash_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.execash_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@doneinp = common dso_local global i64 0, align 8
@didcch = common dso_local global i32 0, align 4
@didfds = common dso_local global i32 0, align 4
@SHIN = common dso_local global i32 0, align 4
@SHOUT = common dso_local global i32 0, align 4
@SHDIAG = common dso_local global i32 0, align 4
@OLDSTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @execash_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execash_cleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.execash_state*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.execash_state*
  store %struct.execash_state* %5, %struct.execash_state** %3, align 8
  %6 = load i32, i32* @SIGINT, align 4
  %7 = load %struct.execash_state*, %struct.execash_state** %3, align 8
  %8 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %7, i32 0, i32 12
  %9 = call i32 @sigaction(i32 %6, i32* %8, i32* null)
  %10 = load i32, i32* @SIGQUIT, align 4
  %11 = load %struct.execash_state*, %struct.execash_state** %3, align 8
  %12 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %11, i32 0, i32 11
  %13 = call i32 @sigaction(i32 %10, i32* %12, i32* null)
  %14 = load i32, i32* @SIGTERM, align 4
  %15 = load %struct.execash_state*, %struct.execash_state** %3, align 8
  %16 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %15, i32 0, i32 10
  %17 = call i32 @sigaction(i32 %14, i32* %16, i32* null)
  store i64 0, i64* @doneinp, align 8
  %18 = load %struct.execash_state*, %struct.execash_state** %3, align 8
  %19 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* @didcch, align 4
  %21 = load %struct.execash_state*, %struct.execash_state** %3, align 8
  %22 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* @didfds, align 4
  %24 = load i32, i32* @SHIN, align 4
  %25 = call i32 @xclose(i32 %24)
  %26 = load i32, i32* @SHOUT, align 4
  %27 = call i32 @xclose(i32 %26)
  %28 = load i32, i32* @SHDIAG, align 4
  %29 = call i32 @xclose(i32 %28)
  %30 = load i32, i32* @OLDSTD, align 4
  %31 = call i32 @xclose(i32 %30)
  %32 = load %struct.execash_state*, %struct.execash_state** %3, align 8
  %33 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.execash_state*, %struct.execash_state** %3, align 8
  %36 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dmove(i32 %34, i32 %37)
  store i32 %38, i32* @SHIN, align 4
  %39 = call i32 @close_on_exec(i32 %38, i32 1)
  %40 = load %struct.execash_state*, %struct.execash_state** %3, align 8
  %41 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.execash_state*, %struct.execash_state** %3, align 8
  %44 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dmove(i32 %42, i32 %45)
  store i32 %46, i32* @SHOUT, align 4
  %47 = call i32 @close_on_exec(i32 %46, i32 1)
  %48 = load %struct.execash_state*, %struct.execash_state** %3, align 8
  %49 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.execash_state*, %struct.execash_state** %3, align 8
  %52 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dmove(i32 %50, i32 %53)
  store i32 %54, i32* @SHDIAG, align 4
  %55 = call i32 @close_on_exec(i32 %54, i32 1)
  %56 = load %struct.execash_state*, %struct.execash_state** %3, align 8
  %57 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.execash_state*, %struct.execash_state** %3, align 8
  %60 = getelementptr inbounds %struct.execash_state, %struct.execash_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dmove(i32 %58, i32 %61)
  store i32 %62, i32* @OLDSTD, align 4
  %63 = call i32 @close_on_exec(i32 %62, i32 1)
  ret void
}

declare dso_local i32 @sigaction(i32, i32*, i32*) #1

declare dso_local i32 @xclose(i32) #1

declare dso_local i32 @close_on_exec(i32, i32) #1

declare dso_local i32 @dmove(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
