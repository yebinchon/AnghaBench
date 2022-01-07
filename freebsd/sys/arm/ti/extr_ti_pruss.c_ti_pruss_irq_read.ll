; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pruss.c_ti_pruss_irq_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pruss.c_ti_pruss_irq_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.ti_pruss_irqsc* }
%struct.ti_pruss_irqsc = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.uio = type { i64 }
%struct.ctl = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@TI_TS_ARRAY = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"pruirq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @ti_pruss_irq_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_pruss_irq_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ti_pruss_irqsc*, align 8
  %10 = alloca %struct.ctl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 4, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.cdev*, %struct.cdev** %5, align 8
  %15 = getelementptr inbounds %struct.cdev, %struct.cdev* %14, i32 0, i32 0
  %16 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %15, align 8
  store %struct.ti_pruss_irqsc* %16, %struct.ti_pruss_irqsc** %9, align 8
  %17 = load %struct.uio*, %struct.uio** %6, align 8
  %18 = getelementptr inbounds %struct.uio, %struct.uio* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %19, 4
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %140

23:                                               ; preds = %3
  %24 = bitcast %struct.ctl** %10 to i8**
  %25 = call i32 @devfs_get_cdevpriv(i8** %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %140

30:                                               ; preds = %23
  %31 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %9, align 8
  %32 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %31, i32 0, i32 1
  %33 = call i32 @mtx_lock(i32* %32)
  %34 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %9, align 8
  %35 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ctl*, %struct.ctl** %10, align 8
  %40 = getelementptr inbounds %struct.ctl, %struct.ctl* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %38, %41
  %43 = load i64, i64* @TI_TS_ARRAY, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %30
  %46 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %9, align 8
  %47 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ctl*, %struct.ctl** %10, align 8
  %52 = getelementptr inbounds %struct.ctl, %struct.ctl* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %9, align 8
  %54 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ctl*, %struct.ctl** %10, align 8
  %59 = getelementptr inbounds %struct.ctl, %struct.ctl* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %9, align 8
  %61 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %60, i32 0, i32 1
  %62 = call i32 @mtx_unlock(i32* %61)
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %4, align 4
  br label %140

64:                                               ; preds = %30
  br label %65

65:                                               ; preds = %112, %64
  %66 = load %struct.ctl*, %struct.ctl** %10, align 8
  %67 = getelementptr inbounds %struct.ctl, %struct.ctl* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %12, align 8
  %69 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %9, align 8
  %70 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %12, align 8
  %75 = sub i64 %73, %74
  store i64 %75, i64* %13, align 8
  %76 = load i64, i64* %13, align 8
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %65
  %79 = load i64, i64* @TI_TS_ARRAY, align 8
  %80 = load i64, i64* %13, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %13, align 8
  br label %82

82:                                               ; preds = %78, %65
  %83 = load i64, i64* %13, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %111

85:                                               ; preds = %82
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @O_NONBLOCK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %9, align 8
  %92 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %91, i32 0, i32 1
  %93 = call i32 @mtx_unlock(i32* %92)
  %94 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %94, i32* %4, align 4
  br label %140

95:                                               ; preds = %85
  %96 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %9, align 8
  %97 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %9, align 8
  %98 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %97, i32 0, i32 1
  %99 = load i32, i32* @PCATCH, align 4
  %100 = load i32, i32* @PDROP, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @msleep(%struct.ti_pruss_irqsc* %96, i32* %98, i32 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %4, align 4
  br label %140

107:                                              ; preds = %95
  %108 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %9, align 8
  %109 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %108, i32 0, i32 1
  %110 = call i32 @mtx_lock(i32* %109)
  br label %111

111:                                              ; preds = %107, %82
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %13, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %65, label %115

115:                                              ; preds = %112
  %116 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %9, align 8
  %117 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %116, i32 0, i32 1
  %118 = call i32 @mtx_unlock(i32* %117)
  %119 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %9, align 8
  %120 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* %12, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load %struct.uio*, %struct.uio** %6, align 8
  %126 = call i32 @uiomove(i32* %124, i64 4, %struct.uio* %125)
  store i32 %126, i32* %11, align 4
  %127 = load i64, i64* %12, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %12, align 8
  %129 = load i64, i64* @TI_TS_ARRAY, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %115
  store i64 0, i64* %12, align 8
  br label %132

132:                                              ; preds = %131, %115
  %133 = load i64, i64* %12, align 8
  %134 = load %struct.ctl*, %struct.ctl** %10, align 8
  %135 = getelementptr inbounds %struct.ctl, %struct.ctl* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  %136 = load %struct.ctl*, %struct.ctl** %10, align 8
  %137 = getelementptr inbounds %struct.ctl, %struct.ctl* %136, i32 0, i32 0
  %138 = call i32 @atomic_add_32(i64* %137, i32 1)
  %139 = load i32, i32* %11, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %132, %105, %90, %45, %28, %21
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @msleep(%struct.ti_pruss_irqsc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @uiomove(i32*, i64, %struct.uio*) #1

declare dso_local i32 @atomic_add_32(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
