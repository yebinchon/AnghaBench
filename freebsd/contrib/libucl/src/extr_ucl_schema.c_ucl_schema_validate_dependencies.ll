; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_schema.c_ucl_schema_validate_dependencies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_schema.c_ucl_schema_validate_dependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_schema_error = type { i32 }
%struct.TYPE_17__ = type { i64 }

@UCL_ARRAY = common dso_local global i64 0, align 8
@UCL_SCHEMA_MISSING_DEPENDENCY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"dependency %s is missing for key %s\00", align 1
@UCL_OBJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, %struct.ucl_schema_error*, %struct.TYPE_17__*, %struct.TYPE_17__*)* @ucl_schema_validate_dependencies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_schema_validate_dependencies(%struct.TYPE_17__* %0, %struct.TYPE_17__* %1, %struct.ucl_schema_error* %2, %struct.TYPE_17__* %3, %struct.TYPE_17__* %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.ucl_schema_error*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.ucl_schema_error* %2, %struct.ucl_schema_error** %8, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %4, %struct.TYPE_17__** %10, align 8
  store i32* null, i32** %14, align 8
  store i32 1, i32* %16, align 4
  br label %17

17:                                               ; preds = %81, %5
  %18 = load i32, i32* %16, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = call %struct.TYPE_17__* @ucl_object_iterate(%struct.TYPE_17__* %21, i32** %14, i32 1)
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %12, align 8
  %23 = icmp ne %struct.TYPE_17__* %22, null
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ]
  br i1 %25, label %26, label %82

26:                                               ; preds = %24
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %29 = call i32 @ucl_object_key(%struct.TYPE_17__* %28)
  %30 = call %struct.TYPE_17__* @ucl_object_lookup(%struct.TYPE_17__* %27, i32 %29)
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %11, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %32 = icmp ne %struct.TYPE_17__* %31, null
  br i1 %32, label %33, label %81

33:                                               ; preds = %26
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UCL_ARRAY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %33
  store i32* null, i32** %15, align 8
  br label %40

40:                                               ; preds = %64, %39
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %45 = call %struct.TYPE_17__* @ucl_object_iterate(%struct.TYPE_17__* %44, i32** %15, i32 1)
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %13, align 8
  %46 = icmp ne %struct.TYPE_17__* %45, null
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i1 [ false, %40 ], [ %46, %43 ]
  br i1 %48, label %49, label %65

49:                                               ; preds = %47
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %52 = call i32 @ucl_object_tostring(%struct.TYPE_17__* %51)
  %53 = call %struct.TYPE_17__* @ucl_object_lookup(%struct.TYPE_17__* %50, i32 %52)
  %54 = icmp eq %struct.TYPE_17__* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %8, align 8
  %57 = load i32, i32* @UCL_SCHEMA_MISSING_DEPENDENCY, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %60 = call i32 @ucl_object_tostring(%struct.TYPE_17__* %59)
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %62 = call i32 @ucl_object_key(%struct.TYPE_17__* %61)
  %63 = call i32 @ucl_schema_create_error(%struct.ucl_schema_error* %56, i32 %57, %struct.TYPE_17__* %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %62)
  store i32 0, i32* %16, align 4
  br label %65

64:                                               ; preds = %49
  br label %40

65:                                               ; preds = %55, %47
  br label %80

66:                                               ; preds = %33
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @UCL_OBJECT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %75 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %8, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %78 = call i32 @ucl_schema_validate(%struct.TYPE_17__* %73, %struct.TYPE_17__* %74, i32 1, %struct.ucl_schema_error* %75, %struct.TYPE_17__* %76, %struct.TYPE_17__* %77)
  store i32 %78, i32* %16, align 4
  br label %79

79:                                               ; preds = %72, %66
  br label %80

80:                                               ; preds = %79, %65
  br label %81

81:                                               ; preds = %80, %26
  br label %17

82:                                               ; preds = %24
  %83 = load i32, i32* %16, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_17__* @ucl_object_iterate(%struct.TYPE_17__*, i32**, i32) #1

declare dso_local %struct.TYPE_17__* @ucl_object_lookup(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ucl_object_key(%struct.TYPE_17__*) #1

declare dso_local i32 @ucl_object_tostring(%struct.TYPE_17__*) #1

declare dso_local i32 @ucl_schema_create_error(%struct.ucl_schema_error*, i32, %struct.TYPE_17__*, i8*, i32, i32) #1

declare dso_local i32 @ucl_schema_validate(%struct.TYPE_17__*, %struct.TYPE_17__*, i32, %struct.ucl_schema_error*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
