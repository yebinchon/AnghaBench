; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_schema.c_ucl_schema_validate_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_schema.c_ucl_schema_validate_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64 }
%struct.ucl_schema_error = type { i32 }

@UCL_INT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"maxLength\00", align 1
@UCL_SCHEMA_CONSTRAINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"string is too big: %.3f, maximum is: %.3f\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"minLength\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"string is too short: %.3f, minimum is: %.3f\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@REG_NOSUB = common dso_local global i32 0, align 4
@UCL_SCHEMA_INVALID_SCHEMA = common dso_local global i32 0, align 4
@UCL_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.ucl_schema_error*)* @ucl_schema_validate_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_schema_validate_string(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, %struct.ucl_schema_error* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.ucl_schema_error*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.ucl_schema_error* %2, %struct.ucl_schema_error** %6, align 8
  store i32* null, i32** %8, align 8
  store i32 1, i32* %9, align 4
  br label %11

11:                                               ; preds = %79, %3
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = call %struct.TYPE_10__* @ucl_object_iterate(%struct.TYPE_10__* %15, i32** %8, i32 1)
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %7, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ false, %11 ], [ %17, %14 ]
  br i1 %19, label %20, label %80

20:                                               ; preds = %18
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @UCL_INT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %20
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = call i32 @ucl_object_key(%struct.TYPE_10__* %27)
  %29 = call i64 @strcmp(i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %26
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = call i64 @ucl_object_toint(%struct.TYPE_10__* %32)
  store i64 %33, i64* %10, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %6, align 8
  %41 = load i32, i32* @UCL_SCHEMA_CONSTRAINT, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i32 (%struct.ucl_schema_error*, i32, %struct.TYPE_10__*, i8*, i64, ...) @ucl_schema_create_error(%struct.ucl_schema_error* %40, i32 %41, %struct.TYPE_10__* %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %45, i64 %46)
  store i32 0, i32* %9, align 4
  br label %80

48:                                               ; preds = %31
  br label %79

49:                                               ; preds = %26, %20
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @UCL_INT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %49
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = call i32 @ucl_object_key(%struct.TYPE_10__* %56)
  %58 = call i64 @strcmp(i32 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %55
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = call i64 @ucl_object_toint(%struct.TYPE_10__* %61)
  store i64 %62, i64* %10, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %60
  %69 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %6, align 8
  %70 = load i32, i32* @UCL_SCHEMA_CONSTRAINT, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i32 (%struct.ucl_schema_error*, i32, %struct.TYPE_10__*, i8*, i64, ...) @ucl_schema_create_error(%struct.ucl_schema_error* %69, i32 %70, %struct.TYPE_10__* %71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %74, i64 %75)
  store i32 0, i32* %9, align 4
  br label %80

77:                                               ; preds = %60
  br label %78

78:                                               ; preds = %77, %55, %49
  br label %79

79:                                               ; preds = %78, %48
  br label %11

80:                                               ; preds = %68, %39, %18
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

declare dso_local %struct.TYPE_10__* @ucl_object_iterate(%struct.TYPE_10__*, i32**, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @ucl_object_key(%struct.TYPE_10__*) #1

declare dso_local i64 @ucl_object_toint(%struct.TYPE_10__*) #1

declare dso_local i32 @ucl_schema_create_error(%struct.ucl_schema_error*, i32, %struct.TYPE_10__*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
