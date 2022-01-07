; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fenv_test.c_test_fegsetenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fenv_test.c_test_fegsetenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NEXCEPTS = common dso_local global i32 0, align 4
@std_except_sets = common dso_local global i32* null, align 8
@FE_ALL_EXCEPT = common dso_local global i32 0, align 4
@FE_TONEAREST = common dso_local global i64 0, align 8
@FE_UNDERFLOW = common dso_local global i32 0, align 4
@FE_OVERFLOW = common dso_local global i32 0, align 4
@FE_INEXACT = common dso_local global i32 0, align 4
@FE_DOWNWARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_fegsetenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fegsetenv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %99, %0
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NEXCEPTS, align 4
  %8 = shl i32 1, %7
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %102

10:                                               ; preds = %5
  %11 = load i32*, i32** @std_except_sets, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %17 = call i32 @fetestexcept(i32 %16)
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = call i64 (...) @fegetround()
  %22 = load i64, i64* @FE_TONEAREST, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = call i64 @fegetenv(i32* %1)
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @raiseexcept(i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @FE_UNDERFLOW, align 4
  %34 = load i32, i32* @FE_OVERFLOW, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %10
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @FE_INEXACT, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* @FE_INEXACT, align 4
  %45 = call i64 @feclearexcept(i32 %44)
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  br label %49

49:                                               ; preds = %43, %38, %10
  %50 = load i64, i64* @FE_DOWNWARD, align 8
  %51 = call i32 @fesetround(i64 %50)
  %52 = call i64 @fegetenv(i32* %2)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = call i64 @fesetenv(i32* %1)
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %61 = call i32 @fetestexcept(i32 %60)
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = call i64 (...) @fegetround()
  %66 = load i64, i64* @FE_TONEAREST, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = call i64 @fesetenv(i32* %2)
  %71 = icmp eq i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %75 = call i32 @fetestexcept(i32 %74)
  %76 = load i32, i32* %3, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = call i64 (...) @fegetround()
  %81 = load i64, i64* @FE_DOWNWARD, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = call i64 @fesetenv(i32* %1)
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %90 = call i32 @fetestexcept(i32 %89)
  %91 = icmp eq i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = call i64 (...) @fegetround()
  %95 = load i64, i64* @FE_TONEAREST, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  br label %99

99:                                               ; preds = %49
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %5

102:                                              ; preds = %5
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fetestexcept(i32) #1

declare dso_local i64 @fegetround(...) #1

declare dso_local i64 @fegetenv(i32*) #1

declare dso_local i32 @raiseexcept(i32) #1

declare dso_local i64 @feclearexcept(i32) #1

declare dso_local i32 @fesetround(i64) #1

declare dso_local i64 @fesetenv(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
