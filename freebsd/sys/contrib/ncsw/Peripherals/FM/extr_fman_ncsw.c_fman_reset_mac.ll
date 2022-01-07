; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_reset_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_reset_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_fpm_regs = type { i32 }

@FPM_RSTC_10G0_RESET = common dso_local global i32 0, align 4
@FPM_RSTC_10G1_RESET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FPM_RSTC_1G0_RESET = common dso_local global i32 0, align 4
@FPM_RSTC_1G1_RESET = common dso_local global i32 0, align 4
@FPM_RSTC_1G2_RESET = common dso_local global i32 0, align 4
@FPM_RSTC_1G3_RESET = common dso_local global i32 0, align 4
@FPM_RSTC_1G4_RESET = common dso_local global i32 0, align 4
@FPM_RSTC_1G5_RESET = common dso_local global i32 0, align 4
@FPM_RSTC_1G6_RESET = common dso_local global i32 0, align 4
@FPM_RSTC_1G7_RESET = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_reset_mac(%struct.fman_fpm_regs* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fman_fpm_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fman_fpm_regs* %0, %struct.fman_fpm_regs** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 100, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %18 [
    i32 0, label %14
    i32 1, label %16
  ]

14:                                               ; preds = %12
  %15 = load i32, i32* @FPM_RSTC_10G0_RESET, align 4
  store i32 %15, i32* %8, align 4
  br label %21

16:                                               ; preds = %12
  %17 = load i32, i32* @FPM_RSTC_10G1_RESET, align 4
  store i32 %17, i32* %8, align 4
  br label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %71

21:                                               ; preds = %16, %14
  br label %44

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %40 [
    i32 0, label %24
    i32 1, label %26
    i32 2, label %28
    i32 3, label %30
    i32 4, label %32
    i32 5, label %34
    i32 6, label %36
    i32 7, label %38
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @FPM_RSTC_1G0_RESET, align 4
  store i32 %25, i32* %8, align 4
  br label %43

26:                                               ; preds = %22
  %27 = load i32, i32* @FPM_RSTC_1G1_RESET, align 4
  store i32 %27, i32* %8, align 4
  br label %43

28:                                               ; preds = %22
  %29 = load i32, i32* @FPM_RSTC_1G2_RESET, align 4
  store i32 %29, i32* %8, align 4
  br label %43

30:                                               ; preds = %22
  %31 = load i32, i32* @FPM_RSTC_1G3_RESET, align 4
  store i32 %31, i32* %8, align 4
  br label %43

32:                                               ; preds = %22
  %33 = load i32, i32* @FPM_RSTC_1G4_RESET, align 4
  store i32 %33, i32* %8, align 4
  br label %43

34:                                               ; preds = %22
  %35 = load i32, i32* @FPM_RSTC_1G5_RESET, align 4
  store i32 %35, i32* %8, align 4
  br label %43

36:                                               ; preds = %22
  %37 = load i32, i32* @FPM_RSTC_1G6_RESET, align 4
  store i32 %37, i32* %8, align 4
  br label %43

38:                                               ; preds = %22
  %39 = load i32, i32* @FPM_RSTC_1G7_RESET, align 4
  store i32 %39, i32* %8, align 4
  br label %43

40:                                               ; preds = %22
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %71

43:                                               ; preds = %38, %36, %34, %32, %30, %28, %26, %24
  br label %44

44:                                               ; preds = %43, %21
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %5, align 8
  %47 = getelementptr inbounds %struct.fman_fpm_regs, %struct.fman_fpm_regs* %46, i32 0, i32 0
  %48 = call i32 @iowrite32be(i32 %45, i32* %47)
  br label %49

49:                                               ; preds = %62, %44
  %50 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %5, align 8
  %51 = getelementptr inbounds %struct.fman_fpm_regs, %struct.fman_fpm_regs* %50, i32 0, i32 0
  %52 = call i32 @ioread32be(i32* %51)
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %56, %49
  %61 = phi i1 [ false, %49 ], [ %59, %56 ]
  br i1 %61, label %62, label %64

62:                                               ; preds = %60
  %63 = call i32 @DELAY(i32 10)
  br label %49

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %71

70:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %67, %40, %18
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
