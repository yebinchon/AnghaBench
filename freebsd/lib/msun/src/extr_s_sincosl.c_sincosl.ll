; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_sincosl.c_sincosl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_sincosl.c_sincosl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IEEEl2bits = type { x86_fp80 }
%struct.TYPE_2__ = type { i32, i32 }

@M_PI_4 = common dso_local global x86_fp80 0xK00000000000000000000, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sincosl(x86_fp80 %0, x86_fp80* %1, x86_fp80* %2) #0 {
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80*, align 8
  %6 = alloca x86_fp80*, align 8
  %7 = alloca %union.IEEEl2bits, align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x x86_fp80], align 16
  store x86_fp80 %0, x86_fp80* %4, align 16
  store x86_fp80* %1, x86_fp80** %5, align 8
  store x86_fp80* %2, x86_fp80** %6, align 8
  %11 = load x86_fp80, x86_fp80* %4, align 16
  %12 = bitcast %union.IEEEl2bits* %7 to x86_fp80*
  store x86_fp80 %11, x86_fp80* %12, align 16
  %13 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 16
  store i32 %15, i32* %9, align 4
  %16 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 16
  %18 = call i32 (...) @ENTERV()
  %19 = bitcast %union.IEEEl2bits* %7 to x86_fp80*
  %20 = load x86_fp80, x86_fp80* %19, align 16
  %21 = load x86_fp80, x86_fp80* @M_PI_4, align 16
  %22 = fcmp olt x86_fp80 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %3
  %24 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load x86_fp80, x86_fp80* %4, align 16
  %30 = load x86_fp80*, x86_fp80** %5, align 8
  store x86_fp80 %29, x86_fp80* %30, align 16
  %31 = load x86_fp80*, x86_fp80** %6, align 8
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %31, align 16
  br label %37

32:                                               ; preds = %23
  %33 = load x86_fp80, x86_fp80* %4, align 16
  %34 = load x86_fp80*, x86_fp80** %5, align 8
  %35 = load x86_fp80*, x86_fp80** %6, align 8
  %36 = call i32 @__kernel_sincosl(x86_fp80 %33, x86_fp80 0xK00000000000000000000, i32 0, x86_fp80* %34, x86_fp80* %35)
  br label %37

37:                                               ; preds = %32, %28
  %38 = call i32 (...) @RETURNV()
  br label %39

39:                                               ; preds = %37, %3
  %40 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 32767
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load x86_fp80, x86_fp80* %4, align 16
  %46 = load x86_fp80, x86_fp80* %4, align 16
  %47 = fsub x86_fp80 %45, %46
  %48 = load x86_fp80*, x86_fp80** %5, align 8
  store x86_fp80 %47, x86_fp80* %48, align 16
  %49 = load x86_fp80, x86_fp80* %4, align 16
  %50 = load x86_fp80, x86_fp80* %4, align 16
  %51 = fsub x86_fp80 %49, %50
  %52 = load x86_fp80*, x86_fp80** %6, align 8
  store x86_fp80 %51, x86_fp80* %52, align 16
  %53 = call i32 (...) @RETURNV()
  br label %54

54:                                               ; preds = %44, %39
  %55 = load x86_fp80, x86_fp80* %4, align 16
  %56 = getelementptr inbounds [2 x x86_fp80], [2 x x86_fp80]* %10, i64 0, i64 0
  %57 = call i32 @__ieee754_rem_pio2l(x86_fp80 %55, x86_fp80* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, 3
  switch i32 %59, label %96 [
    i32 0, label %60
    i32 1, label %68
    i32 2, label %80
  ]

60:                                               ; preds = %54
  %61 = getelementptr inbounds [2 x x86_fp80], [2 x x86_fp80]* %10, i64 0, i64 0
  %62 = load x86_fp80, x86_fp80* %61, align 16
  %63 = getelementptr inbounds [2 x x86_fp80], [2 x x86_fp80]* %10, i64 0, i64 1
  %64 = load x86_fp80, x86_fp80* %63, align 16
  %65 = load x86_fp80*, x86_fp80** %5, align 8
  %66 = load x86_fp80*, x86_fp80** %6, align 8
  %67 = call i32 @__kernel_sincosl(x86_fp80 %62, x86_fp80 %64, i32 1, x86_fp80* %65, x86_fp80* %66)
  br label %108

68:                                               ; preds = %54
  %69 = getelementptr inbounds [2 x x86_fp80], [2 x x86_fp80]* %10, i64 0, i64 0
  %70 = load x86_fp80, x86_fp80* %69, align 16
  %71 = getelementptr inbounds [2 x x86_fp80], [2 x x86_fp80]* %10, i64 0, i64 1
  %72 = load x86_fp80, x86_fp80* %71, align 16
  %73 = load x86_fp80*, x86_fp80** %6, align 8
  %74 = load x86_fp80*, x86_fp80** %5, align 8
  %75 = call i32 @__kernel_sincosl(x86_fp80 %70, x86_fp80 %72, i32 1, x86_fp80* %73, x86_fp80* %74)
  %76 = load x86_fp80*, x86_fp80** %6, align 8
  %77 = load x86_fp80, x86_fp80* %76, align 16
  %78 = fneg x86_fp80 %77
  %79 = load x86_fp80*, x86_fp80** %6, align 8
  store x86_fp80 %78, x86_fp80* %79, align 16
  br label %108

80:                                               ; preds = %54
  %81 = getelementptr inbounds [2 x x86_fp80], [2 x x86_fp80]* %10, i64 0, i64 0
  %82 = load x86_fp80, x86_fp80* %81, align 16
  %83 = getelementptr inbounds [2 x x86_fp80], [2 x x86_fp80]* %10, i64 0, i64 1
  %84 = load x86_fp80, x86_fp80* %83, align 16
  %85 = load x86_fp80*, x86_fp80** %5, align 8
  %86 = load x86_fp80*, x86_fp80** %6, align 8
  %87 = call i32 @__kernel_sincosl(x86_fp80 %82, x86_fp80 %84, i32 1, x86_fp80* %85, x86_fp80* %86)
  %88 = load x86_fp80*, x86_fp80** %5, align 8
  %89 = load x86_fp80, x86_fp80* %88, align 16
  %90 = fneg x86_fp80 %89
  %91 = load x86_fp80*, x86_fp80** %5, align 8
  store x86_fp80 %90, x86_fp80* %91, align 16
  %92 = load x86_fp80*, x86_fp80** %6, align 8
  %93 = load x86_fp80, x86_fp80* %92, align 16
  %94 = fneg x86_fp80 %93
  %95 = load x86_fp80*, x86_fp80** %6, align 8
  store x86_fp80 %94, x86_fp80* %95, align 16
  br label %108

96:                                               ; preds = %54
  %97 = getelementptr inbounds [2 x x86_fp80], [2 x x86_fp80]* %10, i64 0, i64 0
  %98 = load x86_fp80, x86_fp80* %97, align 16
  %99 = getelementptr inbounds [2 x x86_fp80], [2 x x86_fp80]* %10, i64 0, i64 1
  %100 = load x86_fp80, x86_fp80* %99, align 16
  %101 = load x86_fp80*, x86_fp80** %6, align 8
  %102 = load x86_fp80*, x86_fp80** %5, align 8
  %103 = call i32 @__kernel_sincosl(x86_fp80 %98, x86_fp80 %100, i32 1, x86_fp80* %101, x86_fp80* %102)
  %104 = load x86_fp80*, x86_fp80** %5, align 8
  %105 = load x86_fp80, x86_fp80* %104, align 16
  %106 = fneg x86_fp80 %105
  %107 = load x86_fp80*, x86_fp80** %5, align 8
  store x86_fp80 %106, x86_fp80* %107, align 16
  br label %108

108:                                              ; preds = %96, %80, %68, %60
  %109 = call i32 (...) @RETURNV()
  ret void
}

declare dso_local i32 @ENTERV(...) #1

declare dso_local i32 @__kernel_sincosl(x86_fp80, x86_fp80, i32, x86_fp80*, x86_fp80*) #1

declare dso_local i32 @RETURNV(...) #1

declare dso_local i32 @__ieee754_rem_pio2l(x86_fp80, x86_fp80*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
