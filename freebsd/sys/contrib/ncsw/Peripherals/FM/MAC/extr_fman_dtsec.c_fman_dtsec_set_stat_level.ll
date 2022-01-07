; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec.c_fman_dtsec_set_stat_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec.c_fman_dtsec_set_stat_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_regs = type { i32, i32, i32, i32 }

@DTSEC_ECNTRL_STEN = common dso_local global i32 0, align 4
@DTSEC_IMASK_MSROEN = common dso_local global i32 0, align 4
@CAM1_ERRORS_ONLY = common dso_local global i32 0, align 4
@CAM2_ERRORS_ONLY = common dso_local global i32 0, align 4
@CAM1_MIB_GRP_1 = common dso_local global i32 0, align 4
@CAM2_MIB_GRP_1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_dtsec_set_stat_level(%struct.dtsec_regs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dtsec_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.dtsec_regs* %0, %struct.dtsec_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %107 [
    i32 129, label %7
    i32 128, label %32
    i32 130, label %57
    i32 131, label %84
  ]

7:                                                ; preds = %2
  %8 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %9 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %8, i32 0, i32 3
  %10 = call i32 @iowrite32be(i32 -1, i32* %9)
  %11 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %12 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %11, i32 0, i32 2
  %13 = call i32 @iowrite32be(i32 -1, i32* %12)
  %14 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %15 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %14, i32 0, i32 1
  %16 = call i32 @ioread32be(i32* %15)
  %17 = load i32, i32* @DTSEC_ECNTRL_STEN, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %21 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %20, i32 0, i32 1
  %22 = call i32 @iowrite32be(i32 %19, i32* %21)
  %23 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %24 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %23, i32 0, i32 0
  %25 = call i32 @ioread32be(i32* %24)
  %26 = load i32, i32* @DTSEC_IMASK_MSROEN, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %30 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %29, i32 0, i32 0
  %31 = call i32 @iowrite32be(i32 %28, i32* %30)
  br label %110

32:                                               ; preds = %2
  %33 = load i32, i32* @CAM1_ERRORS_ONLY, align 4
  %34 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %35 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %34, i32 0, i32 3
  %36 = call i32 @iowrite32be(i32 %33, i32* %35)
  %37 = load i32, i32* @CAM2_ERRORS_ONLY, align 4
  %38 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %39 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %38, i32 0, i32 2
  %40 = call i32 @iowrite32be(i32 %37, i32* %39)
  %41 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %42 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %41, i32 0, i32 1
  %43 = call i32 @ioread32be(i32* %42)
  %44 = load i32, i32* @DTSEC_ECNTRL_STEN, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %47 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %46, i32 0, i32 1
  %48 = call i32 @iowrite32be(i32 %45, i32* %47)
  %49 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %50 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %49, i32 0, i32 0
  %51 = call i32 @ioread32be(i32* %50)
  %52 = load i32, i32* @DTSEC_IMASK_MSROEN, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %55 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %54, i32 0, i32 0
  %56 = call i32 @iowrite32be(i32 %53, i32* %55)
  br label %110

57:                                               ; preds = %2
  %58 = load i32, i32* @CAM1_MIB_GRP_1, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %61 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %60, i32 0, i32 3
  %62 = call i32 @iowrite32be(i32 %59, i32* %61)
  %63 = load i32, i32* @CAM2_MIB_GRP_1, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %66 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %65, i32 0, i32 2
  %67 = call i32 @iowrite32be(i32 %64, i32* %66)
  %68 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %69 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %68, i32 0, i32 1
  %70 = call i32 @ioread32be(i32* %69)
  %71 = load i32, i32* @DTSEC_ECNTRL_STEN, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %74 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %73, i32 0, i32 1
  %75 = call i32 @iowrite32be(i32 %72, i32* %74)
  %76 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %77 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %76, i32 0, i32 0
  %78 = call i32 @ioread32be(i32* %77)
  %79 = load i32, i32* @DTSEC_IMASK_MSROEN, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %82 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %81, i32 0, i32 0
  %83 = call i32 @iowrite32be(i32 %80, i32* %82)
  br label %110

84:                                               ; preds = %2
  %85 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %86 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %85, i32 0, i32 3
  %87 = call i32 @iowrite32be(i32 0, i32* %86)
  %88 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %89 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %88, i32 0, i32 2
  %90 = call i32 @iowrite32be(i32 0, i32* %89)
  %91 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %92 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %91, i32 0, i32 1
  %93 = call i32 @ioread32be(i32* %92)
  %94 = load i32, i32* @DTSEC_ECNTRL_STEN, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %97 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %96, i32 0, i32 1
  %98 = call i32 @iowrite32be(i32 %95, i32* %97)
  %99 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %100 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %99, i32 0, i32 0
  %101 = call i32 @ioread32be(i32* %100)
  %102 = load i32, i32* @DTSEC_IMASK_MSROEN, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.dtsec_regs*, %struct.dtsec_regs** %4, align 8
  %105 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %104, i32 0, i32 0
  %106 = call i32 @iowrite32be(i32 %103, i32* %105)
  br label %110

107:                                              ; preds = %2
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %111

110:                                              ; preds = %84, %57, %32, %7
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %107
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @ioread32be(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
