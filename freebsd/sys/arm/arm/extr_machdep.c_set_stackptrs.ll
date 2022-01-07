; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_machdep.c_set_stackptrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_machdep.c_set_stackptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@PSR_IRQ32_MODE = common dso_local global i32 0, align 4
@irqstack = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@IRQ_STACK_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PSR_ABT32_MODE = common dso_local global i32 0, align 4
@abtstack = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ABT_STACK_SIZE = common dso_local global i32 0, align 4
@PSR_UND32_MODE = common dso_local global i32 0, align 4
@undstack = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@UND_STACK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_stackptrs(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @PSR_IRQ32_MODE, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @irqstack, i32 0, i32 0), align 8
  %5 = load i32, i32* @IRQ_STACK_SIZE, align 4
  %6 = load i32, i32* @PAGE_SIZE, align 4
  %7 = mul nsw i32 %5, %6
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, 1
  %10 = mul nsw i32 %7, %9
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %4, %11
  %13 = call i32 @set_stackptr(i32 %3, i64 %12)
  %14 = load i32, i32* @PSR_ABT32_MODE, align 4
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @abtstack, i32 0, i32 0), align 8
  %16 = load i32, i32* @ABT_STACK_SIZE, align 4
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  %21 = mul nsw i32 %18, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %15, %22
  %24 = call i32 @set_stackptr(i32 %14, i64 %23)
  %25 = load i32, i32* @PSR_UND32_MODE, align 4
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @undstack, i32 0, i32 0), align 8
  %27 = load i32, i32* @UND_STACK_SIZE, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  %32 = mul nsw i32 %29, %31
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %26, %33
  %35 = call i32 @set_stackptr(i32 %25, i64 %34)
  ret void
}

declare dso_local i32 @set_stackptr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
