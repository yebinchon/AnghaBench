; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_gicv3_its_release_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_gicv3_its_release_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.gicv3_its_irqsrc = type { i32* }
%struct.its_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [71 x i8] c"gicv3_its_release_msix: Releasing a MSI-X interrupt with no ITS device\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"gicv3_its_release_msix: Releasing more interrupts than were allocated: allocated %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.intr_irqsrc*)* @gicv3_its_release_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gicv3_its_release_msix(i32 %0, i32 %1, %struct.intr_irqsrc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.intr_irqsrc*, align 8
  %7 = alloca %struct.gicv3_its_irqsrc*, align 8
  %8 = alloca %struct.its_dev*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.intr_irqsrc* %2, %struct.intr_irqsrc** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.its_dev* @its_device_find(i32 %9, i32 %10)
  store %struct.its_dev* %11, %struct.its_dev** %8, align 8
  %12 = load %struct.its_dev*, %struct.its_dev** %8, align 8
  %13 = icmp ne %struct.its_dev* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.its_dev*, %struct.its_dev** %8, align 8
  %17 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load %struct.its_dev*, %struct.its_dev** %8, align 8
  %23 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @KASSERT(i32 %21, i8* %26)
  %28 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %6, align 8
  %29 = bitcast %struct.intr_irqsrc* %28 to %struct.gicv3_its_irqsrc*
  store %struct.gicv3_its_irqsrc* %29, %struct.gicv3_its_irqsrc** %7, align 8
  %30 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %7, align 8
  %31 = getelementptr inbounds %struct.gicv3_its_irqsrc, %struct.gicv3_its_irqsrc* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  %32 = load %struct.its_dev*, %struct.its_dev** %8, align 8
  %33 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  %37 = load %struct.its_dev*, %struct.its_dev** %8, align 8
  %38 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %3
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.its_dev*, %struct.its_dev** %8, align 8
  %45 = call i32 @its_device_release(i32 %43, %struct.its_dev* %44)
  br label %46

46:                                               ; preds = %42, %3
  ret i32 0
}

declare dso_local %struct.its_dev* @its_device_find(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @its_device_release(i32, %struct.its_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
