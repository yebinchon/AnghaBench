; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efipart.c_efipart_floppy.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efipart.c_efipart_floppy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@ACPI_DEVICE_PATH = common dso_local global i64 0, align 8
@ACPI_DP = common dso_local global i64 0, align 8
@PNP0604 = common dso_local global i32 0, align 4
@PNP0700 = common dso_local global i32 0, align 4
@PNP0701 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (i32*)* @efipart_floppy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @efipart_floppy(i32* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i64 @DevicePathType(i32* %5)
  %7 = load i64, i64* @ACPI_DEVICE_PATH, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %40

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @DevicePathSubType(i32* %10)
  %12 = load i64, i64* @ACPI_DP, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %9
  %15 = load i32*, i32** %3, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %4, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @PNP0604, align 4
  %21 = call i64 @EISA_PNP_ID(i32 %20)
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %37, label %23

23:                                               ; preds = %14
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @PNP0700, align 4
  %28 = call i64 @EISA_PNP_ID(i32 %27)
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @PNP0701, align 4
  %35 = call i64 @EISA_PNP_ID(i32 %34)
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30, %23, %14
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %2, align 8
  br label %41

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %9, %1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %2, align 8
  br label %41

41:                                               ; preds = %40, %37
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  ret %struct.TYPE_3__* %42
}

declare dso_local i64 @DevicePathType(i32*) #1

declare dso_local i64 @DevicePathSubType(i32*) #1

declare dso_local i64 @EISA_PNP_ID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
