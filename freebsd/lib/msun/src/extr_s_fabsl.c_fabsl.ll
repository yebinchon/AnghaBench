; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fabsl.c_fabsl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fabsl.c_fabsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IEEEl2bits = type { x86_fp80 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local x86_fp80 @fabsl(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca %union.IEEEl2bits, align 16
  store x86_fp80 %0, x86_fp80* %2, align 16
  %4 = load x86_fp80, x86_fp80* %2, align 16
  %5 = bitcast %union.IEEEl2bits* %3 to x86_fp80*
  store x86_fp80 %4, x86_fp80* %5, align 16
  %6 = bitcast %union.IEEEl2bits* %3 to %struct.TYPE_2__*
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i64 0, i64* %7, align 16
  %8 = bitcast %union.IEEEl2bits* %3 to x86_fp80*
  %9 = load x86_fp80, x86_fp80* %8, align 16
  ret x86_fp80 %9
}

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
