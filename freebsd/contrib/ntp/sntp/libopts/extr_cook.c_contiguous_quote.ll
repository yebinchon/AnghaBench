; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_cook.c_contiguous_quote.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_cook.c_contiguous_quote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"*/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i32*)* @contiguous_quote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @contiguous_quote(i8** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  store i8* %12, i8** %8, align 8
  br label %13

13:                                               ; preds = %86, %3
  br label %14

14:                                               ; preds = %30, %13
  %15 = load i8*, i8** %8, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @IS_WHITESPACE_CHAR(i8 signext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %8, align 8
  %22 = load i8, i8* %20, align 1
  %23 = sext i8 %22 to i32
  %24 = load i32, i32* @NL, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %26, %19
  br label %14

31:                                               ; preds = %14
  %32 = load i8*, i8** %8, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  switch i32 %34, label %87 [
    i32 34, label %35
    i32 39, label %35
    i32 47, label %42
  ]

35:                                               ; preds = %31, %31
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  %38 = load i8, i8* %36, align 1
  %39 = load i8*, i8** %6, align 8
  store i8 %38, i8* %39, align 1
  %40 = load i8*, i8** %8, align 8
  %41 = load i8**, i8*** %5, align 8
  store i8* %40, i8** %41, align 8
  store i32 1, i32* %4, align 4
  br label %90

42:                                               ; preds = %31
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  switch i32 %46, label %47 [
    i32 47, label %49
    i32 42, label %58
  ]

47:                                               ; preds = %42
  %48 = load i8**, i8*** %5, align 8
  store i8* null, i8** %48, align 8
  store i32 0, i32* %4, align 4
  br label %90

49:                                               ; preds = %42
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* @NL, align 4
  %52 = call i8* @strchr(i8* %50, i32 %51)
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i8**, i8*** %5, align 8
  store i8* null, i8** %56, align 8
  store i32 0, i32* %4, align 4
  br label %90

57:                                               ; preds = %49
  br label %86

58:                                               ; preds = %42
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = call i8* @strstr(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %61, i8** %9, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i8**, i8*** %5, align 8
  store i8* null, i8** %65, align 8
  store i32 0, i32* %4, align 4
  br label %90

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %82, %66
  %68 = load i8*, i8** %8, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = icmp ult i8* %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %8, align 8
  %74 = load i8, i8* %72, align 1
  %75 = sext i8 %74 to i32
  %76 = load i32, i32* @NL, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %78, %71
  br label %67

83:                                               ; preds = %67
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  store i8* %85, i8** %8, align 8
  br label %86

86:                                               ; preds = %83, %57
  br label %13

87:                                               ; preds = %31
  %88 = load i8*, i8** %8, align 8
  %89 = load i8**, i8*** %5, align 8
  store i8* %88, i8** %89, align 8
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %64, %55, %47, %35
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i64 @IS_WHITESPACE_CHAR(i8 signext) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
