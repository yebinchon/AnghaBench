; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_search.c_ficlCompileSearch.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_search.c_ficlCompileSearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [8 x i8] c">search\00", align 1
@searchPush = common dso_local global i32 0, align 4
@FW_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"search>\00", align 1
@searchPop = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"definitions\00", align 1
@definitions = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"forth-wordlist\00", align 1
@forthWordlist = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"get-current\00", align 1
@getCurrent = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"get-order\00", align 1
@getOrder = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"search-wordlist\00", align 1
@searchWordlist = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"set-current\00", align 1
@setCurrent = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"set-order\00", align 1
@setOrder = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"ficl-wordlist\00", align 1
@ficlWordlist = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"search-order\00", align 1
@FICL_TRUE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"search-order-ext\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"wordlists\00", align 1
@FICL_DEFAULT_VOCS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [13 x i8] c"wid-get-name\00", align 1
@widGetName = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"wid-set-name\00", align 1
@widSetName = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [14 x i8] c"wid-set-super\00", align 1
@setParentWid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ficlCompileSearch(%struct.TYPE_4__* %0) #0 {
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
  %10 = load i32, i32* @searchPush, align 4
  %11 = load i32, i32* @FW_DEFAULT, align 4
  %12 = call i32 @dictAppendWord(i32* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @searchPop, align 4
  %15 = load i32, i32* @FW_DEFAULT, align 4
  %16 = call i32 @dictAppendWord(i32* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @definitions, align 4
  %19 = load i32, i32* @FW_DEFAULT, align 4
  %20 = call i32 @dictAppendWord(i32* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @forthWordlist, align 4
  %23 = load i32, i32* @FW_DEFAULT, align 4
  %24 = call i32 @dictAppendWord(i32* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @getCurrent, align 4
  %27 = load i32, i32* @FW_DEFAULT, align 4
  %28 = call i32 @dictAppendWord(i32* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @getOrder, align 4
  %31 = load i32, i32* @FW_DEFAULT, align 4
  %32 = call i32 @dictAppendWord(i32* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @searchWordlist, align 4
  %35 = load i32, i32* @FW_DEFAULT, align 4
  %36 = call i32 @dictAppendWord(i32* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @setCurrent, align 4
  %39 = load i32, i32* @FW_DEFAULT, align 4
  %40 = call i32 @dictAppendWord(i32* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* @setOrder, align 4
  %43 = load i32, i32* @FW_DEFAULT, align 4
  %44 = call i32 @dictAppendWord(i32* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* @ficlWordlist, align 4
  %47 = load i32, i32* @FW_DEFAULT, align 4
  %48 = call i32 @dictAppendWord(i32* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %50 = load i32, i32* @FICL_TRUE, align 4
  %51 = call i32 @ficlSetEnv(%struct.TYPE_4__* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = load i32, i32* @FICL_TRUE, align 4
  %54 = call i32 @ficlSetEnv(%struct.TYPE_4__* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %56 = load i32, i32* @FICL_DEFAULT_VOCS, align 4
  %57 = call i32 @ficlSetEnv(%struct.TYPE_4__* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* @widGetName, align 4
  %60 = load i32, i32* @FW_DEFAULT, align 4
  %61 = call i32 @dictAppendWord(i32* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* @widSetName, align 4
  %64 = load i32, i32* @FW_DEFAULT, align 4
  %65 = call i32 @dictAppendWord(i32* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* @setParentWid, align 4
  %68 = load i32, i32* @FW_DEFAULT, align 4
  %69 = call i32 @dictAppendWord(i32* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %67, i32 %68)
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
