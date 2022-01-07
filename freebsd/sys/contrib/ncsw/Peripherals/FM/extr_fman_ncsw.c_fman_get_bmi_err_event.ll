; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_get_bmi_err_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_get_bmi_err_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_bmi_regs = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_get_bmi_err_event(%struct.fman_bmi_regs* %0) #0 {
  %2 = alloca %struct.fman_bmi_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fman_bmi_regs* %0, %struct.fman_bmi_regs** %2, align 8
  %6 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %2, align 8
  %7 = getelementptr inbounds %struct.fman_bmi_regs, %struct.fman_bmi_regs* %6, i32 0, i32 0
  %8 = call i32 @ioread32be(i32* %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %2, align 8
  %10 = getelementptr inbounds %struct.fman_bmi_regs, %struct.fman_bmi_regs* %9, i32 0, i32 2
  %11 = call i32 @ioread32be(i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %2, align 8
  %16 = getelementptr inbounds %struct.fman_bmi_regs, %struct.fman_bmi_regs* %15, i32 0, i32 1
  %17 = call i32 @ioread32be(i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %3, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %2, align 8
  %28 = getelementptr inbounds %struct.fman_bmi_regs, %struct.fman_bmi_regs* %27, i32 0, i32 1
  %29 = call i32 @iowrite32be(i32 %26, i32* %28)
  br label %30

30:                                               ; preds = %22, %1
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.fman_bmi_regs*, %struct.fman_bmi_regs** %2, align 8
  %33 = getelementptr inbounds %struct.fman_bmi_regs, %struct.fman_bmi_regs* %32, i32 0, i32 0
  %34 = call i32 @iowrite32be(i32 %31, i32* %33)
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
