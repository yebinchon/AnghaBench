; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FpmErrEvent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FpmErrEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (i32, i32)*, %struct.fman_fpm_regs* }
%struct.fman_fpm_regs = type { i32 }

@FPM_EV_MASK_DOUBLE_ECC = common dso_local global i32 0, align 4
@FPM_EV_MASK_DOUBLE_ECC_EN = common dso_local global i32 0, align 4
@e_FM_EX_FPM_DOUBLE_ECC = common dso_local global i32 0, align 4
@FPM_EV_MASK_STALL = common dso_local global i32 0, align 4
@FPM_EV_MASK_STALL_EN = common dso_local global i32 0, align 4
@e_FM_EX_FPM_STALL_ON_TASKS = common dso_local global i32 0, align 4
@FPM_EV_MASK_SINGLE_ECC = common dso_local global i32 0, align 4
@FPM_EV_MASK_SINGLE_ECC_EN = common dso_local global i32 0, align 4
@e_FM_EX_FPM_SINGLE_ECC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @FpmErrEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FpmErrEvent(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fman_fpm_regs*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %7 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %6, align 8
  store %struct.fman_fpm_regs* %7, %struct.fman_fpm_regs** %4, align 8
  %8 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %4, align 8
  %9 = call i32 @fman_get_fpm_err_event(%struct.fman_fpm_regs* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @FPM_EV_MASK_DOUBLE_ECC, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @FPM_EV_MASK_DOUBLE_ECC_EN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32 (i32, i32)*, i32 (i32, i32)** %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @e_FM_EX_FPM_DOUBLE_ECC, align 4
  %27 = call i32 %22(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %19, %14, %1
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @FPM_EV_MASK_STALL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @FPM_EV_MASK_STALL_EN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32 (i32, i32)*, i32 (i32, i32)** %40, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @e_FM_EX_FPM_STALL_ON_TASKS, align 4
  %46 = call i32 %41(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %38, %33, %28
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @FPM_EV_MASK_SINGLE_ECC, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @FPM_EV_MASK_SINGLE_ECC_EN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32 (i32, i32)*, i32 (i32, i32)** %59, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @e_FM_EX_FPM_SINGLE_ECC, align 4
  %65 = call i32 %60(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %57, %52, %47
  ret void
}

declare dso_local i32 @fman_get_fpm_err_event(%struct.fman_fpm_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
