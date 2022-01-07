; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_strtonum.c_strtonum.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_strtonum.c_strtonum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.errval = type { i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"too small\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"too large\00", align 1
@errno = common dso_local global i32 0, align 4
@INVALID = common dso_local global i32 0, align 4
@LLONG_MIN = common dso_local global i64 0, align 8
@TOOSMALL = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i64 0, align 8
@TOOLARGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strtonum(i8* %0, i64 %1, i64 %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [4 x %struct.errval], align 16
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8** %3, i8*** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %13 = getelementptr inbounds [4 x %struct.errval], [4 x %struct.errval]* %12, i64 0, i64 0
  %14 = getelementptr inbounds %struct.errval, %struct.errval* %13, i32 0, i32 0
  store i8* null, i8** %14, align 16
  %15 = getelementptr inbounds %struct.errval, %struct.errval* %13, i32 0, i32 1
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.errval, %struct.errval* %13, i64 1
  %17 = getelementptr inbounds %struct.errval, %struct.errval* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %17, align 16
  %18 = getelementptr inbounds %struct.errval, %struct.errval* %16, i32 0, i32 1
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.errval, %struct.errval* %16, i64 1
  %21 = getelementptr inbounds %struct.errval, %struct.errval* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 16
  %22 = getelementptr inbounds %struct.errval, %struct.errval* %20, i32 0, i32 1
  %23 = load i32, i32* @ERANGE, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.errval, %struct.errval* %20, i64 1
  %25 = getelementptr inbounds %struct.errval, %struct.errval* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %25, align 16
  %26 = getelementptr inbounds %struct.errval, %struct.errval* %24, i32 0, i32 1
  %27 = load i32, i32* @ERANGE, align 4
  store i32 %27, i32* %26, align 8
  %28 = load i32, i32* @errno, align 4
  %29 = getelementptr inbounds [4 x %struct.errval], [4 x %struct.errval]* %12, i64 0, i64 0
  %30 = getelementptr inbounds %struct.errval, %struct.errval* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  store i32 0, i32* @errno, align 4
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* @INVALID, align 4
  store i32 %35, i32* %10, align 4
  br label %84

36:                                               ; preds = %4
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @strtoll(i8* %37, i8** %11, i32 10)
  store i64 %38, i64* %9, align 8
  %39 = load i32, i32* @errno, align 4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %36
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = icmp eq i8* %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %11, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46, %42, %36
  %52 = load i32, i32* @INVALID, align 4
  store i32 %52, i32* %10, align 4
  br label %83

53:                                               ; preds = %46
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @LLONG_MIN, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @errno, align 4
  %59 = load i32, i32* @ERANGE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57, %53
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61, %57
  %66 = load i32, i32* @TOOSMALL, align 4
  store i32 %66, i32* %10, align 4
  br label %82

67:                                               ; preds = %61
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @LLONG_MAX, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* @errno, align 4
  %73 = load i32, i32* @ERANGE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %71, %67
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75, %71
  %80 = load i32, i32* @TOOLARGE, align 4
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %79, %75
  br label %82

82:                                               ; preds = %81, %65
  br label %83

83:                                               ; preds = %82, %51
  br label %84

84:                                               ; preds = %83, %34
  %85 = load i8**, i8*** %8, align 8
  %86 = icmp ne i8** %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [4 x %struct.errval], [4 x %struct.errval]* %12, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.errval, %struct.errval* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 16
  %93 = load i8**, i8*** %8, align 8
  store i8* %92, i8** %93, align 8
  br label %94

94:                                               ; preds = %87, %84
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x %struct.errval], [4 x %struct.errval]* %12, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.errval, %struct.errval* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* @errno, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  store i64 0, i64* %9, align 8
  br label %103

103:                                              ; preds = %102, %94
  %104 = load i64, i64* %9, align 8
  ret i64 %104
}

declare dso_local i64 @strtoll(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
