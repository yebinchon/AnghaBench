; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_boolop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_boolop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@True = common dso_local global i32* null, align 8
@False = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"unknown boolean operator %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @boolop(i32** %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32**, i32*** %4, align 8
  %10 = getelementptr inbounds i32*, i32** %9, i64 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32* @execute(i32* %11)
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @istrue(i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @tempfree(i32* %15)
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %65 [
    i32 129, label %18
    i32 130, label %38
    i32 128, label %58
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32*, i32** @True, align 8
  store i32* %22, i32** %3, align 8
  br label %69

23:                                               ; preds = %18
  %24 = load i32**, i32*** %4, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32* @execute(i32* %26)
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @istrue(i32* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @tempfree(i32* %30)
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32*, i32** @True, align 8
  store i32* %35, i32** %3, align 8
  br label %69

36:                                               ; preds = %23
  %37 = load i32*, i32** @False, align 8
  store i32* %37, i32** %3, align 8
  br label %69

38:                                               ; preds = %2
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load i32*, i32** @False, align 8
  store i32* %42, i32** %3, align 8
  br label %69

43:                                               ; preds = %38
  %44 = load i32**, i32*** %4, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32* @execute(i32* %46)
  store i32* %47, i32** %7, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @istrue(i32* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @tempfree(i32* %50)
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32*, i32** @True, align 8
  store i32* %55, i32** %3, align 8
  br label %69

56:                                               ; preds = %43
  %57 = load i32*, i32** @False, align 8
  store i32* %57, i32** %3, align 8
  br label %69

58:                                               ; preds = %2
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32*, i32** @False, align 8
  store i32* %62, i32** %3, align 8
  br label %69

63:                                               ; preds = %58
  %64 = load i32*, i32** @True, align 8
  store i32* %64, i32** %3, align 8
  br label %69

65:                                               ; preds = %2
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @FATAL(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %65
  store i32* null, i32** %3, align 8
  br label %69

69:                                               ; preds = %68, %63, %61, %56, %54, %41, %36, %34, %21
  %70 = load i32*, i32** %3, align 8
  ret i32* %70
}

declare dso_local i32* @execute(i32*) #1

declare dso_local i32 @istrue(i32*) #1

declare dso_local i32 @tempfree(i32*) #1

declare dso_local i32 @FATAL(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
