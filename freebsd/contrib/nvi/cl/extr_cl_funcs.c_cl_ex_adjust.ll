; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_funcs.c_cl_ex_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_funcs.c_cl_ex_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32* }

@cl_putchar = common dso_local global i32 0, align 4
@LINES = common dso_local global i32 0, align 4
@MAX_CHARACTER_COLUMNS = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cl_ex_adjust(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.TYPE_3__* @CLP(i32* %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %76 [
    i32 128, label %11
    i32 129, label %39
  ]

11:                                               ; preds = %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* @cl_putchar, align 4
  %21 = call i32 @tputs(i32* %19, i32 1, i32 %20)
  br label %38

22:                                               ; preds = %11
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @LINES, align 4
  %32 = sub nsw i32 %31, 2
  %33 = call i32* @tgoto(i32* %30, i32 0, i32 %32)
  %34 = load i32, i32* @cl_putchar, align 4
  %35 = call i32 @tputs(i32* %33, i32 1, i32 %34)
  br label %37

36:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %79

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %16
  br label %39

39:                                               ; preds = %2, %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = call i32 @putchar(i8 signext 13)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @cl_putchar, align 4
  %50 = call i32 @tputs(i32* %48, i32 1, i32 %49)
  br label %75

51:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %58, %51
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @MAX_CHARACTER_COLUMNS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = call i32 @putchar(i8 signext 8)
  br label %58

58:                                               ; preds = %56
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %52

61:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %68, %61
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @MAX_CHARACTER_COLUMNS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = call i32 @putchar(i8 signext 32)
  br label %68

68:                                               ; preds = %66
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %62

71:                                               ; preds = %62
  %72 = call i32 @putchar(i8 signext 13)
  %73 = load i32, i32* @stdout, align 4
  %74 = call i32 @fflush(i32 %73)
  br label %75

75:                                               ; preds = %71, %44
  br label %78

76:                                               ; preds = %2
  %77 = call i32 (...) @abort() #3
  unreachable

78:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %36
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_3__* @CLP(i32*) #1

declare dso_local i32 @tputs(i32*, i32, i32) #1

declare dso_local i32* @tgoto(i32*, i32, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @fflush(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
