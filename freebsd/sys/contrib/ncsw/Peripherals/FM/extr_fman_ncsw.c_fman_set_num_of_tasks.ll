; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_set_num_of_tasks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_set_num_of_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_bmi_regs = type { i32* }

@BMI_NUM_OF_TASKS_MASK = common dso_local global i32 0, align 4
@BMI_NUM_OF_EXTRA_TASKS_MASK = common dso_local global i32 0, align 4
@BMI_NUM_OF_TASKS_SHIFT = common dso_local global i32 0, align 4
@BMI_EXTRA_NUM_OF_TASKS_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_set_num_of_tasks(%struct.fman_bmi_regs* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fman_bmi_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fman_bmi_regs* %0, %struct.fman_bmi_regs** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 63
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %4
  br label %49

16:                                               ; preds = %12
  %17 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %5, align 8
  %18 = getelementptr inbounds %struct.fman_bmi_regs, %struct.fman_bmi_regs* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = call i32 @ioread32be(i32* %23)
  %25 = load i32, i32* @BMI_NUM_OF_TASKS_MASK, align 4
  %26 = load i32, i32* @BMI_NUM_OF_EXTRA_TASKS_MASK, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %24, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* @BMI_NUM_OF_TASKS_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @BMI_EXTRA_NUM_OF_TASKS_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = or i32 %33, %36
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %5, align 8
  %42 = getelementptr inbounds %struct.fman_bmi_regs, %struct.fman_bmi_regs* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = call i32 @iowrite32be(i32 %40, i32* %47)
  br label %49

49:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
