; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcompile.c_CmDoCompile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcompile.c_CmDoCompile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [27 x i8] c"*** Total Compile time ***\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Open input and output files\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Preprocess input file\00", align 1
@AslGbl_PreprocessFlag = common dso_local global i64 0, align 8
@ASL_DEFINE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i32 0, align 4
@AslGbl_CurrentLineNumber = common dso_local global i32 0, align 4
@AslGbl_LogicalLineNumber = common dso_local global i32 0, align 4
@AslGbl_PreprocessOnly = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Parse source code and build parse tree\00", align 1
@AslGbl_SyntaxError = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [58 x i8] c"Compiler aborting due to parser-detected syntax error(s)\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@AslGbl_ParserErrorDetected = common dso_local global i8* null, align 8
@AslGbl_ParseTreeRoot = common dso_local global %struct.TYPE_8__* null, align 8
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_COMPILER_INTERNAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"- Could not resolve parse tree root node\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Flush source input\00", align 1
@AslGbl_PruneParseTree = common dso_local global i64 0, align 8
@AslGbl_PruneDepth = common dso_local global i32 0, align 4
@AslGbl_PruneType = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"Parse tree transforms\00", align 1
@ASL_DEBUG_OUTPUT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"\0AParse tree transforms\0A\0A\00", align 1
@ASL_WALK_VISIT_TWICE = common dso_local global i32 0, align 4
@TrAmlTransformWalkBegin = common dso_local global i32* null, align 8
@TrAmlTransformWalkEnd = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"Generate AML opcodes\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Generating AML opcodes\0A\0A\00", align 1
@ASL_WALK_VISIT_UPWARD = common dso_local global i32 0, align 4
@OpcAmlOpcodeWalk = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CmDoCompile() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = call i32 @UtBeginEvent(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %5, i32* %2, align 4
  %6 = call i32 @UtBeginEvent(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @UtEndEvent(i32 %7)
  %9 = call i32 @UtBeginEvent(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 %9, i32* %3, align 4
  %10 = load i64, i64* @AslGbl_PreprocessFlag, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %0
  %13 = load i32, i32* @ASL_DEFINE, align 4
  %14 = load i32, i32* @FALSE, align 4
  %15 = call i32 @PrAddDefine(i32 %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 %14)
  %16 = call i32 (...) @PrDoPreprocess()
  store i32 1, i32* @AslGbl_CurrentLineNumber, align 4
  store i32 1, i32* @AslGbl_LogicalLineNumber, align 4
  %17 = load i64, i64* @AslGbl_PreprocessOnly, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @UtEndEvent(i32 %20)
  %22 = load i32, i32* @AE_OK, align 4
  store i32 %22, i32* %1, align 4
  br label %93

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23, %0
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @UtEndEvent(i32 %25)
  %27 = call i32 @UtBeginEvent(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  store i32 %27, i32* %3, align 4
  %28 = call i32 (...) @AslCompilerparse()
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @UtEndEvent(i32 %29)
  %31 = load i64, i64* @AslGbl_SyntaxError, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  %36 = call %struct.TYPE_7__* (...) @FlGetCurrentFileNode()
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %4, align 8
  %37 = load i8*, i8** @TRUE, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @TRUE, align 8
  store i8* %40, i8** @AslGbl_ParserErrorDetected, align 8
  %41 = call i32 (...) @LsDumpParseTree()
  br label %89

42:                                               ; preds = %24
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @AslGbl_ParseTreeRoot, align 8
  %44 = icmp ne %struct.TYPE_8__* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @ASL_ERROR, align 4
  %47 = load i32, i32* @ASL_MSG_COMPILER_INTERNAL, align 4
  %48 = call i32 @AslError(i32 %46, i32 %47, i32* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %89

49:                                               ; preds = %42
  %50 = call i32 @UtBeginEvent(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  store i32 %50, i32* %3, align 4
  %51 = call i32 (...) @CmFlushSourceCode()
  %52 = load i64, i64* @AslGbl_PruneParseTree, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @AslGbl_PruneDepth, align 4
  %56 = load i32, i32* @AslGbl_PruneType, align 4
  %57 = call i32 @AslPruneParseTree(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %49
  %59 = call i32 (...) @LsDumpParseTree()
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @AslGbl_ParseTreeRoot, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @OpcGetIntegerWidth(i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @UtEndEvent(i32 %65)
  %67 = call i32 @UtBeginEvent(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* @ASL_DEBUG_OUTPUT, align 4
  %69 = call i32 @DbgPrint(i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @AslGbl_ParseTreeRoot, align 8
  %71 = load i32, i32* @ASL_WALK_VISIT_TWICE, align 4
  %72 = load i32*, i32** @TrAmlTransformWalkBegin, align 8
  %73 = load i32, i32* @TrAmlTransformWalkEnd, align 4
  %74 = call i32 @TrWalkParseTree(%struct.TYPE_8__* %70, i32 %71, i32* %72, i32 %73, i32* null)
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @UtEndEvent(i32 %75)
  %77 = call i32 @UtBeginEvent(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* @ASL_DEBUG_OUTPUT, align 4
  %79 = call i32 @DbgPrint(i32 %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** @AslGbl_ParseTreeRoot, align 8
  %81 = load i32, i32* @ASL_WALK_VISIT_UPWARD, align 4
  %82 = load i32, i32* @OpcAmlOpcodeWalk, align 4
  %83 = call i32 @TrWalkParseTree(%struct.TYPE_8__* %80, i32 %81, i32* null, i32 %82, i32* null)
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @UtEndEvent(i32 %84)
  %86 = load i32, i32* %2, align 4
  %87 = call i32 @UtEndEvent(i32 %86)
  %88 = load i32, i32* @AE_OK, align 4
  store i32 %88, i32* %1, align 4
  br label %93

89:                                               ; preds = %45, %33
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @UtEndEvent(i32 %90)
  %92 = load i32, i32* @AE_ERROR, align 4
  store i32 %92, i32* %1, align 4
  br label %93

93:                                               ; preds = %89, %58, %19
  %94 = load i32, i32* %1, align 4
  ret i32 %94
}

declare dso_local i32 @UtBeginEvent(i8*) #1

declare dso_local i32 @UtEndEvent(i32) #1

declare dso_local i32 @PrAddDefine(i32, i8*, i32) #1

declare dso_local i32 @PrDoPreprocess(...) #1

declare dso_local i32 @AslCompilerparse(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @FlGetCurrentFileNode(...) #1

declare dso_local i32 @LsDumpParseTree(...) #1

declare dso_local i32 @AslError(i32, i32, i32*, i8*) #1

declare dso_local i32 @CmFlushSourceCode(...) #1

declare dso_local i32 @AslPruneParseTree(i32, i32) #1

declare dso_local i32 @OpcGetIntegerWidth(i32) #1

declare dso_local i32 @DbgPrint(i32, i8*) #1

declare dso_local i32 @TrWalkParseTree(%struct.TYPE_8__*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
