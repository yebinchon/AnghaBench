; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/regression/extr_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/regression/extr_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_zstdcli = common dso_local global i32 0, align 4
@g_cache = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"data_init() failed with error=%s\0A\00", align 1
@g_output = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to open the output file\0A\00", align 1
@g_diff = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @parse_args(i32 %8, i8** %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %58

15:                                               ; preds = %2
  %16 = call i64 (...) @are_names_bad()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %58

19:                                               ; preds = %15
  %20 = load i32, i32* @g_zstdcli, align 4
  %21 = call i32 @method_set_zstdcli(i32 %20)
  %22 = load i32, i32* @g_cache, align 4
  %23 = call i32 @data_init(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32, i32* @stderr, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i8* @strerror(i32 %28)
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %29)
  store i32 1, i32* %3, align 4
  br label %58

31:                                               ; preds = %19
  store i32 1, i32* %6, align 4
  %32 = load i32, i32* @g_output, align 4
  %33 = call i32* @fopen(i32 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %55

39:                                               ; preds = %31
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @run_all(i32* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @fclose(i32* %42)
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %55

47:                                               ; preds = %39
  %48 = load i64, i64* @g_diff, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @g_output, align 4
  %52 = load i64, i64* @g_diff, align 8
  %53 = call i32 @diff_results(i32 %51, i64 %52)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %50, %47
  br label %55

55:                                               ; preds = %54, %46, %36
  %56 = call i32 (...) @data_finish()
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %26, %18, %13
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @parse_args(i32, i8**) #1

declare dso_local i64 @are_names_bad(...) #1

declare dso_local i32 @method_set_zstdcli(i32) #1

declare dso_local i32 @data_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @run_all(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @diff_results(i32, i64) #1

declare dso_local i32 @data_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
