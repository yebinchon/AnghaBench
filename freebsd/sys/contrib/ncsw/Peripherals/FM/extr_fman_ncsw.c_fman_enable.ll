; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_rg = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fman_cfg = type { i32, i64 }

@QMI_CFG_EN_COUNTERS = common dso_local global i32 0, align 4
@BMI_INIT_START = common dso_local global i32 0, align 4
@QMI_CFG_ENQ_EN = common dso_local global i32 0, align 4
@QMI_CFG_DEQ_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_enable(%struct.fman_rg* %0, %struct.fman_cfg* %1) #0 {
  %3 = alloca %struct.fman_rg*, align 8
  %4 = alloca %struct.fman_cfg*, align 8
  %5 = alloca i32, align 4
  store %struct.fman_rg* %0, %struct.fman_rg** %3, align 8
  store %struct.fman_cfg* %1, %struct.fman_cfg** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @QMI_CFG_EN_COUNTERS, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %8 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %13 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = shl i32 %14, 8
  %16 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %17 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %15, %18
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %11, %2
  %23 = load i32, i32* @BMI_INIT_START, align 4
  %24 = load %struct.fman_rg*, %struct.fman_rg** %3, align 8
  %25 = getelementptr inbounds %struct.fman_rg, %struct.fman_rg* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @iowrite32be(i32 %23, i32* %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @QMI_CFG_ENQ_EN, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @QMI_CFG_DEQ_EN, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.fman_rg*, %struct.fman_rg** %3, align 8
  %35 = getelementptr inbounds %struct.fman_rg, %struct.fman_rg* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @iowrite32be(i32 %33, i32* %37)
  ret i32 0
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
