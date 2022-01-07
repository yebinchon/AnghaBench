; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/tests/extr_test_schema.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/tests/extr_test_schema.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Error occurred: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ucl_parser*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = call i32 @read_stdin(i8** %6)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EXIT_FAILURE, align 4
  %16 = call i32 @exit(i32 %15) #3
  unreachable

17:                                               ; preds = %2
  %18 = call %struct.ucl_parser* @ucl_parser_new(i32 0)
  store %struct.ucl_parser* %18, %struct.ucl_parser** %7, align 8
  %19 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @ucl_parser_add_string(%struct.ucl_parser* %19, i8* %20, i32 0)
  %22 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %23 = call i8* @ucl_parser_get_error(%struct.ucl_parser* %22)
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load i32, i32* @stdout, align 4
  %27 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %28 = call i8* @ucl_parser_get_error(%struct.ucl_parser* %27)
  %29 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %28)
  store i32 1, i32* %11, align 4
  %30 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %30, i32* %3, align 4
  br label %51

31:                                               ; preds = %17
  %32 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %33 = call i32* @ucl_parser_get_object(%struct.ucl_parser* %32)
  store i32* %33, i32** %8, align 8
  %34 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %35 = call i32 @ucl_parser_free(%struct.ucl_parser* %34)
  br label %36

36:                                               ; preds = %46, %31
  %37 = load i32*, i32** %8, align 8
  %38 = call i32* @ucl_object_iterate(i32* %37, i32** %10, i32 1)
  store i32* %38, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @perform_tests(i32* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %47

46:                                               ; preds = %40
  br label %36

47:                                               ; preds = %45, %36
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @ucl_object_unref(i32* %48)
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %25
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @read_stdin(i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.ucl_parser* @ucl_parser_new(i32) #1

declare dso_local i32 @ucl_parser_add_string(%struct.ucl_parser*, i8*, i32) #1

declare dso_local i8* @ucl_parser_get_error(%struct.ucl_parser*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32* @ucl_parser_get_object(%struct.ucl_parser*) #1

declare dso_local i32 @ucl_parser_free(%struct.ucl_parser*) #1

declare dso_local i32* @ucl_object_iterate(i32*, i32**, i32) #1

declare dso_local i32 @perform_tests(i32*) #1

declare dso_local i32 @ucl_object_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
