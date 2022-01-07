; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_fman_port_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_fman_port_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_port = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QMI_PORT_CFG_EN = common dso_local global i32 0, align 4
@BMI_PORT_CFG_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_port_enable(%struct.fman_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fman_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fman_port* %0, %struct.fman_port** %3, align 8
  %7 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %8 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %31 [
    i32 131, label %10
    i32 130, label %10
    i32 129, label %17
    i32 128, label %17
    i32 132, label %24
    i32 133, label %24
  ]

10:                                               ; preds = %1, %1
  %11 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %12 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %11, i32 0, i32 2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32* %15, i32** %4, align 8
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* %6, align 4
  br label %34

17:                                               ; preds = %1, %1
  %18 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %19 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %18, i32 0, i32 2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32* %22, i32** %4, align 8
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %6, align 4
  br label %34

24:                                               ; preds = %1, %1
  %25 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %26 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %25, i32 0, i32 2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32* %29, i32** %4, align 8
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %6, align 4
  br label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %59

34:                                               ; preds = %24, %17, %10
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %34
  %38 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %39 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %38, i32 0, i32 1
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = call i32 @ioread32be(i32* %41)
  %43 = load i32, i32* @QMI_PORT_CFG_EN, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %47 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %46, i32 0, i32 1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = call i32 @iowrite32be(i32 %45, i32* %49)
  br label %51

51:                                               ; preds = %37, %34
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @ioread32be(i32* %52)
  %54 = load i32, i32* @BMI_PORT_CFG_EN, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @iowrite32be(i32 %56, i32* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %51, %31
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
