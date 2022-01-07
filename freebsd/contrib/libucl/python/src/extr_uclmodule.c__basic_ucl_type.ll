; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/python/src/extr_uclmodule.c__basic_ucl_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/python/src/extr_uclmodule.c__basic_ucl_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@Py_RETURN_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*)* @_basic_ucl_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_basic_ucl_type(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %29 [
    i32 131, label %7
    i32 132, label %11
    i32 129, label %15
    i32 133, label %19
    i32 128, label %23
    i32 130, label %27
  ]

7:                                                ; preds = %1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = call i64 @ucl_object_toint(%struct.TYPE_7__* %8)
  %10 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %9)
  store i32* %10, i32** %2, align 8
  br label %30

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = call i64 @ucl_object_todouble(%struct.TYPE_7__* %12)
  %14 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %13)
  store i32* %14, i32** %2, align 8
  br label %30

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = call i64 @ucl_object_tostring(%struct.TYPE_7__* %16)
  %18 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 %17)
  store i32* %18, i32** %2, align 8
  br label %30

19:                                               ; preds = %1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = call i32 @ucl_object_toboolean(%struct.TYPE_7__* %20)
  %22 = call i32* @PyBool_FromLong(i32 %21)
  store i32* %22, i32** %2, align 8
  br label %30

23:                                               ; preds = %1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = call i64 @ucl_object_todouble(%struct.TYPE_7__* %24)
  %26 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  store i32* %26, i32** %2, align 8
  br label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @Py_RETURN_NONE, align 4
  br label %29

29:                                               ; preds = %27, %1
  store i32* null, i32** %2, align 8
  br label %30

30:                                               ; preds = %29, %23, %19, %15, %11, %7
  %31 = load i32*, i32** %2, align 8
  ret i32* %31
}

declare dso_local i32* @Py_BuildValue(i8*, i64) #1

declare dso_local i64 @ucl_object_toint(%struct.TYPE_7__*) #1

declare dso_local i64 @ucl_object_todouble(%struct.TYPE_7__*) #1

declare dso_local i64 @ucl_object_tostring(%struct.TYPE_7__*) #1

declare dso_local i32* @PyBool_FromLong(i32) #1

declare dso_local i32 @ucl_object_toboolean(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
