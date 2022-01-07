; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fenv_test.c_test_feraiseexcept.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fenv_test.c_test_feraiseexcept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NEXCEPTS = common dso_local global i32 0, align 4
@std_except_sets = common dso_local global i32* null, align 8
@FE_ALL_EXCEPT = common dso_local global i32 0, align 4
@FE_UNDERFLOW = common dso_local global i32 0, align 4
@FE_OVERFLOW = common dso_local global i32 0, align 4
@FE_INEXACT = common dso_local global i32 0, align 4
@ALL_STD_EXCEPT = common dso_local global i32 0, align 4
@FE_INVALID = common dso_local global i32 0, align 4
@FE_DIVBYZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_feraiseexcept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_feraiseexcept() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %55, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @NEXCEPTS, align 4
  %6 = shl i32 1, %5
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %58

8:                                                ; preds = %3
  %9 = load i32*, i32** @std_except_sets, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %15 = call i32 @fetestexcept(i32 %14)
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %1, align 4
  %20 = call i64 @feraiseexcept(i32 %19)
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @FE_UNDERFLOW, align 4
  %26 = load i32, i32* @FE_OVERFLOW, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %8
  %31 = load i32, i32* @FE_INEXACT, align 4
  %32 = load i32, i32* %1, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %35 = call i32 @fetestexcept(i32 %34)
  %36 = load i32, i32* @FE_INEXACT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %1, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  br label %49

42:                                               ; preds = %8
  %43 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %44 = call i32 @fetestexcept(i32 %43)
  %45 = load i32, i32* %1, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  br label %49

49:                                               ; preds = %42, %30
  %50 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %51 = call i64 @feclearexcept(i32 %50)
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  br label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %3

58:                                               ; preds = %3
  %59 = load i32, i32* @FE_INVALID, align 4
  %60 = load i32, i32* @FE_DIVBYZERO, align 4
  %61 = or i32 %59, %60
  %62 = call i64 @feraiseexcept(i32 %61)
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %67 = call i32 @fetestexcept(i32 %66)
  %68 = load i32, i32* @FE_INVALID, align 4
  %69 = load i32, i32* @FE_DIVBYZERO, align 4
  %70 = or i32 %68, %69
  %71 = icmp eq i32 %67, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i32, i32* @FE_OVERFLOW, align 4
  %75 = load i32, i32* @FE_UNDERFLOW, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @FE_INEXACT, align 4
  %78 = or i32 %76, %77
  %79 = call i64 @feraiseexcept(i32 %78)
  %80 = icmp eq i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %84 = call i32 @fetestexcept(i32 %83)
  %85 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %90 = call i64 @feclearexcept(i32 %89)
  %91 = icmp eq i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fetestexcept(i32) #1

declare dso_local i64 @feraiseexcept(i32) #1

declare dso_local i64 @feclearexcept(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
