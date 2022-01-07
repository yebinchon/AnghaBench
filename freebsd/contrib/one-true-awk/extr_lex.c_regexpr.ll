; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lex.c_regexpr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lex.c_regexpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@regexpr.buf = internal global i8* null, align 8
@regexpr.bufsz = internal global i32 500, align 4
@.str = private unnamed_addr constant [26 x i8] c"out of space for rex expr\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"regexpr\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"out of space for reg expr %.10s...\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"newline in regular expression %.10s...\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"non-terminated regular expression %.10s...\00", align 1
@yylval = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@REGEXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regexpr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = load i8*, i8** @regexpr.buf, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = load i32, i32* @regexpr.bufsz, align 4
  %8 = call i64 @malloc(i32 %7)
  %9 = inttoptr i64 %8 to i8*
  store i8* %9, i8** @regexpr.buf, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %6, %0
  %14 = load i8*, i8** @regexpr.buf, align 8
  store i8* %14, i8** %3, align 8
  br label %15

15:                                               ; preds = %61, %13
  %16 = call i8* (...) @input()
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %2, align 4
  %18 = icmp ne i32 %17, 47
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i1 [ false, %15 ], [ %21, %19 ]
  br i1 %23, label %24, label %62

24:                                               ; preds = %22
  %25 = load i8*, i8** %3, align 8
  %26 = load i8*, i8** @regexpr.buf, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = add nsw i64 %29, 3
  %31 = trunc i64 %30 to i32
  %32 = call i32 @adjbuf(i8** @regexpr.buf, i32* @regexpr.bufsz, i32 %31, i32 500, i8** %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = load i8*, i8** @regexpr.buf, align 8
  %36 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %34, %24
  %38 = load i32, i32* %2, align 4
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i8*, i8** %3, align 8
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** @regexpr.buf, align 8
  %43 = call i32 @SYNTAX(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  %44 = call i32 @unput(i8 signext 10)
  br label %62

45:                                               ; preds = %37
  %46 = load i32, i32* %2, align 4
  %47 = icmp eq i32 %46, 92
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %3, align 8
  store i8 92, i8* %49, align 1
  %51 = call i8* (...) @input()
  %52 = ptrtoint i8* %51 to i8
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %3, align 8
  store i8 %52, i8* %53, align 1
  br label %60

55:                                               ; preds = %45
  %56 = load i32, i32* %2, align 4
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %3, align 8
  store i8 %57, i8* %58, align 1
  br label %60

60:                                               ; preds = %55, %48
  br label %61

61:                                               ; preds = %60
  br label %15

62:                                               ; preds = %40, %22
  %63 = load i8*, i8** %3, align 8
  store i8 0, i8* %63, align 1
  %64 = load i32, i32* %2, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i8*, i8** @regexpr.buf, align 8
  %68 = call i32 @SYNTAX(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i8*, i8** @regexpr.buf, align 8
  %71 = call i32 @tostring(i8* %70)
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 4
  %72 = call i32 @unput(i8 signext 47)
  %73 = load i32, i32* @REGEXPR, align 4
  %74 = call i32 @RET(i32 %73)
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @FATAL(i8*, ...) #1

declare dso_local i8* @input(...) #1

declare dso_local i32 @adjbuf(i8**, i32*, i32, i32, i8**, i8*) #1

declare dso_local i32 @SYNTAX(i8*, i8*) #1

declare dso_local i32 @unput(i8 signext) #1

declare dso_local i32 @tostring(i8*) #1

declare dso_local i32 @RET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
