; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_copysignf.c_copysignf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_copysignf.c_copysignf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local float @copysignf(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load float, float* %3, align 4
  %9 = call i32 @GET_FLOAT_WORD(i32 %7, float %8)
  %10 = load i32, i32* %6, align 4
  %11 = load float, float* %4, align 4
  %12 = call i32 @GET_FLOAT_WORD(i32 %10, float %11)
  %13 = load float, float* %3, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 2147483647
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, -2147483648
  %18 = or i32 %15, %17
  %19 = call i32 @SET_FLOAT_WORD(float %13, i32 %18)
  %20 = load float, float* %3, align 4
  ret float %20
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local i32 @SET_FLOAT_WORD(float, i32) #1

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
