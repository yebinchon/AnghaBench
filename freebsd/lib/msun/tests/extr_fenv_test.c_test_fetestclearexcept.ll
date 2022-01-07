; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fenv_test.c_test_fetestclearexcept.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fenv_test.c_test_fetestclearexcept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NEXCEPTS = common dso_local global i32 0, align 4
@std_except_sets = common dso_local global i32* null, align 8
@FE_ALL_EXCEPT = common dso_local global i32 0, align 4
@FE_UNDERFLOW = common dso_local global i32 0, align 4
@FE_OVERFLOW = common dso_local global i32 0, align 4
@FE_INEXACT = common dso_local global i32 0, align 4
@ALL_STD_EXCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_fetestclearexcept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fetestclearexcept() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %18, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @NEXCEPTS, align 4
  %6 = shl i32 1, %5
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = load i32*, i32** @std_except_sets, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @fetestexcept(i32 %13)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  br label %18

18:                                               ; preds = %8
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %3

21:                                               ; preds = %3
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %100, %21
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @NEXCEPTS, align 4
  %25 = shl i32 1, %24
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %103

27:                                               ; preds = %22
  %28 = load i32*, i32** @std_except_sets, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @raiseexcept(i32 %33)
  %35 = load i32, i32* %1, align 4
  %36 = call i64 @fetestexcept(i32 %35)
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp eq i64 %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %43 = call i64 @feclearexcept(i32 %42)
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %48 = call i64 @fetestexcept(i32 %47)
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @raiseexcept(i32 %52)
  %54 = load i32, i32* %1, align 4
  %55 = call i64 @fetestexcept(i32 %54)
  %56 = load i32, i32* %1, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp eq i64 %55, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* @FE_UNDERFLOW, align 4
  %63 = load i32, i32* @FE_OVERFLOW, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %27
  %68 = load i32, i32* @FE_INEXACT, align 4
  %69 = load i32, i32* %1, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %1, align 4
  %71 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %72 = call i64 @fetestexcept(i32 %71)
  %73 = load i32, i32* @FE_INEXACT, align 4
  %74 = sext i32 %73 to i64
  %75 = or i64 %72, %74
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp eq i64 %75, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  br label %89

81:                                               ; preds = %27
  %82 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %83 = call i64 @fetestexcept(i32 %82)
  %84 = load i32, i32* %1, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp eq i64 %83, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  br label %89

89:                                               ; preds = %81, %67
  %90 = load i32, i32* %1, align 4
  %91 = call i64 @feclearexcept(i32 %90)
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %96 = call i64 @fetestexcept(i32 %95)
  %97 = icmp eq i64 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  br label %100

100:                                              ; preds = %89
  %101 = load i32, i32* %2, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %2, align 4
  br label %22

103:                                              ; preds = %22
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fetestexcept(i32) #1

declare dso_local i32 @raiseexcept(i32) #1

declare dso_local i64 @feclearexcept(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
