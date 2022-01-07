; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pci_devmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pci_devmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devmap_entry = type { i8*, i32, i8* }
%struct.mv_pci_range = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv_pci_devmap(i32 %0, %struct.devmap_entry* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.devmap_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mv_pci_range, align 8
  %11 = alloca %struct.mv_pci_range, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.devmap_entry* %1, %struct.devmap_entry** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @mv_pci_ranges_decode(i32 %13, %struct.mv_pci_range* %10, %struct.mv_pci_range* %11)
  store i32 %14, i32* %12, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %12, align 4
  store i32 %17, i32* %5, align 4
  br label %59

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i8*, i8** %8, align 8
  br label %26

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.mv_pci_range, %struct.mv_pci_range* %10, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi i8* [ %22, %21 ], [ %25, %23 ]
  %28 = load %struct.devmap_entry*, %struct.devmap_entry** %7, align 8
  %29 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = getelementptr inbounds %struct.mv_pci_range, %struct.mv_pci_range* %10, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.devmap_entry*, %struct.devmap_entry** %7, align 8
  %33 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = getelementptr inbounds %struct.mv_pci_range, %struct.mv_pci_range* %10, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.devmap_entry*, %struct.devmap_entry** %7, align 8
  %37 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.devmap_entry*, %struct.devmap_entry** %7, align 8
  %39 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %38, i32 1
  store %struct.devmap_entry* %39, %struct.devmap_entry** %7, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %26
  %43 = load i8*, i8** %9, align 8
  br label %47

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct.mv_pci_range, %struct.mv_pci_range* %11, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  br label %47

47:                                               ; preds = %44, %42
  %48 = phi i8* [ %43, %42 ], [ %46, %44 ]
  %49 = load %struct.devmap_entry*, %struct.devmap_entry** %7, align 8
  %50 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = getelementptr inbounds %struct.mv_pci_range, %struct.mv_pci_range* %11, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.devmap_entry*, %struct.devmap_entry** %7, align 8
  %54 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = getelementptr inbounds %struct.mv_pci_range, %struct.mv_pci_range* %11, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.devmap_entry*, %struct.devmap_entry** %7, align 8
  %58 = getelementptr inbounds %struct.devmap_entry, %struct.devmap_entry* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %47, %16
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @mv_pci_ranges_decode(i32, %struct.mv_pci_range*, %struct.mv_pci_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
