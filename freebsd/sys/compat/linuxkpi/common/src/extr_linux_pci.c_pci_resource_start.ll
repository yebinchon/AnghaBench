; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_pci_resource_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_pci.c_pci_resource_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_3__, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.resource_list_entry = type { i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"translate of %#jx failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pci_resource_start(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource_list_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.resource_list_entry* @linux_pci_get_bar(%struct.pci_dev* %9, i32 %10)
  store %struct.resource_list_entry* %11, %struct.resource_list_entry** %6, align 8
  %12 = icmp eq %struct.resource_list_entry* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %59

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PCI_SLOT(i32 %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PCI_FUNC(i32 %31)
  %33 = call i32* @pci_find_dbsf(i32 %19, i32 %24, i32 %28, i32 %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @MPASS(i32 %36)
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.resource_list_entry*, %struct.resource_list_entry** %6, align 8
  %40 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.resource_list_entry*, %struct.resource_list_entry** %6, align 8
  %43 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @BUS_TRANSLATE_RESOURCE(i32* %38, i32 %41, i64 %44, i64* %7)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %14
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.resource_list_entry*, %struct.resource_list_entry** %6, align 8
  %53 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i64 0, i64* %3, align 8
  br label %59

57:                                               ; preds = %14
  %58 = load i64, i64* %7, align 8
  store i64 %58, i64* %3, align 8
  br label %59

59:                                               ; preds = %57, %47, %13
  %60 = load i64, i64* %3, align 8
  ret i64 %60
}

declare dso_local %struct.resource_list_entry* @linux_pci_get_bar(%struct.pci_dev*, i32) #1

declare dso_local i32* @pci_find_dbsf(i32, i32, i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @BUS_TRANSLATE_RESOURCE(i32*, i32, i64, i64*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
