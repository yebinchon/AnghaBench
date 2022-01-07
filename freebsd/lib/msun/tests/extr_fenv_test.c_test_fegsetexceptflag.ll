; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fenv_test.c_test_fegsetexceptflag.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fenv_test.c_test_fegsetexceptflag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FE_ALL_EXCEPT = common dso_local global i32 0, align 4
@NEXCEPTS = common dso_local global i32 0, align 4
@std_except_sets = common dso_local global i32* null, align 8
@ALL_STD_EXCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_fegsetexceptflag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fegsetexceptflag() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %5 = call i32 @fetestexcept(i32 %4)
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %80, %0
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @NEXCEPTS, align 4
  %12 = shl i32 1, %11
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %83

14:                                               ; preds = %9
  %15 = load i32*, i32** @std_except_sets, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i64 @fegetexceptflag(i32* %1, i32 %20)
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %26 = call i32 @raiseexcept(i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = call i64 @fesetexceptflag(i32* %1, i32 %27)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %33 = call i32 @fetestexcept(i32 %32)
  %34 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %35 = load i32, i32* %2, align 4
  %36 = xor i32 %34, %35
  %37 = icmp eq i32 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %41 = call i64 @fegetexceptflag(i32* %1, i32 %40)
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %46 = call i64 @feclearexcept(i32 %45)
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* %2, align 4
  %51 = call i64 @fesetexceptflag(i32* %1, i32 %50)
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %56 = call i32 @fetestexcept(i32 %55)
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %61 = load i32, i32* %2, align 4
  %62 = xor i32 %60, %61
  %63 = call i64 @fesetexceptflag(i32* %1, i32 %62)
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %68 = call i32 @fetestexcept(i32 %67)
  %69 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %70 = load i32, i32* %2, align 4
  %71 = xor i32 %69, %70
  %72 = icmp eq i32 %68, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %76 = call i64 @feclearexcept(i32 %75)
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  br label %80

80:                                               ; preds = %14
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %9

83:                                               ; preds = %9
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fetestexcept(i32) #1

declare dso_local i64 @fegetexceptflag(i32*, i32) #1

declare dso_local i32 @raiseexcept(i32) #1

declare dso_local i64 @fesetexceptflag(i32*, i32) #1

declare dso_local i64 @feclearexcept(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
