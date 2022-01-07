; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_poolTests.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_poolTests.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"FAIL: should not create POOL with 0 threads\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"queueSize==%u, numThreads=%u \0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"FAIL: testOrder\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"SUCCESS: testOrder\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"FAIL: testWait\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"SUCCESS: testWait\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"FAIL: thread reduction not effective \0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"SUCCESS: thread reduction effective \0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"FAIL: jobs in queue not completed on early end \0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"SUCCESS: all jobs in queue completed on early end \0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"PASS: all POOL tests\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i64 @POOL_create(i32 0, i32 1)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %67

14:                                               ; preds = %2
  store i64 1, i64* %6, align 8
  br label %15

15:                                               ; preds = %48, %14
  %16 = load i64, i64* %6, align 8
  %17 = icmp ule i64 %16, 4
  br i1 %17, label %18, label %51

18:                                               ; preds = %15
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %44, %18
  %20 = load i64, i64* %7, align 8
  %21 = icmp ule i64 %20, 2
  br i1 %21, label %22, label %47

22:                                               ; preds = %19
  %23 = load i64, i64* %7, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* %6, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %26)
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @testOrder(i64 %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %67

34:                                               ; preds = %22
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @testWait(i64 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %67

42:                                               ; preds = %34
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %7, align 8
  br label %19

47:                                               ; preds = %19
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %6, align 8
  br label %15

51:                                               ; preds = %15
  %52 = call i64 (...) @testThreadReduction()
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %67

56:                                               ; preds = %51
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56
  %59 = call i64 (...) @testAbruptEnding()
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %67

63:                                               ; preds = %58
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %61, %54, %40, %32, %12
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @POOL_create(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @testOrder(i64, i64) #1

declare dso_local i64 @testWait(i64, i64) #1

declare dso_local i64 @testThreadReduction(...) #1

declare dso_local i64 @testAbruptEnding(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
