; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pruss.c_ti_pruss_irq_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pruss.c_ti_pruss_irq_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.ti_pruss_irqsc* }
%struct.ti_pruss_irqsc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.thread = type { i32 }
%struct.ctl = type { i64 }

@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*)* @ti_pruss_irq_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_pruss_irq_poll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.ctl*, align 8
  %9 = alloca %struct.ti_pruss_irqsc*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %10 = load %struct.cdev*, %struct.cdev** %5, align 8
  %11 = getelementptr inbounds %struct.cdev, %struct.cdev* %10, i32 0, i32 0
  %12 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %11, align 8
  store %struct.ti_pruss_irqsc* %12, %struct.ti_pruss_irqsc** %9, align 8
  %13 = bitcast %struct.ctl** %8 to i8**
  %14 = call i32 @devfs_get_cdevpriv(i8** %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @POLLIN, align 4
  %17 = load i32, i32* @POLLRDNORM, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %3
  %22 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %9, align 8
  %23 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ctl*, %struct.ctl** %8, align 8
  %28 = getelementptr inbounds %struct.ctl, %struct.ctl* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %21
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @POLLIN, align 4
  %34 = load i32, i32* @POLLRDNORM, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  store i32 %36, i32* %4, align 4
  br label %44

37:                                               ; preds = %21
  %38 = load %struct.thread*, %struct.thread** %7, align 8
  %39 = load %struct.ti_pruss_irqsc*, %struct.ti_pruss_irqsc** %9, align 8
  %40 = getelementptr inbounds %struct.ti_pruss_irqsc, %struct.ti_pruss_irqsc* %39, i32 0, i32 0
  %41 = call i32 @selrecord(%struct.thread* %38, i32* %40)
  br label %42

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %3
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %31
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
