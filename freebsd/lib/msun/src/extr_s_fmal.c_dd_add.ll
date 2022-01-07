; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fmal.c_dd_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fmal.c_dd_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dd = type { x86_fp80, x86_fp80 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dd*, x86_fp80, x86_fp80)* @dd_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dd_add(%struct.dd* noalias sret %0, x86_fp80 %1, x86_fp80 %2) #0 {
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  store x86_fp80 %1, x86_fp80* %4, align 16
  store x86_fp80 %2, x86_fp80* %5, align 16
  %7 = load x86_fp80, x86_fp80* %4, align 16
  %8 = load x86_fp80, x86_fp80* %5, align 16
  %9 = fadd x86_fp80 %7, %8
  %10 = getelementptr inbounds %struct.dd, %struct.dd* %0, i32 0, i32 0
  store x86_fp80 %9, x86_fp80* %10, align 16
  %11 = getelementptr inbounds %struct.dd, %struct.dd* %0, i32 0, i32 0
  %12 = load x86_fp80, x86_fp80* %11, align 16
  %13 = load x86_fp80, x86_fp80* %4, align 16
  %14 = fsub x86_fp80 %12, %13
  store x86_fp80 %14, x86_fp80* %6, align 16
  %15 = load x86_fp80, x86_fp80* %4, align 16
  %16 = getelementptr inbounds %struct.dd, %struct.dd* %0, i32 0, i32 0
  %17 = load x86_fp80, x86_fp80* %16, align 16
  %18 = load x86_fp80, x86_fp80* %6, align 16
  %19 = fsub x86_fp80 %17, %18
  %20 = fsub x86_fp80 %15, %19
  %21 = load x86_fp80, x86_fp80* %5, align 16
  %22 = load x86_fp80, x86_fp80* %6, align 16
  %23 = fsub x86_fp80 %21, %22
  %24 = fadd x86_fp80 %20, %23
  %25 = getelementptr inbounds %struct.dd, %struct.dd* %0, i32 0, i32 1
  store x86_fp80 %24, x86_fp80* %25, align 16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
