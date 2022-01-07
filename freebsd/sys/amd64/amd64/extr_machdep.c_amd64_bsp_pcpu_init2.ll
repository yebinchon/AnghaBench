; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_amd64_bsp_pcpu_init2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_amd64_bsp_pcpu_init2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pti_rsp0 = common dso_local global i32 0, align 4
@pti_stack = common dso_local global i32 0, align 4
@PC_PTI_STACK_SZ = common dso_local global i32 0, align 4
@curpcb = common dso_local global i32 0, align 4
@thread0 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amd64_bsp_pcpu_init2(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @PCPU_SET(i32 %3, i32 %4)
  %6 = load i32, i32* @pti_rsp0, align 4
  %7 = load i32, i32* @pti_stack, align 4
  %8 = call i64 @PCPU_PTR(i32 %7)
  %9 = trunc i64 %8 to i32
  %10 = sext i32 %9 to i64
  %11 = load i32, i32* @PC_PTI_STACK_SZ, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = add i64 %10, %13
  %15 = and i64 %14, -16
  %16 = trunc i64 %15 to i32
  %17 = call i32 @PCPU_SET(i32 %6, i32 %16)
  %18 = load i32, i32* @curpcb, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread0, i32 0, i32 0), align 4
  %20 = call i32 @PCPU_SET(i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @PCPU_SET(i32, i32) #1

declare dso_local i64 @PCPU_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
