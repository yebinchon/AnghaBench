; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_nexus.c_nexus_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_nexus.c_nexus_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@RF_SHAREABLE = common dso_local global i32 0, align 4
@INTR_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.resource*, i32, i32*, i32*, i8*, i8**)* @nexus_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nexus_setup_intr(i32 %0, i32 %1, %struct.resource* %2, i32 %3, i32* %4, i32* %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store %struct.resource* %2, %struct.resource** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8** %7, i8*** %16, align 8
  %18 = load %struct.resource*, %struct.resource** %11, align 8
  %19 = call i32 @rman_get_flags(%struct.resource* %18)
  %20 = load i32, i32* @RF_SHAREABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %8
  %24 = load i32, i32* @INTR_EXCL, align 4
  %25 = load i32, i32* %12, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %23, %8
  %28 = load %struct.resource*, %struct.resource** %11, align 8
  %29 = call i32 @rman_get_start(%struct.resource* %28)
  store i32 %29, i32* %17, align 4
  br label %30

30:                                               ; preds = %47, %27
  %31 = load i32, i32* %17, align 4
  %32 = load %struct.resource*, %struct.resource** %11, align 8
  %33 = call i32 @rman_get_end(%struct.resource* %32)
  %34 = icmp sle i32 %31, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @device_get_nameunit(i32 %36)
  %38 = load i32*, i32** %13, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i8**, i8*** %16, align 8
  %44 = call i32 @arm_setup_irqhandler(i32 %37, i32* %38, i32* %39, i8* %40, i32 %41, i32 %42, i8** %43)
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @arm_unmask_irq(i32 %45)
  br label %47

47:                                               ; preds = %35
  %48 = load i32, i32* %17, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %17, align 4
  br label %30

50:                                               ; preds = %30
  ret i32 0
}

declare dso_local i32 @rman_get_flags(%struct.resource*) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @rman_get_end(%struct.resource*) #1

declare dso_local i32 @arm_setup_irqhandler(i32, i32*, i32*, i8*, i32, i32, i8**) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @arm_unmask_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
