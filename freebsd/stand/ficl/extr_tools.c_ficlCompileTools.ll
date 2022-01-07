; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_tools.c_ficlCompileTools.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_tools.c_ficlCompileTools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [3 x i8] c".s\00", align 1
@displayPStack = common dso_local global i32 0, align 4
@FW_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"bye\00", align 1
@bye = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"forget\00", align 1
@forget = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"see\00", align 1
@see = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"words\00", align 1
@listWords = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"tools\00", align 1
@FICL_TRUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"tools-ext\00", align 1
@FICL_FALSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"r.s\00", align 1
@displayRStack = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c".env\00", align 1
@listEnv = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"env-constant\00", align 1
@envConstant = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"env-2constant\00", align 1
@env2Constant = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"debug-xt\00", align 1
@ficlDebugXT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"parse-order\00", align 1
@ficlListParseSteps = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"step-break\00", align 1
@stepBreak = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"forget-wid\00", align 1
@forgetWid = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"see-xt\00", align 1
@seeXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ficlCompileTools(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @assert(i32* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @displayPStack, align 4
  %11 = load i32, i32* @FW_DEFAULT, align 4
  %12 = call i32 @dictAppendWord(i32* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @bye, align 4
  %15 = load i32, i32* @FW_DEFAULT, align 4
  %16 = call i32 @dictAppendWord(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @forget, align 4
  %19 = load i32, i32* @FW_DEFAULT, align 4
  %20 = call i32 @dictAppendWord(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @see, align 4
  %23 = load i32, i32* @FW_DEFAULT, align 4
  %24 = call i32 @dictAppendWord(i32* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @listWords, align 4
  %27 = load i32, i32* @FW_DEFAULT, align 4
  %28 = call i32 @dictAppendWord(i32* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = load i32, i32* @FICL_TRUE, align 4
  %31 = call i32 @ficlSetEnv(%struct.TYPE_4__* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = load i32, i32* @FICL_FALSE, align 4
  %34 = call i32 @ficlSetEnv(%struct.TYPE_4__* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @displayRStack, align 4
  %37 = load i32, i32* @FW_DEFAULT, align 4
  %38 = call i32 @dictAppendWord(i32* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @listEnv, align 4
  %41 = load i32, i32* @FW_DEFAULT, align 4
  %42 = call i32 @dictAppendWord(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @envConstant, align 4
  %45 = load i32, i32* @FW_DEFAULT, align 4
  %46 = call i32 @dictAppendWord(i32* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* @env2Constant, align 4
  %49 = load i32, i32* @FW_DEFAULT, align 4
  %50 = call i32 @dictAppendWord(i32* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @ficlDebugXT, align 4
  %53 = load i32, i32* @FW_DEFAULT, align 4
  %54 = call i32 @dictAppendWord(i32* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* @ficlListParseSteps, align 4
  %57 = load i32, i32* @FW_DEFAULT, align 4
  %58 = call i32 @dictAppendWord(i32* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* @stepBreak, align 4
  %61 = load i32, i32* @FW_DEFAULT, align 4
  %62 = call i32 @dictAppendWord(i32* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* @forgetWid, align 4
  %65 = load i32, i32* @FW_DEFAULT, align 4
  %66 = call i32 @dictAppendWord(i32* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* @seeXT, align 4
  %69 = load i32, i32* @FW_DEFAULT, align 4
  %70 = call i32 @dictAppendWord(i32* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %68, i32 %69)
  ret void
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @dictAppendWord(i32*, i8*, i32, i32) #1

declare dso_local i32 @ficlSetEnv(%struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
