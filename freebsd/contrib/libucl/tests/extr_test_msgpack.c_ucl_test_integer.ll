; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/tests/extr_test_msgpack.c_ucl_test_integer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/tests/extr_test_msgpack.c_ucl_test_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UCL_ARRAY = common dso_local global i32 0, align 4
@nelt = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i32 0, align 4
@INT16_MAX = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @ucl_test_integer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ucl_test_integer() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = load i32, i32* @UCL_ARRAY, align 4
  %7 = call i32* @ucl_object_typed_new(i32 %6)
  store i32* %7, i32** %1, align 8
  %8 = call i32 (...) @pcg32_random()
  %9 = load i32, i32* @nelt, align 4
  %10 = srem i32 %8, %9
  store i32 %10, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %146, %0
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %149

15:                                               ; preds = %11
  %16 = call i32 (...) @pcg32_random()
  %17 = shl i32 %16, 32
  %18 = call i32 (...) @pcg32_random()
  %19 = or i32 %17, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32*, i32** %1, align 8
  %21 = load i32, i32* %4, align 4
  %22 = srem i32 %21, 128
  %23 = call i32 @ucl_object_fromint(i32 %22)
  %24 = call i32 @ucl_array_append(i32* %20, i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = load i32, i32* %4, align 4
  %27 = srem i32 %26, 128
  %28 = sub nsw i32 0, %27
  %29 = call i32 @ucl_object_fromint(i32 %28)
  %30 = call i32 @ucl_array_append(i32* %25, i32 %29)
  %31 = call i32 (...) @pcg32_random()
  %32 = shl i32 %31, 32
  %33 = call i32 (...) @pcg32_random()
  %34 = or i32 %32, %33
  store i32 %34, i32* %4, align 4
  %35 = load i32*, i32** %1, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @UINT16_MAX, align 4
  %38 = srem i32 %36, %37
  %39 = call i32 @ucl_object_fromint(i32 %38)
  %40 = call i32 @ucl_array_append(i32* %35, i32 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @INT16_MAX, align 4
  %44 = srem i32 %42, %43
  %45 = sub nsw i32 0, %44
  %46 = call i32 @ucl_object_fromint(i32 %45)
  %47 = call i32 @ucl_array_append(i32* %41, i32 %46)
  %48 = call i32 (...) @pcg32_random()
  %49 = shl i32 %48, 32
  %50 = call i32 (...) @pcg32_random()
  %51 = or i32 %49, %50
  store i32 %51, i32* %4, align 4
  %52 = load i32*, i32** %1, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @UINT32_MAX, align 4
  %55 = srem i32 %53, %54
  %56 = call i32 @ucl_object_fromint(i32 %55)
  %57 = call i32 @ucl_array_append(i32* %52, i32 %56)
  %58 = load i32*, i32** %1, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @INT32_MAX, align 4
  %61 = srem i32 %59, %60
  %62 = sub nsw i32 0, %61
  %63 = call i32 @ucl_object_fromint(i32 %62)
  %64 = call i32 @ucl_array_append(i32* %58, i32 %63)
  %65 = call i32 (...) @pcg32_random()
  %66 = shl i32 %65, 32
  %67 = call i32 (...) @pcg32_random()
  %68 = or i32 %66, %67
  store i32 %68, i32* %4, align 4
  %69 = load i32*, i32** %1, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @ucl_object_fromint(i32 %70)
  %72 = call i32 @ucl_array_append(i32* %69, i32 %71)
  %73 = load i32*, i32** %1, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sub nsw i32 0, %74
  %76 = call i32 @ucl_object_fromint(i32 %75)
  %77 = call i32 @ucl_array_append(i32* %73, i32 %76)
  %78 = call i32 (...) @pcg32_random()
  %79 = shl i32 %78, 32
  %80 = call i32 (...) @pcg32_random()
  %81 = or i32 %79, %80
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = srem i32 %82, 128
  %84 = sdiv i32 %83, 19
  %85 = mul nsw i32 %84, 16
  %86 = sitofp i32 %85 to double
  store double %86, double* %5, align 8
  %87 = load i32*, i32** %1, align 8
  %88 = load double, double* %5, align 8
  %89 = call i32 @ucl_object_fromdouble(double %88)
  %90 = call i32 @ucl_array_append(i32* %87, i32 %89)
  %91 = call i32 (...) @pcg32_random()
  %92 = shl i32 %91, 32
  %93 = call i32 (...) @pcg32_random()
  %94 = or i32 %92, %93
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = srem i32 %95, 128
  %97 = sub nsw i32 0, %96
  %98 = sdiv i32 %97, 19
  %99 = mul nsw i32 %98, 16
  %100 = sitofp i32 %99 to double
  store double %100, double* %5, align 8
  %101 = load i32*, i32** %1, align 8
  %102 = load double, double* %5, align 8
  %103 = call i32 @ucl_object_fromdouble(double %102)
  %104 = call i32 @ucl_array_append(i32* %101, i32 %103)
  %105 = call i32 (...) @pcg32_random()
  %106 = shl i32 %105, 32
  %107 = call i32 (...) @pcg32_random()
  %108 = or i32 %106, %107
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = srem i32 %109, 65536
  %111 = sdiv i32 %110, 19
  %112 = mul nsw i32 %111, 16
  %113 = sitofp i32 %112 to double
  store double %113, double* %5, align 8
  %114 = load i32*, i32** %1, align 8
  %115 = load double, double* %5, align 8
  %116 = call i32 @ucl_object_fromdouble(double %115)
  %117 = call i32 @ucl_array_append(i32* %114, i32 %116)
  %118 = load i32*, i32** %1, align 8
  %119 = load double, double* %5, align 8
  %120 = fneg double %119
  %121 = call i32 @ucl_object_fromdouble(double %120)
  %122 = call i32 @ucl_array_append(i32* %118, i32 %121)
  %123 = call i32 (...) @pcg32_random()
  %124 = shl i32 %123, 32
  %125 = call i32 (...) @pcg32_random()
  %126 = or i32 %124, %125
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @INT32_MAX, align 4
  %129 = srem i32 %127, %128
  %130 = sdiv i32 %129, 19
  %131 = mul nsw i32 %130, 16
  %132 = sitofp i32 %131 to double
  store double %132, double* %5, align 8
  %133 = load i32*, i32** %1, align 8
  %134 = load double, double* %5, align 8
  %135 = call i32 @ucl_object_fromdouble(double %134)
  %136 = call i32 @ucl_array_append(i32* %133, i32 %135)
  %137 = call i32 (...) @pcg32_random()
  %138 = shl i32 %137, 32
  %139 = call i32 (...) @pcg32_random()
  %140 = or i32 %138, %139
  store i32 %140, i32* %4, align 4
  %141 = call i32 @memcpy(double* %5, i32* %4, i32 8)
  %142 = load i32*, i32** %1, align 8
  %143 = load i32, i32* %4, align 4
  %144 = call i32 @ucl_object_fromint(i32 %143)
  %145 = call i32 @ucl_array_append(i32* %142, i32 %144)
  br label %146

146:                                              ; preds = %15
  %147 = load i32, i32* %3, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %3, align 4
  br label %11

149:                                              ; preds = %11
  %150 = load i32*, i32** %1, align 8
  ret i32* %150
}

declare dso_local i32* @ucl_object_typed_new(i32) #1

declare dso_local i32 @pcg32_random(...) #1

declare dso_local i32 @ucl_array_append(i32*, i32) #1

declare dso_local i32 @ucl_object_fromint(i32) #1

declare dso_local i32 @ucl_object_fromdouble(double) #1

declare dso_local i32 @memcpy(double*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
