; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_gicv3_its_release_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_gicv3_its_release_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.gicv3_its_irqsrc = type { i32* }
%struct.its_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [68 x i8] c"gicv3_its_release_msi: Releasing a MSI interrupt with no ITS device\00", align 1
@.str.1 = private unnamed_addr constant [97 x i8] c"gicv3_its_release_msi: Releasing more interrupts than were allocated: releasing %d, allocated %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.intr_irqsrc**)* @gicv3_its_release_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gicv3_its_release_msi(i32 %0, i32 %1, i32 %2, %struct.intr_irqsrc** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.intr_irqsrc**, align 8
  %9 = alloca %struct.gicv3_its_irqsrc*, align 8
  %10 = alloca %struct.its_dev*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.intr_irqsrc** %3, %struct.intr_irqsrc*** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.its_dev* @its_device_find(i32 %12, i32 %13)
  store %struct.its_dev* %14, %struct.its_dev** %10, align 8
  %15 = load %struct.its_dev*, %struct.its_dev** %10, align 8
  %16 = icmp ne %struct.its_dev* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.its_dev*, %struct.its_dev** %10, align 8
  %20 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sge i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.its_dev*, %struct.its_dev** %10, align 8
  %28 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @KASSERT(i32 %25, i8* %32)
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %47, %4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %8, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.intr_irqsrc*, %struct.intr_irqsrc** %39, i64 %41
  %43 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %42, align 8
  %44 = bitcast %struct.intr_irqsrc* %43 to %struct.gicv3_its_irqsrc*
  store %struct.gicv3_its_irqsrc* %44, %struct.gicv3_its_irqsrc** %9, align 8
  %45 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %9, align 8
  %46 = getelementptr inbounds %struct.gicv3_its_irqsrc, %struct.gicv3_its_irqsrc* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %34

50:                                               ; preds = %34
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.its_dev*, %struct.its_dev** %10, align 8
  %53 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, %51
  store i32 %56, i32* %54, align 4
  %57 = load %struct.its_dev*, %struct.its_dev** %10, align 8
  %58 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.its_dev*, %struct.its_dev** %10, align 8
  %65 = call i32 @its_device_release(i32 %63, %struct.its_dev* %64)
  br label %66

66:                                               ; preds = %62, %50
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
