; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslfiles.c_FlOpenIncludeWithPrefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslfiles.c_FlOpenIncludeWithPrefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASL_PARSE_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Include: Opening file - \22%s\22\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@AslGbl_CurrentLineNumber = common dso_local global i64 0, align 8
@DT_ALLOW_MULTILINE_QUOTES = common dso_local global i32 0, align 4
@ASL_EOF = common dso_local global i64 0, align 8
@AslGbl_CurrentLineBuffer = common dso_local global i8* null, align 8
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_INCLUDE_FILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"use #include instead\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i8*)* @FlOpenIncludeWithPrefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @FlOpenIncludeWithPrefix(i8* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i8* @FlMergePathnames(i8* %11, i8* %12)
  store i8* %13, i8** %9, align 8
  %14 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @DbgPrint(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i8*, i8** %9, align 8
  %18 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %53

22:                                               ; preds = %3
  %23 = load i64, i64* @AslGbl_CurrentLineNumber, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* @AslGbl_CurrentLineNumber, align 8
  %25 = load i64, i64* @AslGbl_CurrentLineNumber, align 8
  store i64 %25, i64* %10, align 8
  br label %26

26:                                               ; preds = %43, %22
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @DT_ALLOW_MULTILINE_QUOTES, align 4
  %29 = call i64 @DtGetNextLine(i32* %27, i32 %28)
  %30 = load i64, i64* @ASL_EOF, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load i8*, i8** @AslGbl_CurrentLineBuffer, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 35
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32, i32* @ASL_ERROR, align 4
  %40 = load i32, i32* @ASL_MSG_INCLUDE_FILE, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @AslError(i32 %39, i32 %40, i32* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %32
  br label %26

44:                                               ; preds = %26
  %45 = load i64, i64* %10, align 8
  store i64 %45, i64* @AslGbl_CurrentLineNumber, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* @SEEK_SET, align 4
  %48 = call i32 @fseek(i32* %46, i32 0, i32 %47)
  %49 = load i32*, i32** %8, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @AslPushInputFileStack(i32* %49, i8* %50)
  %52 = load i32*, i32** %8, align 8
  store i32* %52, i32** %4, align 8
  br label %53

53:                                               ; preds = %44, %21
  %54 = load i32*, i32** %4, align 8
  ret i32* %54
}

declare dso_local i8* @FlMergePathnames(i8*, i8*) #1

declare dso_local i32 @DbgPrint(i32, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @DtGetNextLine(i32*, i32) #1

declare dso_local i32 @AslError(i32, i32, i32*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @AslPushInputFileStack(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
