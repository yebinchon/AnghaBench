; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_priority_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_priority_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.ucl_parser = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@UCL_OBJECT = common dso_local global i64 0, align 8
@UCL_INT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Invalid priority value in macro: %s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Unable to parse priority macro\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucl_priority_handler(i8* %0, i64 %1, %struct.TYPE_8__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ucl_parser*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.ucl_parser*
  store %struct.ucl_parser* %18, %struct.ucl_parser** %10, align 8
  store i32 255, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i32* null, i32** %16, align 8
  %19 = load %struct.ucl_parser*, %struct.ucl_parser** %10, align 8
  %20 = icmp eq %struct.ucl_parser* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %98

22:                                               ; preds = %4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = icmp ne %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %57

25:                                               ; preds = %22
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @UCL_OBJECT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %55, %31
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = call %struct.TYPE_8__* @ucl_object_iterate(%struct.TYPE_8__* %33, i32** %16, i32 1)
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %12, align 8
  %35 = icmp ne %struct.TYPE_8__* %34, null
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @UCL_INT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @strncmp(i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %53 = call i32 @ucl_object_toint(%struct.TYPE_8__* %52)
  store i32 %53, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %54

54:                                               ; preds = %51, %42
  br label %55

55:                                               ; preds = %54, %36
  br label %32

56:                                               ; preds = %32
  br label %57

57:                                               ; preds = %56, %25, %22
  %58 = load i64, i64* %7, align 8
  %59 = icmp ugt i64 %58, 0
  br i1 %59, label %60, label %85

60:                                               ; preds = %57
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 1
  %63 = call i8* @malloc(i64 %62)
  store i8* %63, i8** %14, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  %68 = call i32 @ucl_strlcpy(i8* %64, i8* %65, i64 %67)
  %69 = load i8*, i8** %14, align 8
  %70 = call i32 @strtol(i8* %69, i8** %15, i32 10)
  store i32 %70, i32* %11, align 4
  %71 = load i8*, i8** %15, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %60
  %76 = load %struct.ucl_parser*, %struct.ucl_parser** %10, align 8
  %77 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %76, i32 0, i32 0
  %78 = load i8*, i8** %14, align 8
  %79 = call i32 (i32*, i8*, ...) @ucl_create_err(i32* %77, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %78)
  %80 = load i8*, i8** %14, align 8
  %81 = call i32 @free(i8* %80)
  store i32 0, i32* %5, align 4
  br label %98

82:                                               ; preds = %60
  %83 = load i8*, i8** %14, align 8
  %84 = call i32 @free(i8* %83)
  store i32 1, i32* %13, align 4
  br label %85

85:                                               ; preds = %82, %57
  %86 = load i32, i32* %13, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.ucl_parser*, %struct.ucl_parser** %10, align 8
  %91 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %90, i32 0, i32 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i32 %89, i32* %93, align 4
  store i32 1, i32* %5, align 4
  br label %98

94:                                               ; preds = %85
  %95 = load %struct.ucl_parser*, %struct.ucl_parser** %10, align 8
  %96 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %95, i32 0, i32 0
  %97 = call i32 (i32*, i8*, ...) @ucl_create_err(i32* %96, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %94, %88, %75, %21
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_8__* @ucl_object_iterate(%struct.TYPE_8__*, i32**, i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @ucl_object_toint(%struct.TYPE_8__*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @ucl_strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @ucl_create_err(i32*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
