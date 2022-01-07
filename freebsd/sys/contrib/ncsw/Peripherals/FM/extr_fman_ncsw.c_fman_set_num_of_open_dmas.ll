; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_set_num_of_open_dmas.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_set_num_of_open_dmas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_bmi_regs = type { i32, i32* }

@BMI_NUM_OF_DMAS_MASK = common dso_local global i32 0, align 4
@BMI_NUM_OF_EXTRA_DMAS_MASK = common dso_local global i32 0, align 4
@BMI_NUM_OF_DMAS_SHIFT = common dso_local global i32 0, align 4
@BMI_EXTRA_NUM_OF_DMAS_SHIFT = common dso_local global i32 0, align 4
@BMI_CFG2_DMAS_MASK = common dso_local global i32 0, align 4
@BMI_CFG2_DMAS_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_set_num_of_open_dmas(%struct.fman_bmi_regs* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fman_bmi_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fman_bmi_regs* %0, %struct.fman_bmi_regs** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 63
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %5
  br label %70

18:                                               ; preds = %14
  %19 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %6, align 8
  %20 = getelementptr inbounds %struct.fman_bmi_regs, %struct.fman_bmi_regs* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = call i32 @ioread32be(i32* %25)
  %27 = load i32, i32* @BMI_NUM_OF_DMAS_MASK, align 4
  %28 = load i32, i32* @BMI_NUM_OF_EXTRA_DMAS_MASK, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %26, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* @BMI_NUM_OF_DMAS_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @BMI_EXTRA_NUM_OF_DMAS_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %35, %38
  %40 = load i32, i32* %11, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %6, align 8
  %44 = getelementptr inbounds %struct.fman_bmi_regs, %struct.fman_bmi_regs* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = call i32 @iowrite32be(i32 %42, i32* %49)
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %18
  %54 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %6, align 8
  %55 = getelementptr inbounds %struct.fman_bmi_regs, %struct.fman_bmi_regs* %54, i32 0, i32 0
  %56 = call i32 @ioread32be(i32* %55)
  %57 = load i32, i32* @BMI_CFG2_DMAS_MASK, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %60, 1
  %62 = load i32, i32* @BMI_CFG2_DMAS_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = load i32, i32* %11, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %6, align 8
  %68 = getelementptr inbounds %struct.fman_bmi_regs, %struct.fman_bmi_regs* %67, i32 0, i32 0
  %69 = call i32 @iowrite32be(i32 %66, i32* %68)
  br label %70

70:                                               ; preds = %17, %53, %18
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
