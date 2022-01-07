; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/tests/extr_test_streamline.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/tests/extr_test_streamline.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32 }
%struct.ucl_emitter_context = type { i32 }
%struct.ucl_emitter_functions = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@errno = common dso_local global i32 0, align 4
@stdout = common dso_local global i32* null, align 8
@UCL_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"  test string    \00", align 1
@UCL_STRING_TRIM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"key1\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"  test \0Astring\0A    \00", align 1
@UCL_STRING_ESCAPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"key2\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"  test string    \0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"key3\00", align 1
@UCL_EMIT_CONFIG = common dso_local global i32 0, align 4
@UCL_ARRAY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"key4\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ucl_emitter_context*, align 8
  %12 = alloca %struct.ucl_emitter_functions*, align 8
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %19 [
    i32 2, label %15
  ]

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  br label %19

19:                                               ; preds = %2, %15
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i8*, i8** %10, align 8
  %24 = call i32* @fopen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @errno, align 4
  %29 = sub nsw i32 0, %28
  %30 = call i32 @exit(i32 %29) #3
  unreachable

31:                                               ; preds = %22
  br label %34

32:                                               ; preds = %19
  %33 = load i32*, i32** @stdout, align 8
  store i32* %33, i32** %9, align 8
  br label %34

34:                                               ; preds = %32, %31
  %35 = load i32, i32* @UCL_OBJECT, align 4
  %36 = call %struct.TYPE_12__* @ucl_object_typed_new(i32 %35)
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %6, align 8
  %37 = load i32, i32* @UCL_STRING_TRIM, align 4
  %38 = call %struct.TYPE_12__* @ucl_object_fromstring_common(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %37)
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %7, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = call i32 @ucl_object_insert_key(%struct.TYPE_12__* %39, %struct.TYPE_12__* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  %42 = load i32, i32* @UCL_STRING_TRIM, align 4
  %43 = load i32, i32* @UCL_STRING_ESCAPE, align 4
  %44 = or i32 %42, %43
  %45 = call %struct.TYPE_12__* @ucl_object_fromstring_common(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %44)
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %7, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = call i32 @ucl_object_insert_key(%struct.TYPE_12__* %46, %struct.TYPE_12__* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0)
  %49 = call %struct.TYPE_12__* @ucl_object_fromstring_common(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0)
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %7, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %52 = call i32 @ucl_object_insert_key(%struct.TYPE_12__* %50, %struct.TYPE_12__* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 0)
  %53 = load i32*, i32** %9, align 8
  %54 = call %struct.ucl_emitter_functions* @ucl_object_emit_file_funcs(i32* %53)
  store %struct.ucl_emitter_functions* %54, %struct.ucl_emitter_functions** %12, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = load i32, i32* @UCL_EMIT_CONFIG, align 4
  %57 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %12, align 8
  %58 = call %struct.ucl_emitter_context* @ucl_object_emit_streamline_new(%struct.TYPE_12__* %55, i32 %56, %struct.ucl_emitter_functions* %57)
  store %struct.ucl_emitter_context* %58, %struct.ucl_emitter_context** %11, align 8
  %59 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %11, align 8
  %60 = icmp ne %struct.ucl_emitter_context* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* @UCL_ARRAY, align 4
  %64 = call %struct.TYPE_12__* @ucl_object_typed_new(i32 %63)
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %8, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %66, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  store i32 4, i32* %68, align 8
  %69 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %11, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %71 = call i32 @ucl_object_emit_streamline_start_container(%struct.ucl_emitter_context* %69, %struct.TYPE_12__* %70)
  %72 = call %struct.TYPE_12__* @ucl_object_fromint(i32 10)
  store %struct.TYPE_12__* %72, %struct.TYPE_12__** %7, align 8
  %73 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %11, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %75 = call i32 @ucl_object_emit_streamline_add_object(%struct.ucl_emitter_context* %73, %struct.TYPE_12__* %74)
  %76 = call %struct.TYPE_12__* @ucl_object_fromdouble(double 1.010000e+01)
  store %struct.TYPE_12__* %76, %struct.TYPE_12__** %7, align 8
  %77 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %11, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %79 = call i32 @ucl_object_emit_streamline_add_object(%struct.ucl_emitter_context* %77, %struct.TYPE_12__* %78)
  %80 = call %struct.TYPE_12__* @ucl_object_fromdouble(double 9.999000e+00)
  store %struct.TYPE_12__* %80, %struct.TYPE_12__** %7, align 8
  %81 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %11, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %83 = call i32 @ucl_object_emit_streamline_add_object(%struct.ucl_emitter_context* %81, %struct.TYPE_12__* %82)
  %84 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %11, align 8
  %85 = call i32 @ucl_object_emit_streamline_end_container(%struct.ucl_emitter_context* %84)
  %86 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %11, align 8
  %87 = call i32 @ucl_object_emit_streamline_finish(%struct.ucl_emitter_context* %86)
  %88 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %12, align 8
  %89 = call i32 @ucl_object_emit_funcs_free(%struct.ucl_emitter_functions* %88)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %91 = call i32 @ucl_object_unref(%struct.TYPE_12__* %90)
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @fclose(i32* %92)
  %94 = load i32, i32* %13, align 4
  ret i32 %94
}

declare dso_local i32* @fopen(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_12__* @ucl_object_typed_new(i32) #1

declare dso_local %struct.TYPE_12__* @ucl_object_fromstring_common(i8*, i32, i32) #1

declare dso_local i32 @ucl_object_insert_key(%struct.TYPE_12__*, %struct.TYPE_12__*, i8*, i32, i32) #1

declare dso_local %struct.ucl_emitter_functions* @ucl_object_emit_file_funcs(i32*) #1

declare dso_local %struct.ucl_emitter_context* @ucl_object_emit_streamline_new(%struct.TYPE_12__*, i32, %struct.ucl_emitter_functions*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ucl_object_emit_streamline_start_container(%struct.ucl_emitter_context*, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @ucl_object_fromint(i32) #1

declare dso_local i32 @ucl_object_emit_streamline_add_object(%struct.ucl_emitter_context*, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @ucl_object_fromdouble(double) #1

declare dso_local i32 @ucl_object_emit_streamline_end_container(%struct.ucl_emitter_context*) #1

declare dso_local i32 @ucl_object_emit_streamline_finish(%struct.ucl_emitter_context*) #1

declare dso_local i32 @ucl_object_emit_funcs_free(%struct.ucl_emitter_functions*) #1

declare dso_local i32 @ucl_object_unref(%struct.TYPE_12__*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
