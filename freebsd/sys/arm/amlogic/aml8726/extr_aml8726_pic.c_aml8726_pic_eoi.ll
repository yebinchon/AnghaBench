; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_pic.c_aml8726_pic_eoi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_pic.c_aml8726_pic_eoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AML_PIC_NIRQS = common dso_local global i64 0, align 8
@aml8726_pic_sc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @aml8726_pic_eoi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aml8726_pic_eoi(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = ptrtoint i8* %4 to i64
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @AML_PIC_NIRQS, align 8
  %8 = icmp uge i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %23

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @arm_irq_memory_barrier(i64 %11)
  %13 = load i32, i32* @aml8726_pic_sc, align 4
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @AML_PIC_STAT_CLR_REG(i64 %14)
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @AML_PIC_BIT(i64 %16)
  %18 = call i32 @CSR_WRITE_4(i32 %13, i32 %15, i32 %17)
  %19 = load i32, i32* @aml8726_pic_sc, align 4
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @AML_PIC_STAT_CLR_REG(i64 %20)
  %22 = call i32 @CSR_BARRIER(i32 %19, i32 %21)
  br label %23

23:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @arm_irq_memory_barrier(i64) #1

declare dso_local i32 @CSR_WRITE_4(i32, i32, i32) #1

declare dso_local i32 @AML_PIC_STAT_CLR_REG(i64) #1

declare dso_local i32 @AML_PIC_BIT(i64) #1

declare dso_local i32 @CSR_BARRIER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
