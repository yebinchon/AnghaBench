; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_object_iterate_full.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_object_iterate_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_6__* }
%struct.ucl_object_safe_iter = type { %struct.TYPE_6__*, i32* }

@UCL_OBJECT = common dso_local global i64 0, align 8
@UCL_ARRAY = common dso_local global i64 0, align 8
@UCL_ITERATE_IMPLICIT = common dso_local global i32 0, align 4
@UCL_ITERATE_EXPLICIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @ucl_object_iterate_full(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucl_object_safe_iter*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.ucl_object_safe_iter* @UCL_SAFE_ITER(i32 %8)
  store %struct.ucl_object_safe_iter* %9, %struct.ucl_object_safe_iter** %6, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  %10 = load %struct.ucl_object_safe_iter*, %struct.ucl_object_safe_iter** %6, align 8
  %11 = call i32 @UCL_SAFE_ITER_CHECK(%struct.ucl_object_safe_iter* %10)
  %12 = load %struct.ucl_object_safe_iter*, %struct.ucl_object_safe_iter** %6, align 8
  %13 = getelementptr inbounds %struct.ucl_object_safe_iter, %struct.ucl_object_safe_iter* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp eq %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %96

17:                                               ; preds = %2
  %18 = load %struct.ucl_object_safe_iter*, %struct.ucl_object_safe_iter** %6, align 8
  %19 = getelementptr inbounds %struct.ucl_object_safe_iter, %struct.ucl_object_safe_iter* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @UCL_OBJECT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load %struct.ucl_object_safe_iter*, %struct.ucl_object_safe_iter** %6, align 8
  %27 = getelementptr inbounds %struct.ucl_object_safe_iter, %struct.ucl_object_safe_iter* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @UCL_ARRAY, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %61

33:                                               ; preds = %25, %17
  %34 = load %struct.ucl_object_safe_iter*, %struct.ucl_object_safe_iter** %6, align 8
  %35 = getelementptr inbounds %struct.ucl_object_safe_iter, %struct.ucl_object_safe_iter* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load %struct.ucl_object_safe_iter*, %struct.ucl_object_safe_iter** %6, align 8
  %38 = getelementptr inbounds %struct.ucl_object_safe_iter, %struct.ucl_object_safe_iter* %37, i32 0, i32 1
  %39 = call %struct.TYPE_6__* @ucl_object_iterate(%struct.TYPE_6__* %36, i32** %38, i32 1)
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %7, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = icmp eq %struct.TYPE_6__* %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @UCL_ITERATE_IMPLICIT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.ucl_object_safe_iter*, %struct.ucl_object_safe_iter** %6, align 8
  %49 = getelementptr inbounds %struct.ucl_object_safe_iter, %struct.ucl_object_safe_iter* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load %struct.ucl_object_safe_iter*, %struct.ucl_object_safe_iter** %6, align 8
  %54 = getelementptr inbounds %struct.ucl_object_safe_iter, %struct.ucl_object_safe_iter* %53, i32 0, i32 0
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %54, align 8
  %55 = load %struct.ucl_object_safe_iter*, %struct.ucl_object_safe_iter** %6, align 8
  %56 = getelementptr inbounds %struct.ucl_object_safe_iter, %struct.ucl_object_safe_iter* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call %struct.TYPE_6__* @ucl_object_iterate_safe(i32 %57, i32 %58)
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %3, align 8
  br label %96

60:                                               ; preds = %42, %33
  br label %94

61:                                               ; preds = %25
  %62 = load %struct.ucl_object_safe_iter*, %struct.ucl_object_safe_iter** %6, align 8
  %63 = getelementptr inbounds %struct.ucl_object_safe_iter, %struct.ucl_object_safe_iter* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %7, align 8
  %65 = load %struct.ucl_object_safe_iter*, %struct.ucl_object_safe_iter** %6, align 8
  %66 = getelementptr inbounds %struct.ucl_object_safe_iter, %struct.ucl_object_safe_iter* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load %struct.ucl_object_safe_iter*, %struct.ucl_object_safe_iter** %6, align 8
  %71 = getelementptr inbounds %struct.ucl_object_safe_iter, %struct.ucl_object_safe_iter* %70, i32 0, i32 0
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %71, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @UCL_ITERATE_EXPLICIT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %61
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @UCL_OBJECT, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @UCL_ARRAY, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82, %76
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call %struct.TYPE_6__* @ucl_object_iterate_safe(i32 %89, i32 %90)
  store %struct.TYPE_6__* %91, %struct.TYPE_6__** %3, align 8
  br label %96

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %61
  br label %94

94:                                               ; preds = %93, %60
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %95, %struct.TYPE_6__** %3, align 8
  br label %96

96:                                               ; preds = %94, %88, %47, %16
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %97
}

declare dso_local %struct.ucl_object_safe_iter* @UCL_SAFE_ITER(i32) #1

declare dso_local i32 @UCL_SAFE_ITER_CHECK(%struct.ucl_object_safe_iter*) #1

declare dso_local %struct.TYPE_6__* @ucl_object_iterate(%struct.TYPE_6__*, i32**, i32) #1

declare dso_local %struct.TYPE_6__* @ucl_object_iterate_safe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
