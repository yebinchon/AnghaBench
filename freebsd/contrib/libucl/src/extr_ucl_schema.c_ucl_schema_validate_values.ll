; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_schema.c_ucl_schema_validate_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_schema.c_ucl_schema_validate_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_8__* }
%struct.ucl_schema_error = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"maxValues\00", align 1
@UCL_INT = common dso_local global i64 0, align 8
@UCL_SCHEMA_CONSTRAINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"object has more values than defined: %ld\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"minValues\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"object has less values than defined: %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_8__*, %struct.ucl_schema_error*)* @ucl_schema_validate_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_schema_validate_values(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, %struct.ucl_schema_error* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.ucl_schema_error*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.ucl_schema_error* %2, %struct.ucl_schema_error** %7, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = call %struct.TYPE_8__* @ucl_object_lookup(%struct.TYPE_8__* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %8, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %46

16:                                               ; preds = %3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @UCL_INT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %16
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = call i64 @ucl_object_toint(%struct.TYPE_8__* %23)
  store i64 %24, i64* %10, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %9, align 8
  store i64 0, i64* %11, align 8
  br label %26

26:                                               ; preds = %39, %22
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %28 = icmp ne %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %7, align 8
  %35 = load i32, i32* @UCL_SCHEMA_CONSTRAINT, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @ucl_schema_create_error(%struct.ucl_schema_error* %34, i32 %35, %struct.TYPE_8__* %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  store i32 0, i32* %4, align 4
  br label %87

39:                                               ; preds = %29
  %40 = load i64, i64* %11, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %11, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %9, align 8
  br label %26

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %45, %16, %3
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = call %struct.TYPE_8__* @ucl_object_lookup(%struct.TYPE_8__* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %8, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = icmp ne %struct.TYPE_8__* %49, null
  br i1 %50, label %51, label %86

51:                                               ; preds = %46
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @UCL_INT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %86

57:                                               ; preds = %51
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = call i64 @ucl_object_toint(%struct.TYPE_8__* %58)
  store i64 %59, i64* %10, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %9, align 8
  store i64 0, i64* %11, align 8
  br label %61

61:                                               ; preds = %69, %57
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %63 = icmp ne %struct.TYPE_8__* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %75

69:                                               ; preds = %64
  %70 = load i64, i64* %11, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %11, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %9, align 8
  br label %61

75:                                               ; preds = %68, %61
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %10, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %7, align 8
  %81 = load i32, i32* @UCL_SCHEMA_CONSTRAINT, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @ucl_schema_create_error(%struct.ucl_schema_error* %80, i32 %81, %struct.TYPE_8__* %82, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %83)
  store i32 0, i32* %4, align 4
  br label %87

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %51, %46
  store i32 1, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %79, %33
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.TYPE_8__* @ucl_object_lookup(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @ucl_object_toint(%struct.TYPE_8__*) #1

declare dso_local i32 @ucl_schema_create_error(%struct.ucl_schema_error*, i32, %struct.TYPE_8__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
