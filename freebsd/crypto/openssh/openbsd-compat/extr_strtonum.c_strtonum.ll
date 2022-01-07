; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_strtonum.c_strtonum.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_strtonum.c_strtonum.c"
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
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4 x %struct.errval], align 16
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8** %3, i8*** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %11, align 4
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
  store i32 %35, i32* %11, align 4
  br label %80

36:                                               ; preds = %4
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @strtoll(i8* %37, i8** %10, i32 10)
  store i64 %38, i64* %9, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = icmp eq i8* %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load i8*, i8** %10, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42, %36
  %48 = load i32, i32* @INVALID, align 4
  store i32 %48, i32* %11, align 4
  br label %79

49:                                               ; preds = %42
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @LLONG_MIN, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @errno, align 4
  %55 = load i32, i32* @ERANGE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53, %49
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57, %53
  %62 = load i32, i32* @TOOSMALL, align 4
  store i32 %62, i32* %11, align 4
  br label %78

63:                                               ; preds = %57
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @LLONG_MAX, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* @errno, align 4
  %69 = load i32, i32* @ERANGE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67, %63
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %7, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71, %67
  %76 = load i32, i32* @TOOLARGE, align 4
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %75, %71
  br label %78

78:                                               ; preds = %77, %61
  br label %79

79:                                               ; preds = %78, %47
  br label %80

80:                                               ; preds = %79, %34
  %81 = load i8**, i8*** %8, align 8
  %82 = icmp ne i8** %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x %struct.errval], [4 x %struct.errval]* %12, i64 0, i64 %85
  %87 = getelementptr inbounds %struct.errval, %struct.errval* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 16
  %89 = load i8**, i8*** %8, align 8
  store i8* %88, i8** %89, align 8
  br label %90

90:                                               ; preds = %83, %80
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [4 x %struct.errval], [4 x %struct.errval]* %12, i64 0, i64 %92
  %94 = getelementptr inbounds %struct.errval, %struct.errval* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* @errno, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  store i64 0, i64* %9, align 8
  br label %99

99:                                               ; preds = %98, %90
  %100 = load i64, i64* %9, align 8
  ret i64 %100
}

declare dso_local i64 @strtoll(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
