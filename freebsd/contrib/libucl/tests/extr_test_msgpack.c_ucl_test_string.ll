; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/tests/extr_test_msgpack.c_ucl_test_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/tests/extr_test_msgpack.c_ucl_test_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@UCL_ARRAY = common dso_local global i32 0, align 4
@nelt = common dso_local global i32 0, align 4
@UCL_STRING_RAW = common dso_local global i32 0, align 4
@UCL_OBJECT_BINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* ()* @ucl_test_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @ucl_test_string() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = load i32, i32* @UCL_ARRAY, align 4
  %8 = call %struct.TYPE_7__* @ucl_object_typed_new(i32 %7)
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %1, align 8
  %9 = call i32 (...) @pcg32_random()
  %10 = load i32, i32* @nelt, align 4
  %11 = srem i32 %9, %10
  store i32 %11, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %101, %0
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %104

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %21, %16
  %18 = call i32 (...) @pcg32_random()
  store i32 %18, i32* %5, align 4
  %19 = srem i32 %18, 128
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %17

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = srem i32 %23, 128
  %25 = call i8* @malloc(i32 %24)
  store i8* %25, i8** %6, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = srem i32 %28, 128
  %30 = load i32, i32* @UCL_STRING_RAW, align 4
  %31 = call %struct.TYPE_7__* @ucl_object_fromstring_common(i8* %27, i32 %29, i32 %30)
  %32 = call i32 @ucl_array_append(%struct.TYPE_7__* %26, %struct.TYPE_7__* %31)
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @free(i8* %33)
  br label %35

35:                                               ; preds = %39, %22
  %36 = call i32 (...) @pcg32_random()
  store i32 %36, i32* %5, align 4
  %37 = srem i32 %36, 512
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %35

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = srem i32 %41, 512
  %43 = call i8* @malloc(i32 %42)
  store i8* %43, i8** %6, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %5, align 4
  %47 = srem i32 %46, 512
  %48 = load i32, i32* @UCL_STRING_RAW, align 4
  %49 = call %struct.TYPE_7__* @ucl_object_fromstring_common(i8* %45, i32 %47, i32 %48)
  %50 = call i32 @ucl_array_append(%struct.TYPE_7__* %44, %struct.TYPE_7__* %49)
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @free(i8* %51)
  br label %53

53:                                               ; preds = %57, %40
  %54 = call i32 (...) @pcg32_random()
  store i32 %54, i32* %5, align 4
  %55 = srem i32 %54, 128
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %53

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = srem i32 %59, 128
  %61 = call i8* @malloc(i32 %60)
  store i8* %61, i8** %6, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %5, align 4
  %64 = srem i32 %63, 128
  %65 = load i32, i32* @UCL_STRING_RAW, align 4
  %66 = call %struct.TYPE_7__* @ucl_object_fromstring_common(i8* %62, i32 %64, i32 %65)
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %2, align 8
  %67 = load i32, i32* @UCL_OBJECT_BINARY, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %74 = call i32 @ucl_array_append(%struct.TYPE_7__* %72, %struct.TYPE_7__* %73)
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @free(i8* %75)
  br label %77

77:                                               ; preds = %81, %58
  %78 = call i32 (...) @pcg32_random()
  store i32 %78, i32* %5, align 4
  %79 = srem i32 %78, 512
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %77

82:                                               ; preds = %77
  %83 = load i32, i32* %5, align 4
  %84 = srem i32 %83, 512
  %85 = call i8* @malloc(i32 %84)
  store i8* %85, i8** %6, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %5, align 4
  %88 = srem i32 %87, 512
  %89 = load i32, i32* @UCL_STRING_RAW, align 4
  %90 = call %struct.TYPE_7__* @ucl_object_fromstring_common(i8* %86, i32 %88, i32 %89)
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %2, align 8
  %91 = load i32, i32* @UCL_OBJECT_BINARY, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %98 = call i32 @ucl_array_append(%struct.TYPE_7__* %96, %struct.TYPE_7__* %97)
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @free(i8* %99)
  br label %101

101:                                              ; preds = %82
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %4, align 4
  br label %12

104:                                              ; preds = %12
  %105 = call i8* @malloc(i32 65537)
  store i8* %105, i8** %6, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = load i32, i32* @UCL_STRING_RAW, align 4
  %108 = call %struct.TYPE_7__* @ucl_object_fromstring_common(i8* %106, i32 65537, i32 %107)
  store %struct.TYPE_7__* %108, %struct.TYPE_7__** %2, align 8
  %109 = load i32, i32* @UCL_OBJECT_BINARY, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %116 = call i32 @ucl_array_append(%struct.TYPE_7__* %114, %struct.TYPE_7__* %115)
  %117 = load i8*, i8** %6, align 8
  %118 = call i32 @free(i8* %117)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  ret %struct.TYPE_7__* %119
}

declare dso_local %struct.TYPE_7__* @ucl_object_typed_new(i32) #1

declare dso_local i32 @pcg32_random(...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @ucl_array_append(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @ucl_object_fromstring_common(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
