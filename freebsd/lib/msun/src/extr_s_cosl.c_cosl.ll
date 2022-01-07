; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_cosl.c_cosl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_cosl.c_cosl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IEEEl2bits = type { x86_fp80 }
%struct.TYPE_2__ = type { i32, i64 }

@M_PI_4 = common dso_local global x86_fp80 0xK00000000000000000000, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @cosl(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = alloca %union.IEEEl2bits, align 16
  %5 = alloca i32, align 4
  %6 = alloca [2 x x86_fp80], align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %3, align 16
  %9 = load x86_fp80, x86_fp80* %3, align 16
  %10 = bitcast %union.IEEEl2bits* %4 to x86_fp80*
  store x86_fp80 %9, x86_fp80* %10, align 16
  %11 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %2, align 16
  br label %73

18:                                               ; preds = %1
  %19 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 16
  %22 = icmp eq i32 %21, 32767
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load x86_fp80, x86_fp80* %3, align 16
  %25 = load x86_fp80, x86_fp80* %3, align 16
  %26 = fsub x86_fp80 %24, %25
  %27 = load x86_fp80, x86_fp80* %3, align 16
  %28 = load x86_fp80, x86_fp80* %3, align 16
  %29 = fsub x86_fp80 %27, %28
  %30 = fdiv x86_fp80 %26, %29
  store x86_fp80 %30, x86_fp80* %2, align 16
  br label %73

31:                                               ; preds = %18
  %32 = call i32 (...) @ENTERI()
  %33 = bitcast %union.IEEEl2bits* %4 to x86_fp80*
  %34 = load x86_fp80, x86_fp80* %33, align 16
  %35 = load x86_fp80, x86_fp80* @M_PI_4, align 16
  %36 = fcmp olt x86_fp80 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = bitcast %union.IEEEl2bits* %4 to x86_fp80*
  %39 = load x86_fp80, x86_fp80* %38, align 16
  %40 = call x86_fp80 @__kernel_cosl(x86_fp80 %39, x86_fp80 0xK00000000000000000000)
  %41 = call i32 @RETURNI(x86_fp80 %40)
  br label %42

42:                                               ; preds = %37, %31
  %43 = load x86_fp80, x86_fp80* %3, align 16
  %44 = getelementptr inbounds [2 x x86_fp80], [2 x x86_fp80]* %6, i64 0, i64 0
  %45 = call i32 @__ieee754_rem_pio2l(x86_fp80 %43, x86_fp80* %44)
  store i32 %45, i32* %5, align 4
  %46 = getelementptr inbounds [2 x x86_fp80], [2 x x86_fp80]* %6, i64 0, i64 0
  %47 = load x86_fp80, x86_fp80* %46, align 16
  store x86_fp80 %47, x86_fp80* %7, align 16
  %48 = getelementptr inbounds [2 x x86_fp80], [2 x x86_fp80]* %6, i64 0, i64 1
  %49 = load x86_fp80, x86_fp80* %48, align 16
  store x86_fp80 %49, x86_fp80* %8, align 16
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 3
  switch i32 %51, label %70 [
    i32 0, label %52
    i32 1, label %56
    i32 2, label %61
    i32 3, label %66
  ]

52:                                               ; preds = %42
  %53 = load x86_fp80, x86_fp80* %7, align 16
  %54 = load x86_fp80, x86_fp80* %8, align 16
  %55 = call x86_fp80 @__kernel_cosl(x86_fp80 %53, x86_fp80 %54)
  store x86_fp80 %55, x86_fp80* %7, align 16
  br label %70

56:                                               ; preds = %42
  %57 = load x86_fp80, x86_fp80* %7, align 16
  %58 = load x86_fp80, x86_fp80* %8, align 16
  %59 = call x86_fp80 @__kernel_sinl(x86_fp80 %57, x86_fp80 %58, i32 1)
  %60 = fneg x86_fp80 %59
  store x86_fp80 %60, x86_fp80* %7, align 16
  br label %70

61:                                               ; preds = %42
  %62 = load x86_fp80, x86_fp80* %7, align 16
  %63 = load x86_fp80, x86_fp80* %8, align 16
  %64 = call x86_fp80 @__kernel_cosl(x86_fp80 %62, x86_fp80 %63)
  %65 = fneg x86_fp80 %64
  store x86_fp80 %65, x86_fp80* %7, align 16
  br label %70

66:                                               ; preds = %42
  %67 = load x86_fp80, x86_fp80* %7, align 16
  %68 = load x86_fp80, x86_fp80* %8, align 16
  %69 = call x86_fp80 @__kernel_sinl(x86_fp80 %67, x86_fp80 %68, i32 1)
  store x86_fp80 %69, x86_fp80* %7, align 16
  br label %70

70:                                               ; preds = %42, %66, %61, %56, %52
  %71 = load x86_fp80, x86_fp80* %7, align 16
  %72 = call i32 @RETURNI(x86_fp80 %71)
  br label %73

73:                                               ; preds = %70, %23, %17
  %74 = load x86_fp80, x86_fp80* %2, align 16
  ret x86_fp80 %74
}

declare dso_local i32 @ENTERI(...) #1

declare dso_local i32 @RETURNI(x86_fp80) #1

declare dso_local x86_fp80 @__kernel_cosl(x86_fp80, x86_fp80) #1

declare dso_local i32 @__ieee754_rem_pio2l(x86_fp80, x86_fp80*) #1

declare dso_local x86_fp80 @__kernel_sinl(x86_fp80, x86_fp80, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
