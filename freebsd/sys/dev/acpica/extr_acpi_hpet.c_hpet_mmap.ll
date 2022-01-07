; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_hpet.c_hpet_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_hpet.c_hpet_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.hpet_softc* }
%struct.hpet_softc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VM_MEMATTR_UNCACHEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i64, i64*, i32, i32*)* @hpet_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpet_mmap(%struct.cdev* %0, i64 %1, i64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.hpet_softc*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.cdev*, %struct.cdev** %7, align 8
  %14 = getelementptr inbounds %struct.cdev, %struct.cdev* %13, i32 0, i32 0
  %15 = load %struct.hpet_softc*, %struct.hpet_softc** %14, align 8
  store %struct.hpet_softc* %15, %struct.hpet_softc** %12, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.hpet_softc*, %struct.hpet_softc** %12, align 8
  %18 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @rman_get_size(i32 %19)
  %21 = icmp sge i64 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %6, align 4
  br label %46

24:                                               ; preds = %5
  %25 = load %struct.hpet_softc*, %struct.hpet_softc** %12, align 8
  %26 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @PROT_WRITE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @EPERM, align 4
  store i32 %35, i32* %6, align 4
  br label %46

36:                                               ; preds = %29, %24
  %37 = load %struct.hpet_softc*, %struct.hpet_softc** %12, align 8
  %38 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @rman_get_start(i32 %39)
  %41 = load i64, i64* %8, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i64*, i64** %9, align 8
  store i64 %42, i64* %43, align 8
  %44 = load i32, i32* @VM_MEMATTR_UNCACHEABLE, align 4
  %45 = load i32*, i32** %11, align 8
  store i32 %44, i32* %45, align 4
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %36, %34, %22
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i64 @rman_get_size(i32) #1

declare dso_local i64 @rman_get_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
