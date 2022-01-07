; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdtime/extr_strftime.c_strftime_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdtime/extr_strftime.c_strftime_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@IN_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@YEAR_2000_NAME = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"NULL strftime format \00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"strftime format \22%s\22 \00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"yields only two digits of years in \00", align 1
@IN_SOME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"some locales\00", align 1
@IN_THIS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"the current locale\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"all locales\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strftime_l(i8* noalias %0, i64 %1, i8* noalias %2, %struct.tm* noalias %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.tm* %3, %struct.tm** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = call i32 @FIX_LOCALE(i32 %14)
  %16 = call i32 (...) @tzset()
  %17 = load i32, i32* @IN_NONE, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %23

21:                                               ; preds = %5
  %22 = load i8*, i8** %9, align 8
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %20 ], [ %22, %21 ]
  %25 = load %struct.tm*, %struct.tm** %10, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i32, i32* %11, align 4
  %31 = call i8* @_fmt(i8* %24, %struct.tm* %25, i8* %26, i8* %29, i32* %13, i32 %30)
  store i8* %31, i8** %12, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @IN_NONE, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %76

35:                                               ; preds = %23
  %36 = load i32, i32* @YEAR_2000_NAME, align 4
  %37 = call i32* @getenv(i32 %36)
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %76

39:                                               ; preds = %35
  %40 = load i32, i32* @stderr, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 (i32, i32, i8*, ...) @fprintf_l(i32 %40, i32 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i8*, i8** %9, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %53

48:                                               ; preds = %39
  %49 = load i32, i32* @stderr, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 (i32, i32, i8*, ...) @fprintf_l(i32 %49, i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 @fputs(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @IN_SOME, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %60)
  br label %73

62:                                               ; preds = %53
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @IN_THIS, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @stderr, align 4
  %68 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  br label %72

69:                                               ; preds = %62
  %70 = load i32, i32* @stderr, align 4
  %71 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %59
  %74 = load i32, i32* @stderr, align 4
  %75 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %73, %35, %23
  %77 = load i8*, i8** %12, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = icmp eq i8* %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i64 0, i64* %6, align 8
  br label %90

83:                                               ; preds = %76
  %84 = load i8*, i8** %12, align 8
  store i8 0, i8* %84, align 1
  %85 = load i8*, i8** %12, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  store i64 %89, i64* %6, align 8
  br label %90

90:                                               ; preds = %83, %82
  %91 = load i64, i64* %6, align 8
  ret i64 %91
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local i32 @tzset(...) #1

declare dso_local i8* @_fmt(i8*, %struct.tm*, i8*, i8*, i32*, i32) #1

declare dso_local i32* @getenv(i32) #1

declare dso_local i32 @fprintf_l(i32, i32, i8*, ...) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
