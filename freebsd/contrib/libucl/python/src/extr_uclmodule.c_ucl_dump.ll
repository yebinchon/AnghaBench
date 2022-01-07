; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/python/src/extr_uclmodule.c_ucl_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/python/src/extr_uclmodule.c_ucl_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UCL_EMIT_CONFIG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"O|i\00", align 1
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Unhandled object type\00", align 1
@UCL_EMIT_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Invalid emitter type\00", align 1
@Py_None = common dso_local global i32* null, align 8
@Py_RETURN_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @ucl_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ucl_dump(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %8, align 8
  %11 = load i64, i64* @UCL_EMIT_CONFIG, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @PyArg_ParseTuple(i32* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32** %6, i64* %7)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @PyExc_TypeError, align 4
  %17 = call i32 @PyErr_SetString(i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %49

18:                                               ; preds = %2
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @UCL_EMIT_MAX, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @PyExc_TypeError, align 4
  %24 = call i32 @PyErr_SetString(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %49

25:                                               ; preds = %18
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** @Py_None, align 8
  %28 = icmp eq i32* %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @Py_RETURN_NONE, align 4
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i32*, i32** %6, align 8
  %33 = call i32* @_iterate_python(i32* %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load i32*, i32** %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @ucl_object_emit(i32* %37, i64 %38)
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %10, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @ucl_object_unref(i32* %41)
  %43 = load i8*, i8** %10, align 8
  %44 = call i32* @PyString_FromString(i8* %43)
  store i32* %44, i32** %9, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i32*, i32** %9, align 8
  store i32* %47, i32** %3, align 8
  br label %49

48:                                               ; preds = %31
  store i32* null, i32** %3, align 8
  br label %49

49:                                               ; preds = %48, %36, %22, %15
  %50 = load i32*, i32** %3, align 8
  ret i32* %50
}

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i32**, i64*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32* @_iterate_python(i32*) #1

declare dso_local i64 @ucl_object_emit(i32*, i64) #1

declare dso_local i32 @ucl_object_unref(i32*) #1

declare dso_local i32* @PyString_FromString(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
