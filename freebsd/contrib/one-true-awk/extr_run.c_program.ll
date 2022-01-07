; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_program.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@env = common dso_local global i32 0, align 4
@True = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"illegal break, continue, next or nextfile from BEGIN\00", align 1
@record = common dso_local global i32 0, align 4
@recsize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"illegal break, continue, next or nextfile from END\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @program(i32** %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @env, align 4
  %8 = call i64 @setjmp(i32 %7) #3
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %63

11:                                               ; preds = %2
  %12 = load i32**, i32*** %4, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = load i32**, i32*** %4, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32* @execute(i32* %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @isexit(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32*, i32** @True, align 8
  store i32* %25, i32** %3, align 8
  br label %97

26:                                               ; preds = %16
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @isjump(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @FATAL(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @tempfree(i32* %33)
  br label %35

35:                                               ; preds = %32, %11
  %36 = load i32**, i32*** %4, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load i32**, i32*** %4, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %40, %35
  br label %46

46:                                               ; preds = %58, %45
  %47 = call i64 @getrec(i32* @record, i32* @recsize, i32 1)
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load i32**, i32*** %4, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32* @execute(i32* %52)
  store i32* %53, i32** %6, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i64 @isexit(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %61

58:                                               ; preds = %49
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @tempfree(i32* %59)
  br label %46

61:                                               ; preds = %57, %46
  br label %62

62:                                               ; preds = %61, %40
  br label %63

63:                                               ; preds = %62, %10
  %64 = load i32, i32* @env, align 4
  %65 = call i64 @setjmp(i32 %64) #3
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %95

68:                                               ; preds = %63
  %69 = load i32**, i32*** %4, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 2
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %94

73:                                               ; preds = %68
  %74 = load i32**, i32*** %4, align 8
  %75 = getelementptr inbounds i32*, i32** %74, i64 2
  %76 = load i32*, i32** %75, align 8
  %77 = call i32* @execute(i32* %76)
  store i32* %77, i32** %6, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call i64 @isbreak(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %73
  %82 = load i32*, i32** %6, align 8
  %83 = call i64 @isnext(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i32*, i32** %6, align 8
  %87 = call i64 @iscont(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85, %81, %73
  %90 = call i32 @FATAL(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %85
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @tempfree(i32* %92)
  br label %94

94:                                               ; preds = %91, %68
  br label %95

95:                                               ; preds = %94, %67
  %96 = load i32*, i32** @True, align 8
  store i32* %96, i32** %3, align 8
  br label %97

97:                                               ; preds = %95, %24
  %98 = load i32*, i32** %3, align 8
  ret i32* %98
}

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #1

declare dso_local i32* @execute(i32*) #2

declare dso_local i64 @isexit(i32*) #2

declare dso_local i64 @isjump(i32*) #2

declare dso_local i32 @FATAL(i8*) #2

declare dso_local i32 @tempfree(i32*) #2

declare dso_local i64 @getrec(i32*, i32*, i32) #2

declare dso_local i64 @isbreak(i32*) #2

declare dso_local i64 @isnext(i32*) #2

declare dso_local i64 @iscont(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
