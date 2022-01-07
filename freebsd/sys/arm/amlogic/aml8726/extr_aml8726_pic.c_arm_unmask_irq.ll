; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_pic.c_arm_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_pic.c_arm_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AML_PIC_NIRQS = common dso_local global i64 0, align 8
@aml8726_pic_sc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arm_unmask_irq(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @AML_PIC_NIRQS, align 8
  %6 = icmp uge i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %28

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  %10 = call i32 @arm_irq_memory_barrier(i64 %9)
  %11 = load i32, i32* @aml8726_pic_sc, align 4
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @AML_PIC_MASK_REG(i64 %12)
  %14 = call i32 @CSR_READ_4(i32 %11, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i64, i64* %2, align 8
  %16 = call i32 @AML_PIC_BIT(i64 %15)
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @aml8726_pic_sc, align 4
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @AML_PIC_MASK_REG(i64 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @CSR_WRITE_4(i32 %19, i32 %21, i32 %22)
  %24 = load i32, i32* @aml8726_pic_sc, align 4
  %25 = load i64, i64* %2, align 8
  %26 = call i32 @AML_PIC_MASK_REG(i64 %25)
  %27 = call i32 @CSR_BARRIER(i32 %24, i32 %26)
  br label %28

28:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @arm_irq_memory_barrier(i64) #1

declare dso_local i32 @CSR_READ_4(i32, i32) #1

declare dso_local i32 @AML_PIC_MASK_REG(i64) #1

declare dso_local i32 @AML_PIC_BIT(i64) #1

declare dso_local i32 @CSR_WRITE_4(i32, i32, i32) #1

declare dso_local i32 @CSR_BARRIER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
