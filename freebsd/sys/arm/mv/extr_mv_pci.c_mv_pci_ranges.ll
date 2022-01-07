; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pci_ranges.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pci_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_pci_range = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Processing PCI node: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"could not decode parent PCI node 'ranges'\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Post fixup dump:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mv_pci_range*, %struct.mv_pci_range*)* @mv_pci_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_pci_ranges(i32 %0, %struct.mv_pci_range* %1, %struct.mv_pci_range* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mv_pci_range*, align 8
  %7 = alloca %struct.mv_pci_range*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.mv_pci_range* %1, %struct.mv_pci_range** %6, align 8
  store %struct.mv_pci_range* %2, %struct.mv_pci_range** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.mv_pci_range*, %struct.mv_pci_range** %6, align 8
  %13 = load %struct.mv_pci_range*, %struct.mv_pci_range** %7, align 8
  %14 = call i32 @mv_pci_ranges_decode(i32 %11, %struct.mv_pci_range* %12, %struct.mv_pci_range* %13)
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %25

19:                                               ; preds = %3
  %20 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %21 = load %struct.mv_pci_range*, %struct.mv_pci_range** %6, align 8
  %22 = call i32 @mv_pci_range_dump(%struct.mv_pci_range* %21)
  %23 = load %struct.mv_pci_range*, %struct.mv_pci_range** %7, align 8
  %24 = call i32 @mv_pci_range_dump(%struct.mv_pci_range* %23)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %19, %16
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @debugf(i8*, ...) #1

declare dso_local i32 @mv_pci_ranges_decode(i32, %struct.mv_pci_range*, %struct.mv_pci_range*) #1

declare dso_local i32 @mv_pci_range_dump(%struct.mv_pci_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
