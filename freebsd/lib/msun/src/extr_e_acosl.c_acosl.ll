; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_acosl.c_acosl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_acosl.c_acosl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IEEEl2bits = type { x86_fp80 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@BIAS = common dso_local global i32 0, align 4
@LDBL_NBIT = common dso_local global i32 0, align 4
@pi = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@pio2_lo = common dso_local global double 0.000000e+00, align 8
@ACOS_CONST = common dso_local global i32 0, align 4
@pio2_hi = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@one = common dso_local global x86_fp80 0xK00000000000000000000, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @acosl(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = alloca %union.IEEEl2bits, align 16
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  %9 = alloca x86_fp80, align 16
  %10 = alloca x86_fp80, align 16
  %11 = alloca x86_fp80, align 16
  %12 = alloca x86_fp80, align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %3, align 16
  %15 = load x86_fp80, x86_fp80* %3, align 16
  %16 = bitcast %union.IEEEl2bits* %4 to x86_fp80*
  store x86_fp80 %15, x86_fp80* %16, align 16
  %17 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_3__*
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 16
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = and i32 %20, 32767
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* @BIAS, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %1
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @BIAS, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %25
  %30 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 16
  %33 = load i32, i32* @LDBL_NBIT, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %35, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %29
  %42 = load i32, i32* %13, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store x86_fp80 0xK00000000000000000000, x86_fp80* %2, align 16
  br label %161

45:                                               ; preds = %41
  %46 = load x86_fp80, x86_fp80* @pi, align 16
  %47 = load double, double* @pio2_lo, align 8
  %48 = fmul double 2.000000e+00, %47
  %49 = fpext double %48 to x86_fp80
  %50 = fadd x86_fp80 %46, %49
  store x86_fp80 %50, x86_fp80* %2, align 16
  br label %161

51:                                               ; preds = %29, %25
  %52 = load x86_fp80, x86_fp80* %3, align 16
  %53 = load x86_fp80, x86_fp80* %3, align 16
  %54 = fsub x86_fp80 %52, %53
  %55 = load x86_fp80, x86_fp80* %3, align 16
  %56 = load x86_fp80, x86_fp80* %3, align 16
  %57 = fsub x86_fp80 %55, %56
  %58 = fdiv x86_fp80 %54, %57
  store x86_fp80 %58, x86_fp80* %2, align 16
  br label %161

59:                                               ; preds = %1
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @BIAS, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %94

64:                                               ; preds = %59
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @ACOS_CONST, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load x86_fp80, x86_fp80* @pio2_hi, align 16
  %70 = load double, double* @pio2_lo, align 8
  %71 = fpext double %70 to x86_fp80
  %72 = fadd x86_fp80 %69, %71
  store x86_fp80 %72, x86_fp80* %2, align 16
  br label %161

73:                                               ; preds = %64
  %74 = load x86_fp80, x86_fp80* %3, align 16
  %75 = load x86_fp80, x86_fp80* %3, align 16
  %76 = fmul x86_fp80 %74, %75
  store x86_fp80 %76, x86_fp80* %5, align 16
  %77 = load x86_fp80, x86_fp80* %5, align 16
  %78 = call x86_fp80 @P(x86_fp80 %77)
  store x86_fp80 %78, x86_fp80* %6, align 16
  %79 = load x86_fp80, x86_fp80* %5, align 16
  %80 = call x86_fp80 @Q(x86_fp80 %79)
  store x86_fp80 %80, x86_fp80* %7, align 16
  %81 = load x86_fp80, x86_fp80* %6, align 16
  %82 = load x86_fp80, x86_fp80* %7, align 16
  %83 = fdiv x86_fp80 %81, %82
  store x86_fp80 %83, x86_fp80* %8, align 16
  %84 = load x86_fp80, x86_fp80* @pio2_hi, align 16
  %85 = load x86_fp80, x86_fp80* %3, align 16
  %86 = load double, double* @pio2_lo, align 8
  %87 = fpext double %86 to x86_fp80
  %88 = load x86_fp80, x86_fp80* %3, align 16
  %89 = load x86_fp80, x86_fp80* %8, align 16
  %90 = fmul x86_fp80 %88, %89
  %91 = fsub x86_fp80 %87, %90
  %92 = fsub x86_fp80 %85, %91
  %93 = fsub x86_fp80 %84, %92
  store x86_fp80 %93, x86_fp80* %2, align 16
  br label %161

94:                                               ; preds = %59
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %123

97:                                               ; preds = %94
  %98 = load x86_fp80, x86_fp80* @one, align 16
  %99 = load x86_fp80, x86_fp80* %3, align 16
  %100 = fadd x86_fp80 %98, %99
  %101 = fmul x86_fp80 %100, 0xK3FFE8000000000000000
  store x86_fp80 %101, x86_fp80* %5, align 16
  %102 = load x86_fp80, x86_fp80* %5, align 16
  %103 = call x86_fp80 @P(x86_fp80 %102)
  store x86_fp80 %103, x86_fp80* %6, align 16
  %104 = load x86_fp80, x86_fp80* %5, align 16
  %105 = call x86_fp80 @Q(x86_fp80 %104)
  store x86_fp80 %105, x86_fp80* %7, align 16
  %106 = load x86_fp80, x86_fp80* %5, align 16
  %107 = call x86_fp80 @sqrtl(x86_fp80 %106) #3
  store x86_fp80 %107, x86_fp80* %10, align 16
  %108 = load x86_fp80, x86_fp80* %6, align 16
  %109 = load x86_fp80, x86_fp80* %7, align 16
  %110 = fdiv x86_fp80 %108, %109
  store x86_fp80 %110, x86_fp80* %8, align 16
  %111 = load x86_fp80, x86_fp80* %8, align 16
  %112 = load x86_fp80, x86_fp80* %10, align 16
  %113 = fmul x86_fp80 %111, %112
  %114 = load double, double* @pio2_lo, align 8
  %115 = fpext double %114 to x86_fp80
  %116 = fsub x86_fp80 %113, %115
  store x86_fp80 %116, x86_fp80* %9, align 16
  %117 = load x86_fp80, x86_fp80* @pi, align 16
  %118 = load x86_fp80, x86_fp80* %10, align 16
  %119 = load x86_fp80, x86_fp80* %9, align 16
  %120 = fadd x86_fp80 %118, %119
  %121 = fmul x86_fp80 0xK40008000000000000000, %120
  %122 = fsub x86_fp80 %117, %121
  store x86_fp80 %122, x86_fp80* %2, align 16
  br label %161

123:                                              ; preds = %94
  %124 = load x86_fp80, x86_fp80* @one, align 16
  %125 = load x86_fp80, x86_fp80* %3, align 16
  %126 = fsub x86_fp80 %124, %125
  %127 = fmul x86_fp80 %126, 0xK3FFE8000000000000000
  store x86_fp80 %127, x86_fp80* %5, align 16
  %128 = load x86_fp80, x86_fp80* %5, align 16
  %129 = call x86_fp80 @sqrtl(x86_fp80 %128) #3
  store x86_fp80 %129, x86_fp80* %10, align 16
  %130 = load x86_fp80, x86_fp80* %10, align 16
  %131 = bitcast %union.IEEEl2bits* %4 to x86_fp80*
  store x86_fp80 %130, x86_fp80* %131, align 16
  %132 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_4__*
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  store i32 0, i32* %133, align 4
  %134 = bitcast %union.IEEEl2bits* %4 to x86_fp80*
  %135 = load x86_fp80, x86_fp80* %134, align 16
  store x86_fp80 %135, x86_fp80* %12, align 16
  %136 = load x86_fp80, x86_fp80* %5, align 16
  %137 = load x86_fp80, x86_fp80* %12, align 16
  %138 = load x86_fp80, x86_fp80* %12, align 16
  %139 = fmul x86_fp80 %137, %138
  %140 = fsub x86_fp80 %136, %139
  %141 = load x86_fp80, x86_fp80* %10, align 16
  %142 = load x86_fp80, x86_fp80* %12, align 16
  %143 = fadd x86_fp80 %141, %142
  %144 = fdiv x86_fp80 %140, %143
  store x86_fp80 %144, x86_fp80* %11, align 16
  %145 = load x86_fp80, x86_fp80* %5, align 16
  %146 = call x86_fp80 @P(x86_fp80 %145)
  store x86_fp80 %146, x86_fp80* %6, align 16
  %147 = load x86_fp80, x86_fp80* %5, align 16
  %148 = call x86_fp80 @Q(x86_fp80 %147)
  store x86_fp80 %148, x86_fp80* %7, align 16
  %149 = load x86_fp80, x86_fp80* %6, align 16
  %150 = load x86_fp80, x86_fp80* %7, align 16
  %151 = fdiv x86_fp80 %149, %150
  store x86_fp80 %151, x86_fp80* %8, align 16
  %152 = load x86_fp80, x86_fp80* %8, align 16
  %153 = load x86_fp80, x86_fp80* %10, align 16
  %154 = fmul x86_fp80 %152, %153
  %155 = load x86_fp80, x86_fp80* %11, align 16
  %156 = fadd x86_fp80 %154, %155
  store x86_fp80 %156, x86_fp80* %9, align 16
  %157 = load x86_fp80, x86_fp80* %12, align 16
  %158 = load x86_fp80, x86_fp80* %9, align 16
  %159 = fadd x86_fp80 %157, %158
  %160 = fmul x86_fp80 0xK40008000000000000000, %159
  store x86_fp80 %160, x86_fp80* %2, align 16
  br label %161

161:                                              ; preds = %123, %97, %73, %68, %51, %45, %44
  %162 = load x86_fp80, x86_fp80* %2, align 16
  ret x86_fp80 %162
}

declare dso_local x86_fp80 @P(x86_fp80) #1

declare dso_local x86_fp80 @Q(x86_fp80) #1

; Function Attrs: nounwind
declare dso_local x86_fp80 @sqrtl(x86_fp80) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
