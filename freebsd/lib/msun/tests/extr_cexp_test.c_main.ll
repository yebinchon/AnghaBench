; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_cexp_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_cexp_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"1..7\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ok 1 - cexp zero\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ok 2 - cexp nan\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ok 3 - cexp inf\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"ok 4 - cexp reals\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"ok 5 - cexp imaginaries\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"ok 6 - cexp small\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"ok 7 - cexp large\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 (...) @test_zero()
  %4 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 (...) @test_nan()
  %6 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 (...) @test_inf()
  %8 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %9 = call i32 (...) @test_reals()
  %10 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %11 = call i32 (...) @test_imaginaries()
  %12 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %13 = call i32 (...) @test_small()
  %14 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %15 = call i32 (...) @test_large()
  %16 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @test_zero(...) #1

declare dso_local i32 @test_nan(...) #1

declare dso_local i32 @test_inf(...) #1

declare dso_local i32 @test_reals(...) #1

declare dso_local i32 @test_imaginaries(...) #1

declare dso_local i32 @test_small(...) #1

declare dso_local i32 @test_large(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
