; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/python/src/extr_uclmodule.c__iterate_valid_ucl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/python/src/extr_uclmodule.c__iterate_valid_ucl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@UCL_OBJECT = common dso_local global i64 0, align 8
@UCL_ARRAY = common dso_local global i64 0, align 8
@UCL_USERDATA = common dso_local global i64 0, align 8
@PyExc_SystemError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"unhandled type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*)* @_iterate_valid_ucl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_iterate_valid_ucl(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* null, i32** %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %4, align 8
  br label %14

14:                                               ; preds = %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = call %struct.TYPE_9__* @ucl_object_iterate(%struct.TYPE_9__* %15, i32** %5, i32 0)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %3, align 8
  %17 = icmp ne %struct.TYPE_9__* %16, null
  br i1 %17, label %18, label %89

18:                                               ; preds = %14
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = call i32* @_basic_ucl_type(%struct.TYPE_9__* %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %87, label %23

23:                                               ; preds = %18
  store i32* null, i32** %7, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = call i32 @ucl_object_key(%struct.TYPE_9__* %29)
  %31 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32* %31, i32** %7, align 8
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @UCL_OBJECT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %32
  store i32* null, i32** %9, align 8
  %39 = call i32* (...) @PyDict_New()
  store i32* %39, i32** %6, align 8
  br label %40

40:                                               ; preds = %44, %38
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = call %struct.TYPE_9__* @ucl_object_iterate(%struct.TYPE_9__* %41, i32** %9, i32 1)
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %8, align 8
  %43 = icmp ne %struct.TYPE_9__* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = call i32 @ucl_object_key(%struct.TYPE_9__* %45)
  %47 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = call i32* @_iterate_valid_ucl(%struct.TYPE_9__* %50)
  %52 = call i32 @PyDict_SetItem(i32* %48, i32* %49, i32* %51)
  br label %40

53:                                               ; preds = %40
  br label %86

54:                                               ; preds = %32
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @UCL_ARRAY, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  store i32* null, i32** %12, align 8
  %61 = call i32* @PyList_New(i32 0)
  store i32* %61, i32** %6, align 8
  br label %62

62:                                               ; preds = %66, %60
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = call %struct.TYPE_9__* @ucl_object_iterate(%struct.TYPE_9__* %63, i32** %12, i32 1)
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %11, align 8
  %65 = icmp ne %struct.TYPE_9__* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i32*, i32** %6, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %69 = call i32* @_iterate_valid_ucl(%struct.TYPE_9__* %68)
  %70 = call i32 @PyList_Append(i32* %67, i32* %69)
  br label %62

71:                                               ; preds = %62
  br label %85

72:                                               ; preds = %54
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @UCL_USERDATA, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32* @PyBytes_FromString(i32 %82)
  store i32* %83, i32** %6, align 8
  br label %84

84:                                               ; preds = %78, %72
  br label %85

85:                                               ; preds = %84, %71
  br label %86

86:                                               ; preds = %85, %53
  br label %87

87:                                               ; preds = %86, %18
  %88 = load i32*, i32** %6, align 8
  store i32* %88, i32** %2, align 8
  br label %92

89:                                               ; preds = %14
  %90 = load i32, i32* @PyExc_SystemError, align 4
  %91 = call i32 @PyErr_SetString(i32 %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %92

92:                                               ; preds = %89, %87
  %93 = load i32*, i32** %2, align 8
  ret i32* %93
}

declare dso_local %struct.TYPE_9__* @ucl_object_iterate(%struct.TYPE_9__*, i32**, i32) #1

declare dso_local i32* @_basic_ucl_type(%struct.TYPE_9__*) #1

declare dso_local i32* @Py_BuildValue(i8*, i32) #1

declare dso_local i32 @ucl_object_key(%struct.TYPE_9__*) #1

declare dso_local i32* @PyDict_New(...) #1

declare dso_local i32 @PyDict_SetItem(i32*, i32*, i32*) #1

declare dso_local i32* @PyList_New(i32) #1

declare dso_local i32 @PyList_Append(i32*, i32*) #1

declare dso_local i32* @PyBytes_FromString(i32) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
