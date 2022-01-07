; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_force_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_force_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_rg = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@QMI_ERR_INTR_EN_DEQ_FROM_DEF = common dso_local global i32 0, align 4
@QMI_INTR_EN_SINGLE_ECC = common dso_local global i32 0, align 4
@QMI_ERR_INTR_EN_DOUBLE_ECC = common dso_local global i32 0, align 4
@BMI_ERR_INTR_EN_LIST_RAM_ECC = common dso_local global i32 0, align 4
@BMI_ERR_INTR_EN_STORAGE_PROFILE_ECC = common dso_local global i32 0, align 4
@BMI_ERR_INTR_EN_STATISTICS_RAM_ECC = common dso_local global i32 0, align 4
@BMI_ERR_INTR_EN_DISPATCH_RAM_ECC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_force_intr(%struct.fman_rg* %0, i32 %1) #0 {
  %3 = alloca %struct.fman_rg*, align 8
  %4 = alloca i32, align 4
  store %struct.fman_rg* %0, %struct.fman_rg** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %55 [
    i32 130, label %6
    i32 128, label %13
    i32 129, label %20
    i32 133, label %27
    i32 131, label %34
    i32 132, label %41
    i32 134, label %48
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @QMI_ERR_INTR_EN_DEQ_FROM_DEF, align 4
  %8 = load %struct.fman_rg*, %struct.fman_rg** %3, align 8
  %9 = getelementptr inbounds %struct.fman_rg, %struct.fman_rg* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @iowrite32be(i32 %7, i32* %11)
  br label %56

13:                                               ; preds = %2
  %14 = load i32, i32* @QMI_INTR_EN_SINGLE_ECC, align 4
  %15 = load %struct.fman_rg*, %struct.fman_rg** %3, align 8
  %16 = getelementptr inbounds %struct.fman_rg, %struct.fman_rg* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = call i32 @iowrite32be(i32 %14, i32* %18)
  br label %56

20:                                               ; preds = %2
  %21 = load i32, i32* @QMI_ERR_INTR_EN_DOUBLE_ECC, align 4
  %22 = load %struct.fman_rg*, %struct.fman_rg** %3, align 8
  %23 = getelementptr inbounds %struct.fman_rg, %struct.fman_rg* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @iowrite32be(i32 %21, i32* %25)
  br label %56

27:                                               ; preds = %2
  %28 = load i32, i32* @BMI_ERR_INTR_EN_LIST_RAM_ECC, align 4
  %29 = load %struct.fman_rg*, %struct.fman_rg** %3, align 8
  %30 = getelementptr inbounds %struct.fman_rg, %struct.fman_rg* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @iowrite32be(i32 %28, i32* %32)
  br label %56

34:                                               ; preds = %2
  %35 = load i32, i32* @BMI_ERR_INTR_EN_STORAGE_PROFILE_ECC, align 4
  %36 = load %struct.fman_rg*, %struct.fman_rg** %3, align 8
  %37 = getelementptr inbounds %struct.fman_rg, %struct.fman_rg* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @iowrite32be(i32 %35, i32* %39)
  br label %56

41:                                               ; preds = %2
  %42 = load i32, i32* @BMI_ERR_INTR_EN_STATISTICS_RAM_ECC, align 4
  %43 = load %struct.fman_rg*, %struct.fman_rg** %3, align 8
  %44 = getelementptr inbounds %struct.fman_rg, %struct.fman_rg* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @iowrite32be(i32 %42, i32* %46)
  br label %56

48:                                               ; preds = %2
  %49 = load i32, i32* @BMI_ERR_INTR_EN_DISPATCH_RAM_ECC, align 4
  %50 = load %struct.fman_rg*, %struct.fman_rg** %3, align 8
  %51 = getelementptr inbounds %struct.fman_rg, %struct.fman_rg* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i32 @iowrite32be(i32 %49, i32* %53)
  br label %56

55:                                               ; preds = %2
  br label %56

56:                                               ; preds = %55, %48, %41, %34, %27, %20, %13, %6
  ret void
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
