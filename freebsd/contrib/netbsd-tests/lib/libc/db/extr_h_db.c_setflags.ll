; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/db/extr_h_db.c_setflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/db/extr_h_db.c_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"R_CURSOR\00", align 1
@R_CURSOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"R_FIRST\00", align 1
@R_FIRST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"R_IAFTER\00", align 1
@R_IAFTER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"R_IBEFORE\00", align 1
@R_IBEFORE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"R_LAST\00", align 1
@R_LAST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"R_NEXT\00", align 1
@R_NEXT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"R_NOOVERWRITE\00", align 1
@R_NOOVERWRITE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"R_PREV\00", align 1
@R_PREV = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"R_SETCURSOR\00", align 1
@R_SETCURSOR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"line %zu: %s: unknown flag\00", align 1
@lineno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @setflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setflags(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  br label %5

5:                                                ; preds = %11, %1
  %6 = load i8*, i8** %3, align 8
  %7 = load i8, i8* %6, align 1
  %8 = call i64 @isspace(i8 zeroext %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %10
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %3, align 8
  br label %5

14:                                               ; preds = %5
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 10
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %14
  store i32 0, i32* %2, align 4
  br label %89

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 10)
  store i8* %27, i8** %4, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  store i8 0, i8* %30, align 1
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @R_CURSOR, align 4
  store i32 %36, i32* %2, align 4
  br label %89

37:                                               ; preds = %31
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @R_FIRST, align 4
  store i32 %42, i32* %2, align 4
  br label %89

43:                                               ; preds = %37
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @R_IAFTER, align 4
  store i32 %48, i32* %2, align 4
  br label %89

49:                                               ; preds = %43
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @R_IBEFORE, align 4
  store i32 %54, i32* %2, align 4
  br label %89

55:                                               ; preds = %49
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @R_LAST, align 4
  store i32 %60, i32* %2, align 4
  br label %89

61:                                               ; preds = %55
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @R_NEXT, align 4
  store i32 %66, i32* %2, align 4
  br label %89

67:                                               ; preds = %61
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @R_NOOVERWRITE, align 4
  store i32 %72, i32* %2, align 4
  br label %89

73:                                               ; preds = %67
  %74 = load i8*, i8** %3, align 8
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* @R_PREV, align 4
  store i32 %78, i32* %2, align 4
  br label %89

79:                                               ; preds = %73
  %80 = load i8*, i8** %3, align 8
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* @R_SETCURSOR, align 4
  store i32 %84, i32* %2, align 4
  br label %89

85:                                               ; preds = %79
  %86 = load i32, i32* @lineno, align 4
  %87 = load i8*, i8** %3, align 8
  %88 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %86, i8* %87)
  br label %89

89:                                               ; preds = %85, %83, %77, %71, %65, %59, %53, %47, %41, %35, %24
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
