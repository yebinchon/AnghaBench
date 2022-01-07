; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fma_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fma_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FE_TONEAREST = common dso_local global i32 0, align 4
@FE_UPWARD = common dso_local global i32 0, align 4
@FE_DOWNWARD = common dso_local global i32 0, align 4
@FE_TOWARDZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"1..19\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"rmode = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ok %d - fma zeroes\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"ok %d # SKIP testcase fails assertion on amd64\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"ok %d - fma NaNs\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"ok %d - fma small z\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"ok %d - fma big z\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"ok %d - fma accuracy\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"ok %d - fma double rounding\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %6 = load i32, i32* @FE_TONEAREST, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds i32, i32* %5, i64 1
  %8 = load i32, i32* @FE_UPWARD, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds i32, i32* %7, i64 1
  %10 = load i32, i32* @FE_DOWNWARD, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load i32, i32* @FE_TOWARDZERO, align 4
  store i32 %12, i32* %11, align 4
  store i32 1, i32* %4, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %33, %0
  %15 = load i32, i32* %3, align 4
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %17 = call i32 @nitems(i32* %16)
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @fesetround(i32 %28)
  %30 = call i32 (...) @test_zeroes()
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %19
  %34 = load i32, i32* %3, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %14

38:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %47, %38
  %40 = load i32, i32* %3, align 4
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %42 = call i32 @nitems(i32* %41)
  %43 = icmp ult i32 %40, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %39

52:                                               ; preds = %39
  %53 = load i32, i32* @FE_TONEAREST, align 4
  %54 = call i32 @fesetround(i32 %53)
  %55 = call i32 (...) @test_nans()
  %56 = load i32, i32* %4, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %79, %52
  %61 = load i32, i32* %3, align 4
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %63 = call i32 @nitems(i32* %62)
  %64 = icmp ult i32 %61, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %60
  %66 = load i32, i32* %3, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %3, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @fesetround(i32 %74)
  %76 = call i32 (...) @test_small_z()
  %77 = load i32, i32* %4, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %65
  %80 = load i32, i32* %3, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %4, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %60

84:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %104, %84
  %86 = load i32, i32* %3, align 4
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %88 = call i32 @nitems(i32* %87)
  %89 = icmp ult i32 %86, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %85
  %91 = load i32, i32* %3, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %3, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @fesetround(i32 %99)
  %101 = call i32 (...) @test_big_z()
  %102 = load i32, i32* %4, align 4
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %90
  %105 = load i32, i32* %3, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %3, align 4
  %107 = load i32, i32* %4, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %85

109:                                              ; preds = %85
  %110 = load i32, i32* @FE_TONEAREST, align 4
  %111 = call i32 @fesetround(i32 %110)
  %112 = call i32 (...) @test_accuracy()
  %113 = load i32, i32* %4, align 4
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %4, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %4, align 4
  %117 = call i32 (...) @test_double_rounding()
  %118 = load i32, i32* %4, align 4
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %4, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %4, align 4
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @fesetround(i32) #1

declare dso_local i32 @test_zeroes(...) #1

declare dso_local i32 @test_nans(...) #1

declare dso_local i32 @test_small_z(...) #1

declare dso_local i32 @test_big_z(...) #1

declare dso_local i32 @test_accuracy(...) #1

declare dso_local i32 @test_double_rounding(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
