; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_k_sincosl.h___kernel_sincosl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_k_sincosl.h___kernel_sincosl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S2 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S3 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S4 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S5 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S6 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S7 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S8 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@S1 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C1 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C2 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C3 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C4 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C5 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C6 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@C7 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (x86_fp80, x86_fp80, i32, x86_fp80*, x86_fp80*)* @__kernel_sincosl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__kernel_sincosl(x86_fp80 %0, x86_fp80 %1, i32 %2, x86_fp80* %3, x86_fp80* %4) #0 {
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca i32, align 4
  %9 = alloca x86_fp80*, align 8
  %10 = alloca x86_fp80*, align 8
  %11 = alloca x86_fp80, align 16
  %12 = alloca x86_fp80, align 16
  %13 = alloca x86_fp80, align 16
  %14 = alloca x86_fp80, align 16
  %15 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %6, align 16
  store x86_fp80 %1, x86_fp80* %7, align 16
  store i32 %2, i32* %8, align 4
  store x86_fp80* %3, x86_fp80** %9, align 8
  store x86_fp80* %4, x86_fp80** %10, align 8
  %16 = load x86_fp80, x86_fp80* %6, align 16
  %17 = load x86_fp80, x86_fp80* %6, align 16
  %18 = fmul x86_fp80 %16, %17
  store x86_fp80 %18, x86_fp80* %15, align 16
  %19 = load x86_fp80, x86_fp80* %15, align 16
  %20 = load x86_fp80, x86_fp80* %6, align 16
  %21 = fmul x86_fp80 %19, %20
  store x86_fp80 %21, x86_fp80* %13, align 16
  %22 = load x86_fp80, x86_fp80* @S2, align 16
  %23 = load x86_fp80, x86_fp80* %15, align 16
  %24 = load x86_fp80, x86_fp80* @S3, align 16
  %25 = load x86_fp80, x86_fp80* %15, align 16
  %26 = load x86_fp80, x86_fp80* @S4, align 16
  %27 = load x86_fp80, x86_fp80* %15, align 16
  %28 = load x86_fp80, x86_fp80* @S5, align 16
  %29 = load x86_fp80, x86_fp80* %15, align 16
  %30 = load x86_fp80, x86_fp80* @S6, align 16
  %31 = load x86_fp80, x86_fp80* %15, align 16
  %32 = load x86_fp80, x86_fp80* @S7, align 16
  %33 = load x86_fp80, x86_fp80* %15, align 16
  %34 = load x86_fp80, x86_fp80* @S8, align 16
  %35 = fmul x86_fp80 %33, %34
  %36 = fadd x86_fp80 %32, %35
  %37 = fmul x86_fp80 %31, %36
  %38 = fadd x86_fp80 %30, %37
  %39 = fmul x86_fp80 %29, %38
  %40 = fadd x86_fp80 %28, %39
  %41 = fmul x86_fp80 %27, %40
  %42 = fadd x86_fp80 %26, %41
  %43 = fmul x86_fp80 %25, %42
  %44 = fadd x86_fp80 %24, %43
  %45 = fmul x86_fp80 %23, %44
  %46 = fadd x86_fp80 %22, %45
  store x86_fp80 %46, x86_fp80* %12, align 16
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %5
  %50 = load x86_fp80, x86_fp80* %6, align 16
  %51 = load x86_fp80, x86_fp80* %13, align 16
  %52 = load x86_fp80, x86_fp80* @S1, align 16
  %53 = load x86_fp80, x86_fp80* %15, align 16
  %54 = load x86_fp80, x86_fp80* %12, align 16
  %55 = fmul x86_fp80 %53, %54
  %56 = fadd x86_fp80 %52, %55
  %57 = fmul x86_fp80 %51, %56
  %58 = fadd x86_fp80 %50, %57
  %59 = load x86_fp80*, x86_fp80** %9, align 8
  store x86_fp80 %58, x86_fp80* %59, align 16
  br label %78

60:                                               ; preds = %5
  %61 = load x86_fp80, x86_fp80* %6, align 16
  %62 = load x86_fp80, x86_fp80* %15, align 16
  %63 = load x86_fp80, x86_fp80* %7, align 16
  %64 = fdiv x86_fp80 %63, 0xK40008000000000000000
  %65 = load x86_fp80, x86_fp80* %13, align 16
  %66 = load x86_fp80, x86_fp80* %12, align 16
  %67 = fmul x86_fp80 %65, %66
  %68 = fsub x86_fp80 %64, %67
  %69 = fmul x86_fp80 %62, %68
  %70 = load x86_fp80, x86_fp80* %7, align 16
  %71 = fsub x86_fp80 %69, %70
  %72 = load x86_fp80, x86_fp80* %13, align 16
  %73 = load x86_fp80, x86_fp80* @S1, align 16
  %74 = fmul x86_fp80 %72, %73
  %75 = fsub x86_fp80 %71, %74
  %76 = fsub x86_fp80 %61, %75
  %77 = load x86_fp80*, x86_fp80** %9, align 8
  store x86_fp80 %76, x86_fp80* %77, align 16
  br label %78

78:                                               ; preds = %60, %49
  %79 = load x86_fp80, x86_fp80* %15, align 16
  %80 = fdiv x86_fp80 %79, 0xK40008000000000000000
  store x86_fp80 %80, x86_fp80* %11, align 16
  %81 = load x86_fp80, x86_fp80* %11, align 16
  %82 = fsub x86_fp80 0xK3FFF8000000000000000, %81
  store x86_fp80 %82, x86_fp80* %14, align 16
  %83 = load x86_fp80, x86_fp80* %15, align 16
  %84 = load x86_fp80, x86_fp80* @C1, align 16
  %85 = load x86_fp80, x86_fp80* %15, align 16
  %86 = load x86_fp80, x86_fp80* @C2, align 16
  %87 = load x86_fp80, x86_fp80* %15, align 16
  %88 = load x86_fp80, x86_fp80* @C3, align 16
  %89 = load x86_fp80, x86_fp80* %15, align 16
  %90 = load x86_fp80, x86_fp80* @C4, align 16
  %91 = load x86_fp80, x86_fp80* %15, align 16
  %92 = load x86_fp80, x86_fp80* @C5, align 16
  %93 = load x86_fp80, x86_fp80* %15, align 16
  %94 = load x86_fp80, x86_fp80* @C6, align 16
  %95 = load x86_fp80, x86_fp80* %15, align 16
  %96 = load x86_fp80, x86_fp80* @C7, align 16
  %97 = fmul x86_fp80 %95, %96
  %98 = fadd x86_fp80 %94, %97
  %99 = fmul x86_fp80 %93, %98
  %100 = fadd x86_fp80 %92, %99
  %101 = fmul x86_fp80 %91, %100
  %102 = fadd x86_fp80 %90, %101
  %103 = fmul x86_fp80 %89, %102
  %104 = fadd x86_fp80 %88, %103
  %105 = fmul x86_fp80 %87, %104
  %106 = fadd x86_fp80 %86, %105
  %107 = fmul x86_fp80 %85, %106
  %108 = fadd x86_fp80 %84, %107
  %109 = fmul x86_fp80 %83, %108
  store x86_fp80 %109, x86_fp80* %12, align 16
  %110 = load x86_fp80, x86_fp80* %14, align 16
  %111 = load x86_fp80, x86_fp80* %14, align 16
  %112 = fsub x86_fp80 0xK3FFF8000000000000000, %111
  %113 = load x86_fp80, x86_fp80* %11, align 16
  %114 = fsub x86_fp80 %112, %113
  %115 = load x86_fp80, x86_fp80* %15, align 16
  %116 = load x86_fp80, x86_fp80* %12, align 16
  %117 = fmul x86_fp80 %115, %116
  %118 = load x86_fp80, x86_fp80* %6, align 16
  %119 = load x86_fp80, x86_fp80* %7, align 16
  %120 = fmul x86_fp80 %118, %119
  %121 = fsub x86_fp80 %117, %120
  %122 = fadd x86_fp80 %114, %121
  %123 = fadd x86_fp80 %110, %122
  %124 = load x86_fp80*, x86_fp80** %10, align 8
  store x86_fp80 %123, x86_fp80* %124, align 16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
