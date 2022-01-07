; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_s_logl.c_logl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_s_logl.c_logl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ld = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @logl(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = alloca %struct.ld, align 4
  store x86_fp80 %0, x86_fp80* %3, align 16
  %5 = call i32 (...) @ENTERI()
  %6 = call i32 @DOPRINT_START(x86_fp80* %3)
  %7 = load x86_fp80, x86_fp80* %3, align 16
  %8 = call i32 @k_logl(x86_fp80 %7, %struct.ld* %4)
  %9 = call i32 @RETURNSPI(%struct.ld* %4)
  %10 = load x86_fp80, x86_fp80* %2, align 16
  ret x86_fp80 %10
}

declare dso_local i32 @ENTERI(...) #1

declare dso_local i32 @DOPRINT_START(x86_fp80*) #1

declare dso_local i32 @k_logl(x86_fp80, %struct.ld*) #1

declare dso_local i32 @RETURNSPI(%struct.ld*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
