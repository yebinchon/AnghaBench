; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_pci_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_linux_pci_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_pm_ops = type { i32 (i32*)*, i32 (i32*)* }
%struct.pm_message = type { i32 }
%struct.pci_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.pci_dev*, i32)*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dev_pm_ops* }

@curthread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @linux_pci_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_pci_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dev_pm_ops*, align 8
  %4 = alloca %struct.pm_message, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = bitcast %struct.pm_message* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @curthread, align 4
  %9 = call i32 @linux_set_current(i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.pci_dev* @device_get_softc(i32 %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %5, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %16, align 8
  store %struct.dev_pm_ops* %17, %struct.dev_pm_ops** %3, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.pci_dev*, i32)* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %1
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*, i32)** %28, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = getelementptr inbounds %struct.pm_message, %struct.pm_message* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 %29(%struct.pci_dev* %30, i32 %32)
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %68

35:                                               ; preds = %1
  %36 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %3, align 8
  %37 = icmp ne %struct.dev_pm_ops* %36, null
  br i1 %37, label %38, label %67

38:                                               ; preds = %35
  %39 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %3, align 8
  %40 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %39, i32 0, i32 0
  %41 = load i32 (i32*)*, i32 (i32*)** %40, align 8
  %42 = icmp ne i32 (i32*)* %41, null
  br i1 %42, label %43, label %67

43:                                               ; preds = %38
  %44 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %3, align 8
  %45 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %44, i32 0, i32 0
  %46 = load i32 (i32*)*, i32 (i32*)** %45, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = call i32 %46(i32* %48)
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %43
  %54 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %3, align 8
  %55 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %54, i32 0, i32 1
  %56 = load i32 (i32*)*, i32 (i32*)** %55, align 8
  %57 = icmp ne i32 (i32*)* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %3, align 8
  %60 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %59, i32 0, i32 1
  %61 = load i32 (i32*)*, i32 (i32*)** %60, align 8
  %62 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = call i32 %61(i32* %63)
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %58, %53, %43
  br label %67

67:                                               ; preds = %66, %38, %35
  br label %68

68:                                               ; preds = %67, %24
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @linux_set_current(i32) #2

declare dso_local %struct.pci_dev* @device_get_softc(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
