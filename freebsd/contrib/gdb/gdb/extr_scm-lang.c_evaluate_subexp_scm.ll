; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_scm-lang.c_evaluate_subexp_scm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_scm-lang.c_evaluate_subexp_scm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }
%struct.expression = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8, i32 }

@EVAL_SKIP = common dso_local global i32 0, align 4
@builtin_type_long = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.type*, %struct.expression*, i32*, i32)* @evaluate_subexp_scm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @evaluate_subexp_scm(%struct.type* %0, %struct.expression* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.value*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.expression*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.type* %0, %struct.type** %6, align 8
  store %struct.expression* %1, %struct.expression** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.expression*, %struct.expression** %7, align 8
  %15 = getelementptr inbounds %struct.expression, %struct.expression* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  switch i32 %23, label %97 [
    i32 128, label %24
    i32 129, label %60
  ]

24:                                               ; preds = %4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %28 = load %struct.expression*, %struct.expression** %7, align 8
  %29 = getelementptr inbounds %struct.expression, %struct.expression* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @longest_to_int(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @BYTES_TO_EXP_ELEM(i32 %39)
  %41 = add nsw i32 3, %40
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, %41
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @EVAL_SKIP, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %24
  br label %104

49:                                               ; preds = %24
  %50 = load %struct.expression*, %struct.expression** %7, align 8
  %51 = getelementptr inbounds %struct.expression, %struct.expression* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i8* %57, i8** %13, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = call %struct.value* @scm_lookup_name(i8* %58)
  store %struct.value* %59, %struct.value** %5, align 8
  br label %107

60:                                               ; preds = %4
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  store i32 %62, i32* %12, align 4
  %64 = load %struct.expression*, %struct.expression** %7, align 8
  %65 = getelementptr inbounds %struct.expression, %struct.expression* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @longest_to_int(i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i32 @BYTES_TO_EXP_ELEM(i32 %75)
  %77 = add nsw i32 3, %76
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, %77
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @EVAL_SKIP, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %60
  br label %104

85:                                               ; preds = %60
  %86 = load %struct.expression*, %struct.expression** %7, align 8
  %87 = getelementptr inbounds %struct.expression, %struct.expression* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 2
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i8* %93, i8** %13, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call %struct.value* @scm_evaluate_string(i8* %94, i32 %95)
  store %struct.value* %96, %struct.value** %5, align 8
  br label %107

97:                                               ; preds = %4
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.type*, %struct.type** %6, align 8
  %100 = load %struct.expression*, %struct.expression** %7, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call %struct.value* @evaluate_subexp_standard(%struct.type* %99, %struct.expression* %100, i32* %101, i32 %102)
  store %struct.value* %103, %struct.value** %5, align 8
  br label %107

104:                                              ; preds = %84, %48
  %105 = load i32, i32* @builtin_type_long, align 4
  %106 = call %struct.value* @value_from_longest(i32 %105, i32 1)
  store %struct.value* %106, %struct.value** %5, align 8
  br label %107

107:                                              ; preds = %104, %98, %85, %49
  %108 = load %struct.value*, %struct.value** %5, align 8
  ret %struct.value* %108
}

declare dso_local i32 @longest_to_int(i32) #1

declare dso_local i32 @BYTES_TO_EXP_ELEM(i32) #1

declare dso_local %struct.value* @scm_lookup_name(i8*) #1

declare dso_local %struct.value* @scm_evaluate_string(i8*, i32) #1

declare dso_local %struct.value* @evaluate_subexp_standard(%struct.type*, %struct.expression*, i32*, i32) #1

declare dso_local %struct.value* @value_from_longest(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
