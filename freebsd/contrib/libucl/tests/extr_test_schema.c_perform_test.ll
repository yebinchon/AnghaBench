; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/tests/extr_test_schema.c_perform_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/tests/extr_test_schema.c_perform_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_schema_error = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Bad test case\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Test case '%s' failed (expected %s): '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@UCL_EMIT_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.ucl_schema_error*)* @perform_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perform_test(i32* %0, i32* %1, %struct.ucl_schema_error* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ucl_schema_error*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.ucl_schema_error* %2, %struct.ucl_schema_error** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32* @ucl_object_lookup(i32* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32* @ucl_object_lookup(i32* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32* @ucl_object_lookup(i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load i32*, i32** %10, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32*, i32** %8, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %20, %3
  %27 = load i32, i32* @stdout, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %62

29:                                               ; preds = %23
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %7, align 8
  %33 = call i32 @ucl_object_validate(i32* %30, i32* %31, %struct.ucl_schema_error* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @ucl_object_toboolean(i32* %35)
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %29
  %39 = load i32, i32* @stdout, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = call i8* @ucl_object_tostring(i32* %40)
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @ucl_object_toboolean(i32* %42)
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %47 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %7, align 8
  %48 = getelementptr inbounds %struct.ucl_schema_error, %struct.ucl_schema_error* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %41, i8* %46, i8* %49)
  %51 = load i32, i32* @stdout, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* @UCL_EMIT_CONFIG, align 4
  %54 = call i8* @ucl_object_emit(i32* %52, i32 %53)
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* @stdout, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* @UCL_EMIT_CONFIG, align 4
  %59 = call i8* @ucl_object_emit(i32* %57, i32 %58)
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %59)
  store i32 0, i32* %4, align 4
  br label %62

61:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %38, %26
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32* @ucl_object_lookup(i32*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @ucl_object_validate(i32*, i32*, %struct.ucl_schema_error*) #1

declare dso_local i32 @ucl_object_toboolean(i32*) #1

declare dso_local i8* @ucl_object_tostring(i32*) #1

declare dso_local i8* @ucl_object_emit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
