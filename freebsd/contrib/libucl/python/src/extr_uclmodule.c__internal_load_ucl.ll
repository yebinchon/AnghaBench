; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/python/src/extr_uclmodule.c__internal_load_ucl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/python/src/extr_uclmodule.c__internal_load_ucl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32 }

@UCL_PARSER_NO_TIME = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @_internal_load_ucl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_internal_load_ucl(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ucl_parser*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @UCL_PARSER_NO_TIME, align 4
  %8 = call %struct.ucl_parser* @ucl_parser_new(i32 %7)
  store %struct.ucl_parser* %8, %struct.ucl_parser** %4, align 8
  %9 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @ucl_parser_add_string(%struct.ucl_parser* %9, i8* %10, i32 0)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %16 = call i64 @ucl_parser_get_error(%struct.ucl_parser* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i32, i32* @PyExc_ValueError, align 4
  %20 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %21 = call i64 @ucl_parser_get_error(%struct.ucl_parser* %20)
  %22 = call i32 @PyErr_SetString(i32 %19, i64 %21)
  %23 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %24 = call i32 @ucl_parser_free(%struct.ucl_parser* %23)
  store i32* null, i32** %3, align 8
  br label %37

25:                                               ; preds = %14
  %26 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %27 = call i32* @ucl_parser_get_object(%struct.ucl_parser* %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32* @_iterate_valid_ucl(i32* %28)
  store i32* %29, i32** %3, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @ucl_object_unref(i32* %30)
  br label %37

32:                                               ; preds = %1
  %33 = load i32, i32* @PyExc_ValueError, align 4
  %34 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %35 = call i64 @ucl_parser_get_error(%struct.ucl_parser* %34)
  %36 = call i32 @PyErr_SetString(i32 %33, i64 %35)
  store i32* null, i32** %3, align 8
  br label %37

37:                                               ; preds = %32, %25, %18
  %38 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %39 = call i32 @ucl_parser_free(%struct.ucl_parser* %38)
  %40 = load i32*, i32** %3, align 8
  ret i32* %40
}

declare dso_local %struct.ucl_parser* @ucl_parser_new(i32) #1

declare dso_local i32 @ucl_parser_add_string(%struct.ucl_parser*, i8*, i32) #1

declare dso_local i64 @ucl_parser_get_error(%struct.ucl_parser*) #1

declare dso_local i32 @PyErr_SetString(i32, i64) #1

declare dso_local i32 @ucl_parser_free(%struct.ucl_parser*) #1

declare dso_local i32* @ucl_parser_get_object(%struct.ucl_parser*) #1

declare dso_local i32* @_iterate_valid_ucl(i32*) #1

declare dso_local i32 @ucl_object_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
