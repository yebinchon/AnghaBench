; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_testmain.c_buildTestInterface.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_testmain.c_buildTestInterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"break\00", align 1
@ficlBreak = common dso_local global i32 0, align 4
@FW_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@ficlClock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@ficlChDir = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"execxt\00", align 1
@execxt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@ficlLoad = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"pwd\00", align 1
@ficlGetCWD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@ficlSystem = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"spewhash\00", align 1
@spewHash = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"clocks/sec\00", align 1
@clocksPerSec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buildTestInterface(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @ficlBreak, align 4
  %5 = load i32, i32* @FW_DEFAULT, align 4
  %6 = call i32 @ficlBuild(i32* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %5)
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @ficlClock, align 4
  %9 = load i32, i32* @FW_DEFAULT, align 4
  %10 = call i32 @ficlBuild(i32* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @ficlChDir, align 4
  %13 = load i32, i32* @FW_DEFAULT, align 4
  %14 = call i32 @ficlBuild(i32* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @execxt, align 4
  %17 = load i32, i32* @FW_DEFAULT, align 4
  %18 = call i32 @ficlBuild(i32* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @ficlLoad, align 4
  %21 = load i32, i32* @FW_DEFAULT, align 4
  %22 = call i32 @ficlBuild(i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @ficlGetCWD, align 4
  %25 = load i32, i32* @FW_DEFAULT, align 4
  %26 = call i32 @ficlBuild(i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @ficlSystem, align 4
  %29 = load i32, i32* @FW_DEFAULT, align 4
  %30 = call i32 @ficlBuild(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @spewHash, align 4
  %33 = load i32, i32* @FW_DEFAULT, align 4
  %34 = call i32 @ficlBuild(i32* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @clocksPerSec, align 4
  %37 = load i32, i32* @FW_DEFAULT, align 4
  %38 = call i32 @ficlBuild(i32* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @ficlBuild(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
