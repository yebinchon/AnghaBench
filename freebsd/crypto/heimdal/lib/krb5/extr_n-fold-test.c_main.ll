; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_n-fold-test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_n-fold-test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testcase = type { i8*, i32, i32* }

@MAXSIZE = common dso_local global i32 0, align 4
@tests = common dso_local global %struct.testcase* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"n-fold(\22%s\22, %d) failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"should be: \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"\0Aresult was: \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.testcase*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @MAXSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.testcase*, %struct.testcase** @tests, align 8
  store %struct.testcase* %15, %struct.testcase** %8, align 8
  br label %16

16:                                               ; preds = %94, %2
  %17 = load %struct.testcase*, %struct.testcase** %8, align 8
  %18 = getelementptr inbounds %struct.testcase, %struct.testcase* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %97

21:                                               ; preds = %16
  %22 = load %struct.testcase*, %struct.testcase** %8, align 8
  %23 = getelementptr inbounds %struct.testcase, %struct.testcase* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.testcase*, %struct.testcase** %8, align 8
  %26 = getelementptr inbounds %struct.testcase, %struct.testcase* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = load %struct.testcase*, %struct.testcase** %8, align 8
  %30 = getelementptr inbounds %struct.testcase, %struct.testcase* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @_krb5_n_fold(i8* %24, i32 %28, i8* %14, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %21
  %38 = load %struct.testcase*, %struct.testcase** %8, align 8
  %39 = getelementptr inbounds %struct.testcase, %struct.testcase* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.testcase*, %struct.testcase** %8, align 8
  %42 = getelementptr inbounds %struct.testcase, %struct.testcase* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @memcmp(i8* %14, i32* %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %93

46:                                               ; preds = %37
  %47 = load %struct.testcase*, %struct.testcase** %8, align 8
  %48 = getelementptr inbounds %struct.testcase, %struct.testcase* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.testcase*, %struct.testcase** %8, align 8
  %51 = getelementptr inbounds %struct.testcase, %struct.testcase* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %49, i32 %52)
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %70, %46
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.testcase*, %struct.testcase** %8, align 8
  %58 = getelementptr inbounds %struct.testcase, %struct.testcase* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = load %struct.testcase*, %struct.testcase** %8, align 8
  %63 = getelementptr inbounds %struct.testcase, %struct.testcase* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %61
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %55

73:                                               ; preds = %55
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %88, %73
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.testcase*, %struct.testcase** %8, align 8
  %78 = getelementptr inbounds %struct.testcase, %struct.testcase* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %14, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %75

91:                                               ; preds = %75
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %93

93:                                               ; preds = %91, %37
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.testcase*, %struct.testcase** %8, align 8
  %96 = getelementptr inbounds %struct.testcase, %struct.testcase* %95, i32 1
  store %struct.testcase* %96, %struct.testcase** %8, align 8
  br label %16

97:                                               ; preds = %16
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %3, align 4
  %99 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_krb5_n_fold(i8*, i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i64 @memcmp(i8*, i32*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
