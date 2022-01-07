; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_show_perf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_show_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@end = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@start = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [42 x i8] c"%lld bytes in %.2f seconds = %.2f Gb/sec\0A\00", align 1
@bytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @show_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_perf() #0 {
  %1 = alloca float, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @end, i32 0, i32 0), align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @start, i32 0, i32 0), align 4
  %4 = sub nsw i32 %2, %3
  %5 = mul nsw i32 %4, 1000000
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @end, i32 0, i32 1), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @start, i32 0, i32 1), align 4
  %8 = sub nsw i32 %6, %7
  %9 = add nsw i32 %5, %8
  %10 = sitofp i32 %9 to float
  store float %10, float* %1, align 4
  %11 = load i32, i32* @bytes, align 4
  %12 = sext i32 %11 to i64
  %13 = load float, float* %1, align 4
  %14 = fpext float %13 to double
  %15 = fdiv double %14, 1.000000e+06
  %16 = fptrunc double %15 to float
  %17 = load i32, i32* @bytes, align 4
  %18 = mul nsw i32 %17, 8
  %19 = sitofp i32 %18 to double
  %20 = load float, float* %1, align 4
  %21 = fpext float %20 to double
  %22 = fmul double 1.000000e+03, %21
  %23 = fdiv double %19, %22
  %24 = fptosi double %23 to i32
  %25 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %12, float %16, i32 %24)
  ret void
}

declare dso_local i32 @printf(i8*, i64, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
