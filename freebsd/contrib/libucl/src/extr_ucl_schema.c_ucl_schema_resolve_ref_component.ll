; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_schema.c_ucl_schema_resolve_ref_component.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_schema.c_ucl_schema_resolve_ref_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_9__* }
%struct.ucl_schema_error = type { i32 }

@UCL_OBJECT = common dso_local global i64 0, align 8
@UCL_SCHEMA_INVALID_SCHEMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"reference %s is invalid, missing path component\00", align 1
@UCL_ARRAY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"reference %s is invalid, invalid item number\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"reference %s is invalid, item number %d does not exist\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"reference %s is invalid, contains primitive object in the path\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_9__*, i8*, i32, %struct.ucl_schema_error*)* @ucl_schema_resolve_ref_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @ucl_schema_resolve_ref_component(%struct.TYPE_9__* %0, i8* %1, i32 %2, %struct.ucl_schema_error* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ucl_schema_error*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ucl_schema_error* %3, %struct.ucl_schema_error** %9, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UCL_OBJECT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.TYPE_9__* @ucl_object_lookup_len(%struct.TYPE_9__* %20, i8* %21, i32 %22)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %10, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %25 = icmp eq %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %9, align 8
  %28 = load i32, i32* @UCL_SCHEMA_INVALID_SCHEMA, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 (%struct.ucl_schema_error*, i32, %struct.TYPE_9__*, i8*, i8*, ...) @ucl_schema_create_error(%struct.ucl_schema_error* %27, i32 %28, %struct.TYPE_9__* %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %30)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  br label %95

32:                                               ; preds = %19
  br label %93

33:                                               ; preds = %4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UCL_ARRAY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %86

39:                                               ; preds = %33
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @strtoul(i8* %40, i8** %11, i32 10)
  store i32 %41, i32* %12, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load i8*, i8** %11, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 47
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load i8*, i8** %11, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %9, align 8
  %56 = load i32, i32* @UCL_SCHEMA_INVALID_SCHEMA, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 (%struct.ucl_schema_error*, i32, %struct.TYPE_9__*, i8*, i8*, ...) @ucl_schema_create_error(%struct.ucl_schema_error* %55, i32 %56, %struct.TYPE_9__* %57, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  br label %95

60:                                               ; preds = %49, %44, %39
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = call %struct.TYPE_9__* @ucl_array_head(%struct.TYPE_9__* %61)
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %10, align 8
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %71, %60
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %65 = icmp ne %struct.TYPE_9__* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %75

71:                                               ; preds = %66
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %10, align 8
  br label %63

75:                                               ; preds = %70, %63
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %77 = icmp eq %struct.TYPE_9__* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %9, align 8
  %80 = load i32, i32* @UCL_SCHEMA_INVALID_SCHEMA, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i32 (%struct.ucl_schema_error*, i32, %struct.TYPE_9__*, i8*, i8*, ...) @ucl_schema_create_error(%struct.ucl_schema_error* %79, i32 %80, %struct.TYPE_9__* %81, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %82, i32 %83)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  br label %95

85:                                               ; preds = %75
  br label %92

86:                                               ; preds = %33
  %87 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %9, align 8
  %88 = load i32, i32* @UCL_SCHEMA_INVALID_SCHEMA, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 (%struct.ucl_schema_error*, i32, %struct.TYPE_9__*, i8*, i8*, ...) @ucl_schema_create_error(%struct.ucl_schema_error* %87, i32 %88, %struct.TYPE_9__* %89, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i8* %90)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  br label %95

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %32
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %94, %struct.TYPE_9__** %5, align 8
  br label %95

95:                                               ; preds = %93, %86, %78, %54, %26
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  ret %struct.TYPE_9__* %96
}

declare dso_local %struct.TYPE_9__* @ucl_object_lookup_len(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @ucl_schema_create_error(%struct.ucl_schema_error*, i32, %struct.TYPE_9__*, i8*, i8*, ...) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local %struct.TYPE_9__* @ucl_array_head(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
