; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_tinytest.c_tinytest_set_test_failed_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_tinytest.c_tinytest_set_test_failed_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opt_verbosity = common dso_local global i64 0, align 8
@cur_test_name = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%s: \00", align 1
@cur_test_prefix = common dso_local global i8* null, align 8
@cur_test_outcome = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tinytest_set_test_failed_() #0 {
  %1 = load i64, i64* @opt_verbosity, align 8
  %2 = icmp sle i64 %1, 0
  br i1 %2, label %3, label %15

3:                                                ; preds = %0
  %4 = load i32*, i32** @cur_test_name, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load i64, i64* @opt_verbosity, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %6
  %12 = load i8*, i8** @cur_test_prefix, align 8
  %13 = load i32*, i32** @cur_test_name, align 8
  %14 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %12, i32* %13)
  store i32* null, i32** @cur_test_name, align 8
  br label %15

15:                                               ; preds = %11, %3, %0
  store i64 0, i64* @cur_test_outcome, align 8
  ret void
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
