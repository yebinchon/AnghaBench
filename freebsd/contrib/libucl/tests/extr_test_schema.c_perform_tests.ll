; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/tests/extr_test_schema.c_perform_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/tests/extr_test_schema.c_perform_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.ucl_schema_error = type { i32 }

@UCL_OBJECT = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Bad test case\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"schema\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"tests\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Test suite '%s' failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @perform_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perform_tests(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.ucl_schema_error, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* null, i32** %5, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @UCL_OBJECT, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @stdout, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %18, i32* %2, align 4
  br label %57

19:                                               ; preds = %1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = call %struct.TYPE_10__* @ucl_object_lookup(%struct.TYPE_10__* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %6, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = call %struct.TYPE_10__* @ucl_object_lookup(%struct.TYPE_10__* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %7, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = call %struct.TYPE_10__* @ucl_object_lookup(%struct.TYPE_10__* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %8, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = icmp eq %struct.TYPE_10__* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %19
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %30 = icmp eq %struct.TYPE_10__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = icmp eq %struct.TYPE_10__* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %28, %19
  %35 = load i32, i32* @stdout, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %37, i32* %2, align 4
  br label %57

38:                                               ; preds = %31
  %39 = call i32 @memset(%struct.ucl_schema_error* %4, i32 0, i32 4)
  br label %40

40:                                               ; preds = %55, %38
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %42 = call %struct.TYPE_10__* @ucl_object_iterate(%struct.TYPE_10__* %41, i32** %5, i32 1)
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %9, align 8
  %43 = icmp ne %struct.TYPE_10__* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = call i32 @perform_test(%struct.TYPE_10__* %45, %struct.TYPE_10__* %46, %struct.ucl_schema_error* %4)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @stdout, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = call i8* @ucl_object_tostring(%struct.TYPE_10__* %51)
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %54, i32* %2, align 4
  br label %57

55:                                               ; preds = %44
  br label %40

56:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %49, %34, %15
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_10__* @ucl_object_lookup(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @memset(%struct.ucl_schema_error*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @ucl_object_iterate(%struct.TYPE_10__*, i32**, i32) #1

declare dso_local i32 @perform_test(%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.ucl_schema_error*) #1

declare dso_local i8* @ucl_object_tostring(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
