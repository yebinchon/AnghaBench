; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_argv.c_argv_exp2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_argv.c_argv_exp2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"echo \00", align 1
@O_SHELL = common dso_local global i32 0, align 4
@O_SHELLMETA = common dso_local global i32 0, align 4
@SHELLECHO = common dso_local global i32 0, align 4
@SHELLOFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @argv_exp2(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %13, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @GET_SPACE_RETW(i32* %15, i32* %16, i64 %17, i32 512)
  %19 = load i32*, i32** %13, align 8
  %20 = call i32 (i8*, ...) bitcast (i32 (...)* @L to i32 (i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (i8*, ...) bitcast (i32 (...)* @L to i32 (i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 (i32, ...) bitcast (i32 (...)* @SIZE to i32 (i32, ...)*)(i32 %21)
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = call i32 @MEMCPY(i32* %19, i32 %20, i64 %24)
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 (i8*, ...) bitcast (i32 (...)* @L to i32 (i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 (i32, ...) bitcast (i32 (...)* @SIZE to i32 (i32, ...)*)(i32 %27)
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  store i32* %31, i32** %14, align 8
  %32 = call i32 (i8*, ...) bitcast (i32 (...)* @L to i32 (i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 (i32, ...) bitcast (i32 (...)* @SIZE to i32 (i32, ...)*)(i32 %32)
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %10, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = call i64 @argv_fexp(i32* %36, i32* %37, i32* %38, i64 %39, i32* %40, i64* %10, i32** %13, i64* %9, i32 0)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  br label %118

44:                                               ; preds = %4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @O_SHELL, align 4
  %47 = call i64 @opts_empty(i32* %45, i32 %46, i32 1)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* @O_SHELLMETA, align 4
  %52 = call i64 @opts_empty(i32* %50, i32 %51, i32 1)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %44
  store i64 0, i64* %11, align 8
  br label %85

55:                                               ; preds = %49
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 (i8*, ...) bitcast (i32 (...)* @L to i32 (i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %58 = call i32 (i32, ...) bitcast (i32 (...)* @SIZE to i32 (i32, ...)*)(i32 %57)
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  store i32* %61, i32** %14, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32 (i8*, ...) bitcast (i32 (...)* @L to i32 (i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %64 = call i32 (i32, ...) bitcast (i32 (...)* @SIZE to i32 (i32, ...)*)(i32 %63)
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = sub i64 %62, %66
  store i64 %67, i64* %11, align 8
  br label %68

68:                                               ; preds = %79, %55
  %69 = load i64, i64* %11, align 8
  %70 = icmp ugt i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %68
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @IS_SHELLMETA(i32* %72, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %84

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %11, align 8
  %81 = add i64 %80, -1
  store i64 %81, i64* %11, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %14, align 8
  br label %68

84:                                               ; preds = %77, %68
  br label %85

85:                                               ; preds = %84, %54
  %86 = load i64, i64* %11, align 8
  switch i64 %86, label %105 [
    i64 0, label %87
  ]

87:                                               ; preds = %85
  %88 = load i32*, i32** %13, align 8
  %89 = call i32 (i8*, ...) bitcast (i32 (...)* @L to i32 (i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %90 = call i32 (i32, ...) bitcast (i32 (...)* @SIZE to i32 (i32, ...)*)(i32 %89)
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  store i32* %93, i32** %14, align 8
  %94 = call i32 (i8*, ...) bitcast (i32 (...)* @L to i32 (i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %95 = call i32 (i32, ...) bitcast (i32 (...)* @SIZE to i32 (i32, ...)*)(i32 %94)
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %10, align 8
  %99 = sub i64 %98, %97
  store i64 %99, i64* %10, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = load i32*, i32** %14, align 8
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @argv_exp3(i32* %100, i32* %101, i32* %102, i64 %103)
  store i32 %104, i32* %12, align 4
  br label %117

105:                                              ; preds = %85
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @argv_sexp(i32* %106, i32** %13, i64* %9, i64* %10)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i32 1, i32* %12, align 4
  br label %118

110:                                              ; preds = %105
  %111 = load i32*, i32** %13, align 8
  store i32* %111, i32** %14, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = load i32*, i32** %14, align 8
  %115 = load i64, i64* %10, align 8
  %116 = call i32 @argv_exp3(i32* %112, i32* %113, i32* %114, i64 %115)
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %110, %87
  br label %118

118:                                              ; preds = %117, %109, %43
  %119 = load i32*, i32** %5, align 8
  %120 = load i32*, i32** %13, align 8
  %121 = load i64, i64* %9, align 8
  %122 = call i32 @FREE_SPACEW(i32* %119, i32* %120, i64 %121)
  %123 = load i32, i32* %12, align 4
  ret i32 %123
}

declare dso_local i32 @GET_SPACE_RETW(i32*, i32*, i64, i32) #1

declare dso_local i32 @MEMCPY(i32*, i32, i64) #1

declare dso_local i32 @L(...) #1

declare dso_local i32 @SIZE(...) #1

declare dso_local i64 @argv_fexp(i32*, i32*, i32*, i64, i32*, i64*, i32**, i64*, i32) #1

declare dso_local i64 @opts_empty(i32*, i32, i32) #1

declare dso_local i64 @IS_SHELLMETA(i32*, i32) #1

declare dso_local i32 @argv_exp3(i32*, i32*, i32*, i64) #1

declare dso_local i32 @argv_sexp(i32*, i32**, i64*, i64*) #1

declare dso_local i32 @FREE_SPACEW(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
