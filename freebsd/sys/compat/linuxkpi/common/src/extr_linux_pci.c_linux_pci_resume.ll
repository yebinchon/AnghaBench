; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_pci_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_pci_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_pm_ops = type { i32 (i32*)*, i32 (i32*)* }
%struct.pci_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.pci_dev*)*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dev_pm_ops* }

@curthread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @linux_pci_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_pci_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dev_pm_ops*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @curthread, align 4
  %7 = call i32 @linux_set_current(i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.pci_dev* @device_get_softc(i32 %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %14, align 8
  store %struct.dev_pm_ops* %15, %struct.dev_pm_ops** %3, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)** %19, align 8
  %21 = icmp ne i32 (%struct.pci_dev*)* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)** %26, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i32 %27(%struct.pci_dev* %28)
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %70

31:                                               ; preds = %1
  %32 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %3, align 8
  %33 = icmp ne %struct.dev_pm_ops* %32, null
  br i1 %33, label %34, label %69

34:                                               ; preds = %31
  %35 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %3, align 8
  %36 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %35, i32 0, i32 0
  %37 = load i32 (i32*)*, i32 (i32*)** %36, align 8
  %38 = icmp ne i32 (i32*)* %37, null
  br i1 %38, label %39, label %69

39:                                               ; preds = %34
  %40 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %3, align 8
  %41 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %40, i32 0, i32 1
  %42 = load i32 (i32*)*, i32 (i32*)** %41, align 8
  %43 = icmp ne i32 (i32*)* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %3, align 8
  %46 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %45, i32 0, i32 1
  %47 = load i32 (i32*)*, i32 (i32*)** %46, align 8
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = call i32 %47(i32* %49)
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %44, %39
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %3, align 8
  %57 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %56, i32 0, i32 0
  %58 = load i32 (i32*)*, i32 (i32*)** %57, align 8
  %59 = icmp ne i32 (i32*)* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %3, align 8
  %62 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %61, i32 0, i32 0
  %63 = load i32 (i32*)*, i32 (i32*)** %62, align 8
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = call i32 %63(i32* %65)
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %60, %55, %52
  br label %69

69:                                               ; preds = %68, %34, %31
  br label %70

70:                                               ; preds = %69, %22
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @linux_set_current(i32) #1

declare dso_local %struct.pci_dev* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
