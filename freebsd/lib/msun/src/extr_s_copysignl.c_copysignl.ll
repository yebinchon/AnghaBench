; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_copysignl.c_copysignl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_copysignl.c_copysignl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IEEEl2bits = type { x86_fp80 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local x86_fp80 @copysignl(x86_fp80 %0, x86_fp80 %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca %union.IEEEl2bits, align 16
  %6 = alloca %union.IEEEl2bits, align 16
  store x86_fp80 %0, x86_fp80* %3, align 16
  store x86_fp80 %1, x86_fp80* %4, align 16
  %7 = load x86_fp80, x86_fp80* %3, align 16
  %8 = bitcast %union.IEEEl2bits* %5 to x86_fp80*
  store x86_fp80 %7, x86_fp80* %8, align 16
  %9 = load x86_fp80, x86_fp80* %4, align 16
  %10 = bitcast %union.IEEEl2bits* %6 to x86_fp80*
  store x86_fp80 %9, x86_fp80* %10, align 16
  %11 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 16
  %14 = bitcast %union.IEEEl2bits* %5 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 16
  %16 = bitcast %union.IEEEl2bits* %5 to x86_fp80*
  %17 = load x86_fp80, x86_fp80* %16, align 16
  ret x86_fp80 %17
}

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
