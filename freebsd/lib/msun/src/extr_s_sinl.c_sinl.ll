; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_sinl.c_sinl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_sinl.c_sinl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IEEEl2bits = type { x86_fp80 }
%struct.TYPE_2__ = type { i32, i32 }

@M_PI_4 = common dso_local global x86_fp80 0xK00000000000000000000, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @sinl(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = alloca %union.IEEEl2bits, align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x x86_fp80], align 16
  %8 = alloca x86_fp80, align 16
  %9 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %3, align 16
  %10 = load x86_fp80, x86_fp80* %3, align 16
  %11 = bitcast %union.IEEEl2bits* %4 to x86_fp80*
  store x86_fp80 %10, x86_fp80* %11, align 16
  %12 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 16
  store i32 %14, i32* %6, align 4
  %15 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 16
  %17 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load x86_fp80, x86_fp80* %3, align 16
  store x86_fp80 %22, x86_fp80* %2, align 16
  br label %87

23:                                               ; preds = %1
  %24 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 32767
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load x86_fp80, x86_fp80* %3, align 16
  %30 = load x86_fp80, x86_fp80* %3, align 16
  %31 = fsub x86_fp80 %29, %30
  %32 = load x86_fp80, x86_fp80* %3, align 16
  %33 = load x86_fp80, x86_fp80* %3, align 16
  %34 = fsub x86_fp80 %32, %33
  %35 = fdiv x86_fp80 %31, %34
  store x86_fp80 %35, x86_fp80* %2, align 16
  br label %87

36:                                               ; preds = %23
  %37 = call i32 (...) @ENTERI()
  %38 = bitcast %union.IEEEl2bits* %4 to x86_fp80*
  %39 = load x86_fp80, x86_fp80* %38, align 16
  %40 = load x86_fp80, x86_fp80* @M_PI_4, align 16
  %41 = fcmp olt x86_fp80 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = bitcast %union.IEEEl2bits* %4 to x86_fp80*
  %44 = load x86_fp80, x86_fp80* %43, align 16
  %45 = call x86_fp80 @__kernel_sinl(x86_fp80 %44, x86_fp80 0xK00000000000000000000, i32 0)
  store x86_fp80 %45, x86_fp80* %8, align 16
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load x86_fp80, x86_fp80* %8, align 16
  %50 = fneg x86_fp80 %49
  br label %53

51:                                               ; preds = %42
  %52 = load x86_fp80, x86_fp80* %8, align 16
  br label %53

53:                                               ; preds = %51, %48
  %54 = phi x86_fp80 [ %50, %48 ], [ %52, %51 ]
  %55 = call i32 @RETURNI(x86_fp80 %54)
  br label %56

56:                                               ; preds = %53, %36
  %57 = load x86_fp80, x86_fp80* %3, align 16
  %58 = getelementptr inbounds [2 x x86_fp80], [2 x x86_fp80]* %7, i64 0, i64 0
  %59 = call i32 @__ieee754_rem_pio2l(x86_fp80 %57, x86_fp80* %58)
  store i32 %59, i32* %5, align 4
  %60 = getelementptr inbounds [2 x x86_fp80], [2 x x86_fp80]* %7, i64 0, i64 0
  %61 = load x86_fp80, x86_fp80* %60, align 16
  store x86_fp80 %61, x86_fp80* %8, align 16
  %62 = getelementptr inbounds [2 x x86_fp80], [2 x x86_fp80]* %7, i64 0, i64 1
  %63 = load x86_fp80, x86_fp80* %62, align 16
  store x86_fp80 %63, x86_fp80* %9, align 16
  %64 = load i32, i32* %5, align 4
  %65 = and i32 %64, 3
  switch i32 %65, label %84 [
    i32 0, label %66
    i32 1, label %70
    i32 2, label %74
    i32 3, label %79
  ]

66:                                               ; preds = %56
  %67 = load x86_fp80, x86_fp80* %8, align 16
  %68 = load x86_fp80, x86_fp80* %9, align 16
  %69 = call x86_fp80 @__kernel_sinl(x86_fp80 %67, x86_fp80 %68, i32 1)
  store x86_fp80 %69, x86_fp80* %8, align 16
  br label %84

70:                                               ; preds = %56
  %71 = load x86_fp80, x86_fp80* %8, align 16
  %72 = load x86_fp80, x86_fp80* %9, align 16
  %73 = call x86_fp80 @__kernel_cosl(x86_fp80 %71, x86_fp80 %72)
  store x86_fp80 %73, x86_fp80* %8, align 16
  br label %84

74:                                               ; preds = %56
  %75 = load x86_fp80, x86_fp80* %8, align 16
  %76 = load x86_fp80, x86_fp80* %9, align 16
  %77 = call x86_fp80 @__kernel_sinl(x86_fp80 %75, x86_fp80 %76, i32 1)
  %78 = fneg x86_fp80 %77
  store x86_fp80 %78, x86_fp80* %8, align 16
  br label %84

79:                                               ; preds = %56
  %80 = load x86_fp80, x86_fp80* %8, align 16
  %81 = load x86_fp80, x86_fp80* %9, align 16
  %82 = call x86_fp80 @__kernel_cosl(x86_fp80 %80, x86_fp80 %81)
  %83 = fneg x86_fp80 %82
  store x86_fp80 %83, x86_fp80* %8, align 16
  br label %84

84:                                               ; preds = %56, %79, %74, %70, %66
  %85 = load x86_fp80, x86_fp80* %8, align 16
  %86 = call i32 @RETURNI(x86_fp80 %85)
  br label %87

87:                                               ; preds = %84, %28, %21
  %88 = load x86_fp80, x86_fp80* %2, align 16
  ret x86_fp80 %88
}

declare dso_local i32 @ENTERI(...) #1

declare dso_local x86_fp80 @__kernel_sinl(x86_fp80, x86_fp80, i32) #1

declare dso_local i32 @RETURNI(x86_fp80) #1

declare dso_local i32 @__ieee754_rem_pio2l(x86_fp80, x86_fp80*) #1

declare dso_local x86_fp80 @__kernel_cosl(x86_fp80, x86_fp80) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
