; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_utils.c_ucl_object_emit_single_json.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_utils.c_ucl_object_emit_single_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"userdata\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ucl_object_emit_single_json(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* null, i32** %4, align 8
  store i8* null, i8** %5, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = icmp eq %struct.TYPE_5__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %74

9:                                                ; preds = %1
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @utstring_new(i32* %10)
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %72

14:                                               ; preds = %9
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %67 [
    i32 131, label %18
    i32 136, label %21
    i32 133, label %24
    i32 134, label %31
    i32 129, label %31
    i32 132, label %38
    i32 135, label %41
    i32 130, label %54
    i32 128, label %64
  ]

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @ucl_utstring_append_len(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6, i32* %19)
  br label %67

21:                                               ; preds = %14
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @ucl_utstring_append_len(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5, i32* %22)
  br label %67

24:                                               ; preds = %14
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @ucl_utstring_append_int(i32 %28, i32* %29)
  br label %67

31:                                               ; preds = %14, %14
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @ucl_utstring_append_double(i32 %35, i32* %36)
  br label %67

38:                                               ; preds = %14
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @ucl_utstring_append_len(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4, i32* %39)
  br label %67

41:                                               ; preds = %14
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @ucl_utstring_append_len(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4, i32* %48)
  br label %53

50:                                               ; preds = %41
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @ucl_utstring_append_len(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5, i32* %51)
  br label %53

53:                                               ; preds = %50, %47
  br label %67

54:                                               ; preds = %14
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @ucl_utstring_append_len(i8* %58, i32 %61, i32* %62)
  br label %67

64:                                               ; preds = %14
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @ucl_utstring_append_len(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8, i32* %65)
  br label %67

67:                                               ; preds = %14, %64, %54, %53, %38, %31, %24, %21, %18
  %68 = load i32*, i32** %4, align 8
  %69 = call i8* @utstring_body(i32* %68)
  store i8* %69, i8** %5, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @free(i32* %70)
  br label %72

72:                                               ; preds = %67, %9
  %73 = load i8*, i8** %5, align 8
  store i8* %73, i8** %2, align 8
  br label %74

74:                                               ; preds = %72, %8
  %75 = load i8*, i8** %2, align 8
  ret i8* %75
}

declare dso_local i32 @utstring_new(i32*) #1

declare dso_local i32 @ucl_utstring_append_len(i8*, i32, i32*) #1

declare dso_local i32 @ucl_utstring_append_int(i32, i32*) #1

declare dso_local i32 @ucl_utstring_append_double(i32, i32*) #1

declare dso_local i8* @utstring_body(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
