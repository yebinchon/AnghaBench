; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_optr.c_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_optr.c_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PATH_TTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"fopen on %s fails: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@attnmessage = common dso_local global i8* null, align 8
@timeout = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"excessive operator query failures\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"  DUMP: \22Yes\22 or \22No\22?\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"  DUMP: %s: (\22yes\22 or \22no\22) \00", align 1
@SIGALRM = common dso_local global i32 0, align 4
@sig = common dso_local global i64 0, align 8
@SIG_IGN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @query(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @_PATH_TTY, align 4
  %8 = call i32* @fopen(i32 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %6, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @_PATH_TTY, align 4
  %12 = load i32, i32* @errno, align 4
  %13 = call i32 @strerror(i32 %12)
  %14 = call i32 (i8*, ...) @quit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load i8*, i8** %2, align 8
  store i8* %16, i8** @attnmessage, align 8
  store i64 0, i64* @timeout, align 8
  %17 = call i32 @alarmcatch(i32 0)
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %63, %15
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %20 = load i32*, i32** %6, align 8
  %21 = call i32* @fgets(i8* %19, i32 63, i32* %20)
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @clearerr(i32* %24)
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = icmp sgt i32 %27, 30
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 (i8*, ...) @quit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %23
  br label %62

32:                                               ; preds = %18
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %34 = load i8, i8* %33, align 16
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 121
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %39 = load i8, i8* %38, align 16
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 89
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %32
  store i32 1, i32* %4, align 4
  br label %61

43:                                               ; preds = %37
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %45 = load i8, i8* %44, align 16
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 110
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %50 = load i8, i8* %49, align 16
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 78
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %43
  store i32 0, i32* %4, align 4
  br label %60

54:                                               ; preds = %48
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @stderr, align 4
  %58 = load i8*, i8** %2, align 8
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %54, %53
  br label %61

61:                                               ; preds = %60, %42
  br label %62

62:                                               ; preds = %61, %31
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %18, label %66

66:                                               ; preds = %63
  %67 = call i32 @alarm(i32 0)
  %68 = load i32, i32* @SIGALRM, align 4
  %69 = load i64, i64* @sig, align 8
  %70 = call i64 @signal(i32 %68, i64 %69)
  %71 = load i64, i64* @SIG_IGN, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* @SIGALRM, align 4
  %75 = load i64, i64* @SIG_IGN, align 8
  %76 = call i64 @signal(i32 %74, i64 %75)
  br label %77

77:                                               ; preds = %73, %66
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @fclose(i32* %78)
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @quit(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @alarmcatch(i32) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @clearerr(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i64 @signal(i32, i64) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
